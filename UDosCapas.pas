unit UDosCapas;

interface

Uses
  ZDataSet, DBClient, Variants, SysUtils, Dialogs, Classes;

Type
  TTipoSentencia = (ccCatalog, ccSelect, ccUpdate, ccLocate);

  TParametro = Class
    Pos: Integer;
    Value: Variant;
  End;

  TDescripcion = Class
    Tabla: String;
    Descripcion: String;
  End;

  // Inicia declaraci�n para manejo de errores
  TErrores = Class
    Codigo: Integer;
    Usuario: String;
    Tecnico: String;
    MsgTipo: TMsgDlgType;
    Informar: Boolean;
  end;

  ClassException = class(Exception)
  private
    FErrorCode: Integer;
    FStatusCode: String;
    FTitle: String;
    FMsgType: TMsgDlgType;
  public
    constructor Create(const Msg: string);
    constructor CreateWithCode(const ErrorCode: Integer; const Msg: string);
    constructor CreateByCode(const ErrorCode: Integer; Valores: Array of Variant);
    constructor CreateWithStatus(const StatusCode: String; const Msg: string);
    constructor CreateClone(const E:ClassException);

    property ErrorCode: Integer read FErrorCode;
    property StatusCode: string read FStatuscode;
    property Title: String read FTitle;
    property MsgType: TMsgDlgType read FMsgType;
  end;

  InteligentException = Class(ClassException);
  InteligentWarning = Class(ClassException);
  InteligentConnection = Class(ClassException);
  // Termina declaraci�n para manejo de errores

var
  ListaErrores: TStringList;
  ListaTablas: TStringList;

  function CrearConjunto(DataSet: TZQuery; Tabla: String; Tipo: TTipoSentencia): boolean; overload;
function CrearConjunto(DataSet: TZReadOnlyQuery; Tabla: String; Tipo: TTipoSentencia): boolean; overload;

implementation

Uses
  frm_Connection;

var
  QuerySentencias: TClientDataSet;
  QueryRead: TZReadOnlyQuery;

{$REGION 'CLASSEXCEPTION'}
constructor ClassException.CreateClone(const E: ClassException);
begin
  inherited Create(E.Message);
  FErrorCode:=E.ErrorCode;
  FStatusCode:=E.Statuscode;
end;

constructor ClassException.Create(const Msg: string);
begin
  inherited Create(Msg);
  FErrorCode := -1;
end;

constructor ClassException.CreateWithCode(const ErrorCode: Integer;
  const Msg: string);
begin
  inherited Create(Msg);
  FErrorCode := ErrorCode;
end;

constructor ClassException.CreateByCode(const ErrorCode: Integer; Valores: Array of Variant);
var
  Cadena: String;
  xPos, Difer: Integer;
  Variable,
  Resultado: String;
  Inicio: Integer;
  Numero: Byte;
  Parametros: TStringList;
  Parametro: TParametro;
  Tabla: Boolean;
begin
  // Acceder a la lista de errores para encontrar su descripci�n
  xPos := ListaErrores.IndexOf(IntToStr(ErrorCode));
  if xPos >= 0 then
  begin
    FTitle := TErrores(ListaErrores.Objects[xPos]).Usuario;
    FMsgType := TErrores(ListaErrores.Objects[xPos]).MsgTipo;
    Cadena := TErrores(ListaErrores.Objects[xPos]).Tecnico;

    Parametros := TStringList.Create;
    Parametros.Clear;

    // Analizar la cadena obtenida en busqueda de par�metros
    Inicio := 0;
    for xPos := 1 to Length(Cadena) do
    begin
      if Cadena[xPos] = '<' then
      begin
        Inicio := xPos;
        Variable := '';
      end;

      if Inicio > 0 then
        Variable := Variable + Cadena[xPos];

      if (Cadena[xPos] = '>') and (Inicio > 0) then
      begin
        Variable := Copy(Variable,2,Length(Variable));
        if (Variable[1] = '%') and (Length(Variable) > 2) then
        begin
          Variable := Copy(Variable, 2, Length(Variable) - 2);

          // Dar de alta el parametro
          Parametro := TParametro.Create;
          Parametro.Pos := xPos - (Length(Variable) + 3);
          Parametro.Value := Null;

          // Verificar si existe un valor para este parametro
          Try
            Numero := StrToInt(Variable);
          Except
            Numero := 0;
          End;

          if (Numero > 0) and (Numero <= High(Valores) + 1) then
            if Copy(Valores[Numero - 1], 1, 1) = '!' then
              // Tratar de obtener la descripci�n de la tabla indicada
              if ListaTablas.IndexOf(Copy(Valores[Numero - 1], 2, Length(Valores[Numero - 1]))) >= 0 then
                Parametro.Value := TDescripcion(ListaTablas.Objects[ListaTablas.IndexOf(Copy(Valores[Numero - 1], 2, Length(Valores[Numero - 1])))]).Descripcion
              else
                Parametro.Value := '(' + Valores[Numero - 1] + ')'
            else
              Parametro.Value := Valores[Numero - 1];

          Parametros.AddObject(Variable, Parametro);  // Agregar el parametro a la lista

          // Inicializar las variables de control
          Inicio := 0;
          Variable := '';
        end;
      end;
    end;

    // Substituir las variables por sus valores correspondientes
    Inicio := 1;
    Numero := 0;
    Difer := 0;
    for xPos := 0 to Parametros.Count - 1 do
    begin
      if TParametro(Parametros.Objects[xPos]).Value <> Null then
      begin
        Resultado := TParametro(Parametros.Objects[xPos]).Value;
        Variable := Copy(Cadena, Inicio, TParametro(Parametros.Objects[xPos]).Pos + Difer);
        Variable := Variable + Resultado;
        Variable := Variable + Copy(Cadena, TParametro(Parametros.Objects[xPos]).Pos + Difer + 4 + Length(Parametros[xPos]), Length(Cadena));

        Difer := Difer + (Length(TParametro(Parametros.Objects[xPos]).Value) - (3 + Length(Parametros[xPos])));

        Cadena := Variable;
      end;
    end;
  end
  else
    Cadena := 'C�digo de error desconocido';

  inherited Create(Cadena);
  FErrorCode := ErrorCode;
end;

constructor ClassException.CreateWithStatus(const StatusCode, Msg: string);
begin
  inherited Create(Msg);
  FStatusCode := StatusCode;
end;
{$ENDREGION}

procedure CrearDatosSentencias;
var
  i: Integer;
begin
  QueryRead := TZReadOnlyQuery.Create(Nil);
  QuerySentencias := TClientDataSet.Create(Nil);

  QueryRead.Connection := Connection.ConnTrx;
  QueryRead.SQL.Text := 'select sTablaPrimaria, sTipo, lStatus, sIdentificador, sSentencia from nuc_sentencias where sTablaPrimaria = :Tabla and sTipo = :Tipo';
  QueryRead.ParamByName('Tabla').AsString := '-9';
  QueryRead.ParamByName('Tipo').AsString := '-9';

  if Connection.ConnTrx.Connected and Not Connection.ConnTrx.Ping then
    Connection.ConnTrx.Reconnect;

  // Leer la estructura de la tabla de sentencias
  try
    if QueryRead.Active then
      QueryRead.Refresh
    else
      QueryRead.Open;
    for i := 0 to QueryRead.FieldDefs.Count -1 do
      QuerySentencias.FieldDefs.Add(QueryRead.FieldDefs.Items[i].Name, QueryRead.FieldDefs.Items[i].DataType, QueryRead.FieldDefs.Items[i].Size, QueryRead.FieldDefs.Items[i].Required);
    QuerySentencias.CreateDataSet;
    QuerySentencias.Open;
  finally
    QueryRead.Close;
  end;
end;

function GetSentence(Tabla: string; Tipo: string): String;
var
  Resultado: String;
  i: Integer;
begin
  Resultado := '';

  // Localizar la sentencia en base a los parametros indicados
  Try
    Try
      if (Not Assigned(QuerySentencias)) or (Not QuerySentencias.Active) then
        CrearDatosSentencias;

      try
        QuerySentencias.Filtered := False;
        QuerySentencias.Filter := 'sTablaPrimaria = ' + QuotedStr(Tabla);
        QuerySentencias.Filtered := True;

        // Verificar si la sentencia ya se ha leido
        if Not QuerySentencias.Locate('sTipo', Tipo, []) then
        begin
          // Si no encuentra la sentencia se deber� agregar a la memoria
          QueryRead.Close;
          QueryRead.Params.ParamByName('Tabla').AsString := Tabla;
          QueryRead.Params.ParamByName('Tipo').AsString := Tipo;
          QueryRead.Open;

          // Verificar si la sentencia existe realmente
          if QueryRead.RecordCount = 0 then
          begin
            QuerySentencias.Filtered := False;

            // Si la sentencia no existe entonces se deber� crear una sentencia por default
            QuerySentencias.Append;
            QuerySentencias.FieldByName('sTablaPrimaria').AsString := Tabla;
            QuerySentencias.FieldByName('sTipo').AsString := Tipo;
            QuerySentencias.FieldByName('lStatus').AsString := 'Activo';
            QuerySentencias.FieldByName('sIdentificador').AsString := '';
            QuerySentencias.FieldByName('sSentencia').AsString := 'SELECT * FROM ' + Tabla;
            QuerySentencias.Post;
          end
          else
          begin
            // Si la sentencia existe se deber� agregar a la tabla
            QuerySentencias.Append;
            for i := 0 to QuerySentencias.FieldDefs.Count -1 do
              QuerySentencias.FieldByName(QuerySentencias.FieldDefs.Items[i].Name).AsString := QueryRead.FieldByName(QuerySentencias.FieldDefs.Items[i].Name).AsString;
            QuerySentencias.Post;
          end;
        end;

        Resultado := QuerySentencias.FieldByName('sSentencia').AsString;
      finally
        QuerySentencias.Filtered := False;
      end;
    Except
      Resultado := 'SELECT * FROM ' + Tabla
    End;
  Finally
    Result := Resultado;
  End;
end;

function CrearConjunto(DataSet: TZQuery; Tabla: String; Tipo: TTipoSentencia): Boolean;
var
  MaxNumero, i: Integer;
  LocTipo: String;
begin
  Result := False;

  // Crear el Query asignandolo a la conexi�n local del servidor
  Try
    DataSet.Connection := Connection.ConnTrx;
    if DataSet.Connection.Connected and Not DataSet.Connection.Ping then
      DataSet.Connection.Reconnect;

    case Tipo of
      ccCatalog: LocTipo := 'CATALOGO';
      ccSelect: LocTipo := 'SELECT';
      ccUpdate: LocTipo := 'UPDATE';
      ccLocate: LocTipo := 'LOCATE';
    end;

    DataSet.SQL.Text := GetSentence(Tabla, LocTipo);

    // Verificar si la sentencia es validada con el -1
    if Pos('-1', DataSet.SQL.Text) > 0 then
    begin
      // Poner todos los parametros a -1 para acceder a todo el cat�logo por default
      for i := 0 to DataSet.Params.Count - 1 do
        DataSet.Params.Items[i].Value := '-1';
    end;

    {if Tipo = stUpdate then
    begin
      DataSet.BeforePost := GlobalBeforePost;
      DataSet.AfterPost := GlobalAfterPost;
      DataSet.BeforeDelete := GlobalBeforeDelete;
      DataSet.AfterDelete := GlobalAfterDeleteCancelScroll;
      DataSet.OnPostError := GlobalPostError;
      // LocQuery.AfterScroll  := GlobalAfterInsert;
    end;
    DataSet.BeforeOpen := GlobalBeforeOpen;
    DataSet.AfterOpen := GlobalAfterOpen;}

    Result := True; // Solo si llega a este punto del proceso es que ambos objetos fueron creado satisfactoriamente
  Except
    raise; // Siendo este un error de programaci�n, es necesario informar de ello
  End;
end;

function CrearConjunto(DataSet: TZReadOnlyQuery; Tabla: String; Tipo: TTipoSentencia): Boolean;
begin
  Result := CrearConjunto(TZQuery(DataSet), Tabla, Tipo);
end;

end.