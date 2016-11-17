unit frm_bitacoradepartamental_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, UnitTBotonesPermisos,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, frm_Connection, DB, DateUtils,
  frm_barra, DBCtrls, Mask, Global, Menus, Buttons, Utilerias, ExtCtrls, Math,
  frxClass, frxDBSet, ImgList, ActnList, PanelDown, Newpanel, ZAbstractRODataset, ZDataset, ADODB,
  ZAbstractDataset, RxLookup, RXDBCtrl, rxCurrEdit, rxToolEdit, ComObj, ClipBrd, ShellApi, WordXP, OleServer,
  Editb, EditCalc, frm_EditorBitacoraDepartamental, RxMemDS, udbgrid, UnitValidaTexto,
  unitactivapop, FormAutoScaler;

type
  TfrmBitacoraDepartamental_2 = class(TForm)
    Label1: TLabel;
    tdIdFecha: TDateTimePicker;
    ds_ordenesdetrabajo: TDataSource;
    ds_tiposdemovimiento: TDataSource;
    ds_bitacora: TDataSource;
    ds_actividadesiguales: TDataSource;
    ImageGrupos: TImageList;
    Label2: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    Imprimir1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    ComentariosAdicionales: TMenuItem;
    N5: TMenuItem;
    ds_ParidasEfectivas: TDataSource;
    frmBarra1: TfrmBarra;
    Grid_Bitacora: TRxDBGrid;
    tNewGroupBox1: tNewGroupBox;
    tdAvanceGlobal: TCurrencyEdit;
    pbAvance: TProgressBar;
    mnFichaTecnica: TMenuItem;
    ActividadesIguales: TZReadOnlyQuery;
    ActividadesIgualessWbs: TStringField;
    ActividadesIgualessNumeroActividad: TStringField;
    ActividadesIgualesmDescripcion: TMemoField;
    ActividadesIgualesdCantidad: TFloatField;
    ActividadesIgualesdInstalado: TFloatField;
    ActividadesIgualesdExcedente: TFloatField;
    ActividadesIgualesdPonderado: TFloatField;
    ActividadesIgualessMedida: TStringField;
    ActividadesIgualesdRestante: TFloatField;
    Paquete: TZReadOnlyQuery;
    ordenesdetrabajo: TZReadOnlyQuery;
    TiposdeMovimiento: TZReadOnlyQuery;
    MaximoDiario: TZReadOnlyQuery;
    AvanceMaximo: TZReadOnlyQuery;
    ReporteDiario: TZReadOnlyQuery;
    QryPartidasEfectivas: TZReadOnlyQuery;
    QryBitacora: TZReadOnlyQuery;
    QryBitacorasContrato: TStringField;
    QryBitacorasNumeroOrden: TStringField;
    QryBitacoraiIdDiario: TIntegerField;
    QryBitacorasIdTurno: TStringField;
    QryBitacorasWbs: TStringField;
    QryBitacorasNumeroActividad: TStringField;
    QryBitacorasIdTipoMovimiento: TStringField;
    QryBitacoradCantidad: TFloatField;
    QryBitacoradAvance: TFloatField;
    QryBitacoramDescripcion: TMemoField;
    QryBitacoralAlcance: TStringField;
    QryBitacorasDescripcion: TStringField;
    QryBitacorasMedida: TStringField;
    QryBitacoradVentaMN: TFloatField;
    QryBitacoradVentaDLL: TFloatField;
    QryBitacoradTotalMN: TCurrencyField;
    QryExistePartida: TZReadOnlyQuery;
    ActividadesIgualessWbsAnterior: TStringField;
    rDiario: TfrxReport;
    mnNotas: TMenuItem;
    mnNotaAnt: TMenuItem;
    mnEliminaNota: TMenuItem;
    mnInsertaNota: TMenuItem;
    mnAlbum: TMenuItem;
    QryBitacorasIsometrico: TStringField;
    QryBitacorasTurno: TStringField;
    TiemposExtras: TMenuItem;
    dsTiemposExtras: TDataSource;
    QryBitacorasWbsAnterior: TStringField;
    QryBitacorasHoraInicio: TStringField;
    QryBitacorasHoraFinal: TStringField;
    QryBitacoradAvanceAnterior: TFloatField;
    N7: TMenuItem;
    Mayus: TMenuItem;
    Minus: TMenuItem;
    tNewGroupBox2: tNewGroupBox;
    imgNotas: TImage;
    Label3: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    LabelCantidad: TLabel;
    lblComentarios: TLabel;
    lblTipoConcepto: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel_Grupos: TListView;
    tsIdTipoMovimiento: TDBLookupComboBox;
    tdPonderado: TCurrencyEdit;
    tsNumeroActividad: TRxDBLookupCombo;
    tdCantidad: TRxCalcEdit;
    pdPaquete: TPanelDown;
    grid_iguales: TRxDBGrid;
    tsHoraInicio: TMaskEdit;
    tsHoraFinal: TMaskEdit;
    RevisarOrtografia2: TMenuItem;
    lblNotas: TLabel;
    QryBitacoramNotas: TMemoField;
    ActividadesIgualessTipoAnexo: TStringField;
    mObra: TMemo;

    dAvanceReal: TRxCalcEdit;
    SpeedButton1: TSpeedButton;
    CmdCantidad: TButton;
    RxAvances: TRxMemoryData;
    RxAvancesdCantidad: TFloatField;
    RxAvancessMedida: TStringField;
    RxAvancesdCantidadActual: TFloatField;
    RxAvancesdCantidadAnterior: TFloatField;
    RxAvancesdCantidadAcumulada: TFloatField;
    tmDescripcion: TMemo;
    tmNotas: TMemo;
    chkImprime: TCheckBox;
    QryBitacoralImprime: TStringField;
    chkCancelada: TCheckBox;
    QryBitacoralCancelada: TStringField;
    ActividadesIgualessAnexo: TStringField;
    QryBitacorasAnexo: TStringField;
    FormAutoScaler1: TFormAutoScaler;
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdTipoMovimientoKeyPress(Sender: TObject; var Key: Char);
    procedure tdAvanceKeyPress(Sender: TObject; var Key: Char);
    function lExisteActividadAnexo(sActividad: string): Boolean;
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure grid_bitacoraEnter(Sender: TObject);
    procedure Panel_GruposClick(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tsIdTipoMovimientoEnter(Sender: TObject);
    procedure tsIdTipoMovimientoExit(Sender: TObject);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure tmDescripcionEnter(Sender: TObject);
    procedure tmDescripcionExit(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure grid_igualesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grid_BitacoraTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);

    procedure TiposdeMovimientoAfterScroll(DataSet: TDataSet);
    procedure ComentariosAdicionalesClick(Sender: TObject);
    procedure tsNumeroActividadChange(Sender: TObject);
    procedure imgNotasDblClick(Sender: TObject);
    procedure ActividadesIgualesAfterScroll(DataSet: TDataSet);
    procedure mnFichaTecnicaClick(Sender: TObject);
    procedure QryBitacoraCalcFields(DataSet: TDataSet);
    function fnValidaPartidaAnexo(sParamNumeroActividad: string): boolean;
    function fnValidaPartidaOrden(sParamWbs, sParamNumeroActividad: string): boolean;
    function fnActualizaAcumuladosOrden(sParamOpcion, sParamWbs, sParamNumeroActividad: string;
      dParamCantidadInstalar, dParamInstalado, dParamExcedente, dParamCantidad: double): Boolean;
    function fnActualizaAcumuladosContrato(sParamOpcion, sParamNumeroActividad: string;
      dParamCantidadInstalar, dParamInstalado, dParamExcedente, dParamCantidad: double): Boolean;
    procedure QryBitacoraAfterScroll(DataSet: TDataSet);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);

    procedure mnEliminaNotaClick(Sender: TObject);
    procedure mnInsertaNotaClick(Sender: TObject);
    procedure mnAlbumClick(Sender: TObject);

    procedure rbMaterialesc13Exit(Sender: TObject);
    procedure mnNotaAntClick(Sender: TObject);
    procedure tsHoraInicioEnter(Sender: TObject);
    procedure tsHoraInicioExit(Sender: TObject);
    procedure tsHoraInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tsHoraFinalEnter(Sender: TObject);
    procedure tsHoraFinalExit(Sender: TObject);
    procedure tsHoraFinalKeyPress(Sender: TObject; var Key: Char);
    procedure Label4DblClick(Sender: TObject);
    procedure btnMayusClick(Sender: TObject);
    procedure MayusClick(Sender: TObject);
    procedure MinusClick(Sender: TObject);
    procedure RevisarOrtografia2Click(Sender: TObject);
    procedure tmNotasEnter(Sender: TObject);
    procedure tmNotasExit(Sender: TObject);
    procedure tmDescripcionDblClick(Sender: TObject);
    procedure CopiaMemo(Sender:TObject ) ;
    procedure CopiaMemo2(Sender:TObject ) ;
    procedure tmNotasDblClick(Sender: TObject);
    procedure tsNumeroActividadMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_BitacoraGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure LabelCantidadClick(Sender: TObject);
    procedure ActualizaIdDiario(dParamContrato : string; dParamFecha : tDate; dParamIdDiario, dParamIdDiarioOld : Integer);
    procedure CmdCantidadClick(Sender: TObject);
    procedure Grid_BitacoraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_BitacoraMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_BitacoraTitleClick(Column: TColumn);
    procedure grid_igualesTitleClick(Column: TColumn);
    procedure grid_igualesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grid_igualesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Copy1Click(Sender: TObject);
    procedure grid_igualesDblClick(Sender: TObject);
    procedure grid_igualesKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
    sAnexosBarco:string;

    function CurrText  : TTextAttributes;
    function CurrText2 : TTextAttributes;
  public
    { Public declarations }
  end;

var
  frmBitacoraDepartamental_2: TfrmBitacoraDepartamental_2;
  sDescripcion    : string;
  sWbsFormulario  : string;
  sSegur          : string;
  SavePlace       : TBookmark;
  dExcedenteOrden : Double;
  dExcedenteAnexo : Double;
  dInstaladoOrden,
  dInstaladoOrden1: Double;
  dInstaladoAnexo : Double;
  dCantidadAnexo  : Double;
  dCantidadOrden  : Double;
  dError          : Currency;
  txtMensaje      : string;
  ListaPEQ        : array[1..5] of integer;
  i               : integer;
  dCantidadOld    : Double;
  iIdDiarioOld    : Integer;
  lRespuesta      : Boolean;
  UtGrid:TicDbGrid;
  Utgrid2:TicDbGrid;
  {Variables para Kardex del sistema..}
  lKardex:boolean;
  sWbsKardex, opcKardex, fechaKardex: string;
  myYear, myMonth, myDay : Word;
  BotonPermiso: TBotonesPermisos;
  posSelecc,NumEnters:Integer;
  tmpDecimal:Integer;
  Abierto:Boolean;

  {------------------------------------}

implementation

uses frm_comentariosxanexo, UnitExcepciones;

{$R *.dfm}

function TfrmBitacoraDepartamental_2.CurrText: TTextAttributes;
begin

end;

function TfrmBitacoraDepartamental_2.CurrText2: TTextAttributes;
begin

end;

function TfrmBitacoraDepartamental_2.fnActualizaAcumuladosContrato(sParamOpcion, sParamNumeroActividad: string;
  dParamCantidadInstalar, dParamInstalado,
  dParamExcedente, dParamCantidad: double): Boolean;
begin
  try
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE actividadesxanexo SET dInstalado = :Instalado, dExcedente = :Excedente ' +
      'where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
    Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
    Connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
    Connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      Connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio
    else
      Connection.zCommand.Params.ParamByName('Convenio').Value := convenio_reporte;
    Connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
    Connection.zCommand.Params.ParamByName('Actividad').value := sParamNumeroActividad;
    if sParamOpcion = 'Eliminar' then
      if dParamExcedente > 0 then
        if (dParamExcedente > dParamCantidad) then
        begin
          Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
          Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Excedente').value := dParamExcedente - dParamCantidad
        end
        else
        begin
          Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar - (dParamCantidad - dParamExcedente);
          Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Excedente').value := 0;
        end
      else
      begin
        Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Instalado').value := dParamInstalado - dParamCantidad;
        Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Excedente').value := 0;
      end
    else if (dExcedenteAnexo > 0) then
    begin
      Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
      Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
      Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
      Connection.zCommand.Params.ParamByName('Excedente').value := dParamExcedente;
    end
    else
    begin
      Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
      Connection.zCommand.Params.ParamByName('Instalado').value := dParamInstalado + dParamCantidad;
      Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
      Connection.zCommand.Params.ParamByName('Excedente').value := 0;
    end;
    connection.zCommand.ExecSQL;
    fnActualizaAcumuladosContrato := True
  except
    fnActualizaAcumuladosContrato := False
  end
end;

function TfrmBitacoraDepartamental_2.fnActualizaAcumuladosOrden(sParamOpcion, sParamWbs, sParamNumeroActividad: string;
  dParamCantidadInstalar, dParamInstalado,
  dParamExcedente, dParamCantidad: double): Boolean;
begin
  try
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE actividadesxorden SET dInstalado = :Instalado, dExcedente = :Excedente ' +
      'where sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :Orden And sWbs = :wbs And sNumeroActividad = :Actividad And sTipoActividad = "Actividad"');
    connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
    connection.zCommand.Params.ParamByName('contrato').value := global_contrato;
    connection.zCommand.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio
    else
      connection.zCommand.Params.ParamByName('Convenio').Value := convenio_reporte;
    connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
    connection.zCommand.Params.ParamByName('Orden').value := tsNumeroOrden.KeyValue;
    connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
    connection.zCommand.Params.ParamByName('wbs').value := sParamWbs;
    Connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
    connection.zCommand.Params.ParamByName('Actividad').value := sParamNumeroActividad;
    if sParamOpcion = 'Eliminar' then
      if dParamExcedente > 0 then
        if (dParamExcedente > dParamCantidad) then
        begin
          Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
          Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Excedente').value := dParamExcedente - dParamCantidad
        end
        else
        begin
          Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar - (dParamCantidad - dParamExcedente);
          Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
          Connection.zCommand.Params.ParamByName('Excedente').value := 0;
        end
      else
      begin
        Connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Instalado').value := dParamInstalado - dParamCantidad;
        Connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
        Connection.zCommand.Params.ParamByName('Excedente').value := 0;
      end
    else if (dParamExcedente > 0) then
    begin
      connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Instalado').value := dParamCantidadInstalar;
      connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Excedente').value := dParamExcedente;
    end
    else
    begin
      connection.zCommand.Params.ParamByName('Instalado').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Instalado').value := dParamInstalado + dParamCantidad;
      connection.zCommand.Params.ParamByName('Excedente').DataType := ftFloat;
      connection.zCommand.Params.ParamByName('Excedente').value := 0;
    end;
    connection.zCommand.ExecSQL;
    fnActualizaAcumuladosOrden := True
  except
    fnActualizaAcumuladosOrden := False
  end;

end;

function TfrmBitacoraDepartamental_2.fnValidaPartidaAnexo(sParamNumeroActividad: string): boolean;
begin
  dExcedenteAnexo := 0;
  dInstaladoAnexo := 0;
  dCantidadAnexo := 0;

  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Select (dInstalado + dExcedente) as dInstalado, dCantidadAnexo from actividadesxanexo where ' +
    'sContrato = :contrato And sIdConvenio = :Convenio ' +
    'And sNumeroActividad = :Actividad And sTipoActividad = "Actividad" ');
  Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
  Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
  if convenio_reporte = '' then
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
  else
    Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
  Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('actividad').Value := sParamNumeroActividad;
  connection.qryBusca.Open;
  if (Connection.qryBusca.RecordCount > 0) then
  begin
      If Connection.qryBusca.FieldByName('dInstalado').IsNull Then
         dInstaladoAnexo := 0
      Else
         dInstaladoAnexo  := Connection.qryBusca.FieldValues['dInstalado'] ;

      If Connection.qryBusca.FieldByName('dCantidadAnexo').IsNull Then
         dCantidadAnexo := 0
      Else
         dCantidadAnexo := Connection.qryBusca.FieldValues['dCantidadAnexo'];

      dError := (dInstaladoAnexo + tdCantidad.Value);
      dError := dError - dCantidadAnexo;
      if (dError > 0) then
      begin
        txtMensaje := 'No se puede asignar mas cantidad de la cantidad estipulada en el contrato vigente, ' +
          'Cantidad a instalar segun contrato = ' + floattostr(dCantidadAnexo) +
          ', Cantidad instalada a la fecha = ' + floattostr(dInstaladoAnexo) +
          ', si continua se creara un volumen de adicional a lo estipulado en el contrato vigente. Desea Continuar?';
        if MessageDlg(txtMensaje, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          dExcedenteAnexo := (dInstaladoAnexo + tdCantidad.Value) - dCantidadAnexo;
          fnValidaPartidaAnexo := True;
        end
        else
          fnValidaPartidaAnexo := False;
      end
      else
        fnValidaPartidaAnexo := True
  end
  else
      fnValidaPartidaAnexo := False;
end;

function TfrmBitacoraDepartamental_2.fnValidaPartidaOrden(sParamWbs, sParamNumeroActividad: string): boolean;
begin
  dExcedenteOrden := 0;
  dInstaladoOrden := 0;
  dCantidadOrden := 0;

  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Select (dInstalado + dExcedente) as dInstalado , dCantidad, sTipoAnexo from actividadesxorden where ' +
                              'sContrato = :contrato And sIdConvenio = :Convenio And sNumeroOrden = :orden And sWbs = :Wbs And ' +
                              'sNumeroActividad = :Actividad And sTipoActividad = :Tipo');
  Connection.qryBusca.Params.ParamByName('contrato').DataType  := ftString;
  Connection.qryBusca.Params.ParamByName('contrato').Value     := global_contrato;
  Connection.qryBusca.Params.ParamByName('convenio').DataType  := ftString;
  if convenio_reporte = '' then
    Connection.qryBusca.Params.ParamByName('Convenio').Value   := global_convenio
  else
    Connection.qryBusca.Params.ParamByName('Convenio').Value   := convenio_reporte;
  Connection.qryBusca.Params.ParamByName('orden').DataType     := ftString;
  Connection.qryBusca.Params.ParamByName('orden').Value        := tsNumeroOrden.KeyValue;
  Connection.qryBusca.Params.ParamByName('Wbs').DataType       := ftString;
  Connection.qryBusca.Params.ParamByName('Wbs').Value          := sParamWbs;
  Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('actividad').Value    := sParamNumeroActividad;
  Connection.qryBusca.Params.ParamByName('Tipo').DataType      := ftString;
  Connection.qryBusca.Params.ParamByName('Tipo').Value         := 'Actividad';
  connection.qryBusca.Open;

  if Connection.qryBusca.RecordCount > 0 then
  begin
    If connection.qryBusca.FieldByName('dInstalado').IsNull Then
       dInstaladoOrden := 0
    Else
       if connection.qryBusca.FieldValues['dInstalado'] < 0  then
          dInstaladoOrden := 0
       else
           dInstaladoOrden := connection.qryBusca.FieldValues['dInstalado'] ;

    If connection.qryBusca.FieldByName('dCantidad').IsNull then
       dCantidadOrden := 0
    Else
       dCantidadOrden := connection.qryBusca.FieldValues['dCantidad'];

    dError := (dInstaladoOrden + tdCantidad.Value);
    dError := dError - dCantidadOrden;
    if (dError > 0) then
    begin
      txtMensaje := 'No se puede instalar mas de lo propuesto en la concepto en el paquete del la orden de trabajo seleccionada. ' +
        'cantidad a instalar para la el concepto en el paquete y orden de trabajo Seleccionada = ' + floattostr(dCantidadOrden) +
        ', Cantidad instalada a la fecha = ' + floattostr(dInstaladoOrden) +
        ', Si continua disminuira lo disponible en otros paquetes y ordenes de trabajo, desea continuar?';
      if MessageDlg(txtMensaje, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
          dExcedenteOrden := (dInstaladoOrden + tdCantidad.Value) - dCantidadOrden;
          fnValidaPartidaOrden := True
      end
      else
      begin
          fnValidaPartidaOrden := False;
          lRespuesta := False;
      end;
    end
    else
        fnValidaPartidaOrden := True
  end
  else
    fnValidaPartidaOrden := False
end;



procedure TfrmBitacoraDepartamental_2.FormShow(Sender: TObject);
var
  ListItem  : TListItem;
  qryGrupos : TZReadOnlyQuery;
  qryPuntos : TZReadOnlyQuery;
  BuscaPEQ  : TZReadOnlyQuery;
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario', PopupPrincipal);
  UtGrid:=TicdbGrid.create(grid_bitacora);
  UtGrid2:=TicdbGrid.create(grid_iguales);
  chkcancelada.Checked:=false;
  OpcButton := '';
  sWbsFormulario := '';
  chkImprime.Checked := True;

  Abierto:=False;
  BuscaPEQ  := TZReadOnlyQuery.Create(self);
  BuscaPEQ.Connection := connection.zConnection;

  tsNumeroActividad.ReadOnly := True;
  tsIdtipoMovimiento.ReadOnly := True;
  tdCantidad.ReadOnly := True;
  tmDescripcion.ReadOnly := True;

  frmBarra1.btnCancel.Click;
  tdIdFecha.Date := date;
  connection.configuracion.refresh;

  i := 1;

  BuscaPEQ.Active := False;
  BuscaPEQ.SQL.Clear;
  BuscaPEQ.SQL.Add('Select * from anexos where sTipo="BARCO" ');
  BuscaPEQ.Open;
  while not BuscaPEQ.Eof do
  begin
    if sAnexosBarco='' then
      sAnexosBarco:= BuscaPEQ.FieldByName('sAnexo').AsString
    else
      sAnexosBarco:=sAnexosBarco+','+BuscaPEQ.FieldByName('sAnexo').AsString;
     BuscaPEQ.next;
  end;


  //Buscamos los Id de los Registros que contienen personal y equipo..
  BuscaPEQ.Active := False;
  BuscaPEQ.SQL.Clear;
  BuscaPEQ.SQL.Add('Select iIdDiario from bitacoradepersonal where sContrato =:Contrato and dIdFecha =:Fecha group by iIdDiario ');
  BuscaPEQ.ParamByName('Contrato').AsString := global_contrato;
  BuscaPEQ.ParamByName('Fecha').AsDate      := global_fecha;
  BuscaPEQ.Open;

  if BuscaPEQ.RecordCount > 0 then
  begin
     while not BuscaPEQ.Eof do
     begin
         ListaPEQ[i] := BuscaPEQ.FieldValues['iIdDiario'];
         Inc(i);
         BuscaPEQ.next;
     end;
  end;

  //Buscamos si este registro tiene equipos.
  BuscaPEQ.Active := False;
  BuscaPEQ.SQL.Clear;
  BuscaPEQ.SQL.Add('Select iIdDiario from bitacoradeequipos where sContrato =:Contrato and dIdFecha =:Fecha Group by iIdDiario ');
  BuscaPEQ.ParamByName('Contrato').AsString := global_contrato;
  BuscaPEQ.ParamByName('Fecha').AsDate      := global_fecha;
  BuscaPEQ.Open;

  if BuscaPEQ.RecordCount > 0 then
  begin
     while not BuscaPEQ.Eof do
     begin
         ListaPEQ[i] := BuscaPEQ.FieldValues['iIdDiario'];
         Inc(i);
         BuscaPEQ.next;
     end;
  end;

  // Inicializo el Query Bitacora y actualizo los querys necesarios en este modulo
  TiposdeMovimiento.Active := False;
  TiposdeMovimiento.Params.ParamByName('Contrato').DataType := ftString;
  TiposdeMovimiento.Params.ParamByName('Contrato').Value := Global_Contrato;
  TiposdeMovimiento.Params.ParamByName('Clasificacion').DataType := ftString;
  TiposdeMovimiento.Params.ParamByName('Clasificacion').Value := 'Tiempo Muerto';
  TiposdeMovimiento.Params.ParamByName('Clasificacion2').DataType := ftString;
  TiposdeMovimiento.Params.ParamByName('Clasificacion2').Value := 'Movimiento de Barco';
  TiposdeMovimiento.Params.ParamByName('Alcance').DataType := ftString;
  TiposdeMovimiento.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
  TiposdeMovimiento.Open;

   OrdenesdeTrabajo.Active := False;
   OrdenesdeTrabajo.SQL.Clear ;
   If global_grupo = 'INTEL-CODE' Then
      Ordenesdetrabajo.SQL.Add('select ot.sNumeroOrden, ot.iJornada, ot.bTipoAdmon, ot.iDecimales from ordenesdetrabajo ot where ot.sContrato =:Contrato ' +
                              'And ot.cIdStatus =:Status order by ot.sNumeroOrden')
   Else
      OrdenesdeTrabajo.SQL.Add('Select ot.sNumeroOrden, ot.iJornada, ot.bTipoAdmon, ot.iDecimales from ordenesdetrabajo ot ' +
                               'INNER JOIN ordenesxusuario ou On (ou.sContrato=ot.sContrato '  +
                               'And ou.sNumeroOrden=ot.sNumeroOrden) ' +
                               'where ot.sContrato =:Contrato And ou.sDerechos<>"BLOQUEADO" ' +
                               'And ou.sIdUsuario =:Usuario And ot.cIdStatus =:Status order by ot.sNumeroOrden') ;
   OrdenesdeTrabajo.Params.ParamByName('Contrato').DataType := ftString ;
   OrdenesdeTrabajo.Params.ParamByName('Contrato').Value    := Global_Contrato ;
   OrdenesdeTrabajo.Params.ParamByName('status').DataType   := ftString ;
   OrdenesdeTrabajo.Params.ParamByName('status').Value      := connection.configuracion.FieldValues [ 'cStatusProceso' ];
   If global_grupo <> 'INTEL-CODE' Then
     begin
       OrdenesdeTrabajo.Params.ParamByName('Usuario').DataType  := ftString ;
       OrdenesdeTrabajo.Params.ParamByName('Usuario').Value     := Global_Usuario ;
     end;
   OrdenesdeTrabajo.Open ;

  if OrdenesdeTrabajo.RecordCount > 0 then
  begin
      tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];
      while not OrdenesdeTrabajo.Eof do
      begin
           if OrdenesdeTrabajo.FieldValues['sNumeroOrden'] = global_orden then
              if OrdenesdeTrabajo.FieldValues['bTipoAdmon'] = 'Si' then
                 tdCantidad.DecimalPlaces := OrdenesdeTrabajo.FieldValues['iDecimales'];
           OrdenesdeTrabajo.Next;
      end;
  end;


  tmpDecimal:=tdCantidad.DecimalPlaces;
  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Select sum(dAvance) as dAvance from avancesglobalesxorden where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
    'dIdFecha = :fecha and sNumeroOrden = :Orden Group By sContrato');
  Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
  Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
  if convenio_reporte = '' then
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
  else
    Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
  Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  if global_orden <> '' then
    Connection.qryBusca.Params.ParamByName('Fecha').Value := global_fecha
  else
    Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
  Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Orden').Value := '';
  connection.qryBusca.Open;
  tdIdFecha.Enabled := False;
  tsNumeroOrden.Enabled := False;
  if Connection.qryBusca.RecordCount > 0 then
    tdAvanceGlobal.Value := connection.qryBusca.FieldValues['dAvance']
  else
    tdAvanceGlobal.Value := 0;

  qryGrupos := tzReadOnlyQuery.Create(Self);
  qryGrupos.Connection := connection.zConnection;
  qryGrupos.Active := False;
  qryGrupos.SQL.Clear;
  QryGrupos.SQL.Add('select DISTINCT * from actividadesxgrupo where sContrato = :Contrato And sNumeroOrden = :Orden  Group By sGrupo Order By sGrupo');
  qryGrupos.Params.ParamByName('Contrato').DataType := ftString;
  qryGrupos.Params.ParamByName('Contrato').Value := global_contrato;
  qryGrupos.Params.ParamByName('Orden').DataType := ftString;
  if global_orden <> '' then
    qryGrupos.Params.ParamByName('Orden').Value := global_orden
  else
    qryGrupos.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
  qryGrupos.Open;
  Panel_Grupos.Items.Clear;
  if qryGrupos.RecordCount > 0 then
    with Panel_Grupos do
    begin
      qryGrupos.First;
      while not qryGrupos.Eof do
      begin
        ListItem := Items.Add;
        ListItem.Caption := qryGrupos.FieldValues['sGrupo'];
        ListItem.ImageIndex := 0;
        qryGrupos.Next
      end
    end;
  qryGrupos.Destroy;


  if global_orden <> '' then
  begin
    tsNumeroOrden.KeyValue := global_orden;
    tdIdFecha.Date := global_fecha;

    QryPartidasEfectivas.Active := False;
    QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('contrato').Value := global_contrato;
    QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      QryPartidasEfectivas.Params.ParamByName('convenio').Value := global_convenio
    else
      QryPartidasEfectivas.Params.ParamByName('Convenio').Value := convenio_reporte;
    QryPartidasEfectivas.Params.ParamByName('Orden').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('Orden').Value := global_orden;



    QryPartidasEfectivas.Open;
    if QryPartidasEfectivas.RecordCount < 1 then
      tsNumeroActividad.Enabled := false;
    

    QryBitacora.Active := False;
    QryBitacora.Params.ParamByName('contrato').DataType := ftString;
    QryBitacora.Params.ParamByName('contrato').Value := global_contrato;
    QryBitacora.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      QryBitacora.Params.ParamByName('Convenio').Value := global_convenio
    else
      QryBitacora.Params.ParamByName('Convenio').Value := convenio_reporte;
    QryBitacora.Params.ParamByName('orden').DataType := ftString;
    QryBitacora.Params.ParamByName('orden').Value := global_orden;
    QryBitacora.Params.ParamByName('fecha').DataType := ftDate;
    QryBitacora.Params.ParamByName('fecha').Value := global_fecha;
    QryBitacora.Params.ParamByName('Alcance').DataType := ftString;
    QryBitacora.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
    QryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
    QryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
    QryBitacora.Params.ParamByName('Turno').DataType := ftString;
    QryBitacora.Params.ParamByName('Turno').Value := global_Turno_reporte;
    QryBitacora.Open;

    Grid_Bitacora.SetFocus
  end
  else
  begin
    QryBitacora.Active := False;
    QryBitacora.Params.ParamByName('contrato').DataType := ftString;
    QryBitacora.Params.ParamByName('contrato').Value := global_contrato;
    QryBitacora.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      QryBitacora.Params.ParamByName('Convenio').Value := global_convenio
    else
      QryBitacora.Params.ParamByName('Convenio').Value := convenio_reporte;
    QryBitacora.Params.ParamByName('orden').DataType := ftString;
    QryBitacora.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
    QryBitacora.Params.ParamByName('fecha').DataType := ftDate;
    QryBitacora.Params.ParamByName('fecha').Value := tdIdFecha.Date;
    QryBitacora.Params.ParamByName('Alcance').DataType := ftString;
    QryBitacora.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
    QryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
    QryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
    QryBitacora.Open;

    QryPartidasEfectivas.Active := False;
    QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('contrato').Value := global_contrato;
    QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      QryPartidasEfectivas.Params.ParamByName('convenio').Value := global_convenio
    else
      QryPartidasEfectivas.Params.ParamByName('Convenio').Value := convenio_reporte;
    QryPartidasEfectivas.Params.ParamByName('Orden').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;

    QryPartidasEfectivas.Open;
    tdIdFecha.Enabled := True;
    tsNumeroOrden.Enabled := True;
    tdIdFecha.SetFocus;
  end;

  Abierto:=True;
 // QryBitacora.DisableControls;
  QryBitacoraAfterScroll(QryBitacora);
  //QryBitacora.EnableControls;
  dAvanceReal.Visible := False;
  dAvanceReal.Left    := 165;
  dAvanceReal.Width   := 25;
  BotonPermiso.permisosBotones(frmBarra1);
end;



procedure TfrmBitacoraDepartamental_2.tdIdFechaExit(Sender: TObject);
begin
  if tsNumeroOrden.Text <> '' then
  begin
    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('contrato').Value := global_contrato;
    ReporteDiario.Params.ParamByName('turno').DataType := ftString;
    ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    ReporteDiario.Open;

    if ReporteDiario.RecordCount > 0 then
    begin
      if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    end
  end;

  // Limpia valores
  tdPonderado.Value := 0;
  tdCantidad.Value := 0;
  tmDescripcion.Text := '';
  tsHoraInicio.Text := '00:00' ;
  tsHoraFinal.Text := '00:00' ;

  // Termina Limpia

  QryBitacora.Active := False;
  QryBitacora.Params.ParamByName('contrato').DataType := ftString;
  QryBitacora.Params.ParamByName('contrato').Value := global_contrato;
  QryBitacora.Params.ParamByName('convenio').DataType := ftString;
  if convenio_reporte = '' then
    QryBitacora.Params.ParamByName('Convenio').Value := global_convenio
  else
    QryBitacora.Params.ParamByName('Convenio').Value := convenio_reporte;
  QryBitacora.Params.ParamByName('orden').DataType := ftString;
  QryBitacora.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
  QryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  QryBitacora.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  QryBitacora.Params.ParamByName('Alcance').DataType := ftString;
  QryBitacora.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
  QryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
  QryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
  QryBitacora.Open;

  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('Select sum(dAvance) as dAvance from avancesglobalesxorden where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
    'dIdFecha = :fecha and sNumeroOrden = :Orden Group By sContrato');
  Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
  Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
  if convenio_reporte = '' then
    Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
  else
    Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
  Connection.qryBusca.Params.ParamByName('Fecha').DataType := ftDate;
  Connection.qryBusca.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
  Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
  Connection.qryBusca.Params.ParamByName('Orden').Value := '';
  connection.qryBusca.Open;
  if Connection.qryBusca.RecordCount > 0 then
    tdAvanceGlobal.Value := connection.qryBusca.FieldValues['dAvance']
  else
    tdAvanceGlobal.Value := 0;

  tdIdFecha.Color := global_color_salida

end;

procedure TfrmBitacoraDepartamental_2.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsNumeroOrden.SetFocus
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnAddClick(Sender: TObject);
var
  lValido: Boolean;
begin
  opcKardex               := 'Crea ';
  lblTipoConcepto.Caption := '' ;
  LabelCantidad.Caption   := '' ;
  global_Editor           := 'Nuevo';
  lValido                 := False;

  if Trim(tsNumeroOrden.Text) <> '' then
  begin
    lValido := True;
    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('contrato').Value := global_contrato;
    ReporteDiario.Params.ParamByName('turno').DataType := ftString;
    ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    ReporteDiario.Open;
    activapop(frmBitacoraDepartamental_2,popupprincipal);
    if ReporteDiario.RecordCount > 0 then
    begin
      if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
      begin
        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
        lValido := False;
        frmBarra1.btnCancel.Click ;
        exit;
      end
    end;
  end;

  if global_grupo = 'INTEL-CODE' then
    lValido := True;

  if lValido then
  begin
    Grid_Iguales.Enabled := True;

    if QryPartidasEfectivas.RecordCount > 0 then
    begin
      tsNumeroActividad.Enabled := True;
      tsNumeroActividad.ReadOnly := False;
    end;

    tsIdtipoMovimiento.ReadOnly := False;
    tdCantidad.ReadOnly := False;
    tsHoraInicio.ReadOnly := False ;
    tsHoraFinal.ReadOnly := False ;
    tmDescripcion.ReadOnly := False;
    tmNotas.ReadOnly := False;

    frmBarra1.btnAddClick(Sender);
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;
    Salir1.Enabled := False;

    ActividadesIguales.Active := False;
    tsNumeroActividad.KeyValue := '';
    tmDescripcion.Text := '';
    tmNotas.Text := '';
    tsHoraInicio.Text := '00:00' ;
    tsHoraFinal.Text := '00:00'  ;
    tdCantidad.Value := 0;
    tdPonderado.Value := 0;
    tsIdTipoMovimiento.KeyValue := connection.configuracion.FieldValues['sTipoOperacion'];
    tsNumeroActividad.SetFocus
  end;

  if Global_contrato = Global_contrato_Barco then
  begin
      tsIdTipoMovimiento.KeyValue := 'B';
      tmDescripcion.ReadOnly      := False;
      tsIdTipoMovimiento.SetFocus;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnEditClick(Sender: TObject);
var
  lValido: Boolean;
  Qry: TZReadOnlyQuery;
begin
  opcKardex     := 'Edita ';
  lRespuesta    := True;
  lValido       := False;
  iIdDiarioOld  := QryBitacora.FieldValues['iIdDiario'];
  global_Editor := '';
  tsIdTipoMovimiento.Enabled := false;

  if (QryBitacora.RecordCount > 0) and (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
    if global_grupo = 'INTEL-CODE' then
      lValido := True
    else
    begin
      if tsNumeroOrden.KeyValue <> '' then
      begin
        lValido := True;
        ReporteDiario.Active := False;
        ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
        ReporteDiario.Params.ParamByName('contrato').Value := global_contrato;
        ReporteDiario.Params.ParamByName('turno').DataType := ftString;
        ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
        ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
        ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
        ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
        ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
        ReporteDiario.Open;
        activapop(frmBitacoraDepartamental_2,popupprincipal);
        if ReporteDiario.RecordCount > 0 then
          if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
          begin
            MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
            lValido := False;
            frmBarra1.btnCancel.Click
          end
      end
    end;

  if global_grupo = 'INTEL-CODE' then
    lValido := True;

  if lValido then
  begin
      ActividadesIguales.Active := False;
      ActividadesIguales.Params.ParamByName('contrato').DataType  := ftString;
      ActividadesIguales.Params.ParamByName('contrato').Value     := global_contrato;
      ActividadesIguales.Params.ParamByName('convenio').DataType  := ftString;
      if convenio_reporte = '' then
          ActividadesIguales.Params.ParamByName('Convenio').Value := global_convenio
      else
          ActividadesIguales.Params.ParamByName('Convenio').Value := convenio_reporte;
      ActividadesIguales.Params.ParamByName('orden').DataType     := ftString;
      ActividadesIguales.Params.ParamByName('orden').Value        := tsNumeroOrden.KeyValue;
      ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
      ActividadesIguales.Params.ParamByName('actividad').Value    := tsNumeroActividad.Text;
      ActividadesIguales.ParamByName('turno').AsString            := global_turno;
      ActividadesIguales.ParamByName('fecha').AsDate              := tdIdFecha.Date;
      //ActividadesIguales.ParamByName('wbs').AsString := QryBitacora.FieldByName('sWbs').AsString;
      ActividadesIguales.Open;

      // Localizar el registro que se está editando
      if Not ActividadesIguales.Locate('swbs', QryBitacora.FieldByName('swbs').AsString, []) then
        ActividadesIguales.First;
      /////////
      dCantidadOld := tdCantidad.Value;

      Grid_Iguales.Enabled := False;
      //if QryPartidasEfectivas.RecordCount > 0 then
      //begin        En edicion no se debe poder cambiar de partida
      //  tsNumeroActividad.Enabled := True;
      //  tsNumeroActividad.ReadOnly := False;
      //end;
      tsIdtipoMovimiento.ReadOnly := False;
      tdCantidad.ReadOnly := False;
      tsHoraInicio.ReadOnly := False ;
      tsHoraFinal.ReadOnly := False ;
      tmDescripcion.ReadOnly := False;
      tmNotas.ReadOnly := False;

      // tsPuntosInspeccion.Enabled := True;
      frmBarra1.btnEditClick(Sender);
      Insertar1.Enabled := False;
      Editar1.Enabled := False;
      Registrar1.Enabled := True;
      Can1.Enabled := True;
      Eliminar1.Enabled := False;
      Refresh1.Enabled := False;
      Salir1.Enabled := False;
      //tdCantidad.Value := QryBitacora.FieldValues['dAvance'] / 100;
      tmDescripcion.SetFocus;

      if Global_contrato = Global_contrato_Barco then
      begin
          tsIdTipoMovimiento.KeyValue := 'B';
          tmDescripcion.ReadOnly      := False;
          if tsIdTipoMovimiento.enabled=true then
            tsIdTipoMovimiento.SetFocus
          else
            tmDescripcion.SetFocus;

      end;
  end;
  BotonPermiso.permisosBotones(frmBarra1);
  {26/02/2012 : adal, partida cancelada}
  {Verificar si se reporto anteriormente esta partida como cancelada}
    qry := TZReadOnlyQuery.Create(self);
    qry.Connection := Connection.zConnection;
    qry.sql.clear;
    qry.sql.add('select lCancelada, iIdDiario ' +
      ' from reportediario r         ' +
      '   inner join bitacoradeactividades b ' +
      '     on r.sContrato=b.sContrato and r.sNumeroOrden=b.sNumeroOrden and r.sIdTurno=b.sIdTurno and r.dIdFecha=b.dIdFecha ' +
      ' where b.sNumeroActividad=:actividad and b.sContrato=:contrato and b.sNumeroOrden=:orden and r.sIdConvenio=:convenio ' +
      ' and lCancelada="Si"  and sWbs=:wbs');
    qry.ParamByName('contrato').asString := global_contrato;
    qry.ParamByName('convenio').AsString := global_convenio;
    qry.ParamByName('orden').AsString := tsNumeroOrden.KeyValue;
    qry.ParamByName('wbs').AsString := QryPartidasEfectivas.FieldByName('sWbs').AsString;
    qry.ParamByName('actividad').AsString := tsNumeroActividad.Text;
    qry.Open;
    if qry.RecordCount > 0 then
    begin
      if OpcButton = 'Edit' then
      begin
        if QryBitacora.FieldByName('iIdDiario').AsInteger = qry.FieldByName('iIdDiario').AsInteger then
        begin
          MessageDlg('La partida esta reportada como cancelada [En este reporte diario], solo podra cambiar el status Cancelada.', mtInformation, [mbOk], 0);
          tsNumeroActividad.ReadOnly := true;
          tdCantidad.ReadOnly := true;
        end
        else
        begin
          MessageDlg('La partida esta reportada como cancelada, los cambios realizados no seran guardados.', mtInformation, [mbOk], 0);
        end;
      end;
    end;
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnPostClick(Sender: TObject);
var
    lFiltro,
    lEfectivo,
    Consolidado     : Boolean;

    sHoraInicio,
    sHoraFinal,
    sTiempoEfectivo : string;

    iDiario         : Integer;

    dAvance,
    dAvanceAnterior,
    MaxCantidad,
    RepoCantidad,
    EstaCantidad    : Extended;

    EraEdit: Boolean;

    Q_GuardaDatos,
    Q_BuscaAvance   : TZReadOnlyQuery;
    nombres, cadenas: TStringList;
    sWbsAux: string;

    Qry: TZReadOnlyQuery;
    dCantidadSolicitada: Double;
    dCantidadReportada: Double;
    dCantidadFalteReportar: Double;

  function xRound(Valor: Real; Dec: Integer): Real;
  var
    Desarrollo: Real;
    Decimales: String;
    Multiplo: Integer;
    sValor: String;
  begin
    { Redondear con limite mínimo superior de 5
         Delphi y mysql redondean los decimales de 0.1 a 0.5 hacia abajo, es decir al cero y de 0.6 a 0.9 hacia arriba, es decir a 1.
         Pues bien, EXCEL lo hace de la siguiente manera: de 0.1 a 0.4 hacia abajo y de 0.5 a 0.9 hacia arriba.
         Debido a que el personal de BMPI realiza sus cálculos en EXCEL es por esto que nunca llegan a los mismo avances
         de acuerdo al sistema. }
    Multiplo := 1;
    for I := 1 to Dec do
      Multiplo := Multiplo * 10;

    sValor := FloatToStr(Valor * Multiplo);
    if Pos('.', sValor) = 0 then sValor := sValor + '.00';

    Desarrollo := StrToFloat(Copy(sValor, 1, Pos('.', sValor) - 1));
    Decimales := Copy(sValor, Pos('.', sValor) + 1, Length(sValor));
    if StrToInt(Decimales[1]) > 4  then
      Desarrollo := Desarrollo + 1;
    Result := Desarrollo / Multiplo;
  end;

begin
   {26/02/2012 : adal, partida cancelada}
{Verificar si se reporto anteriormente esta partida como cancelada}
  qry := TZReadOnlyQuery.Create(self);
  qry.Connection := Connection.zConnection;
  qry.sql.clear;
  qry.sql.add('select lCancelada, iIdDiario, r.dIdFecha ' +
    ' from reportediario r         ' +
    '   inner join bitacoradeactividades b ' +
    '     on r.sContrato=b.sContrato and r.sNumeroOrden=b.sNumeroOrden and r.sIdTurno=b.sIdTurno and r.dIdFecha=b.dIdFecha ' +
    ' where b.sNumeroActividad=:actividad and b.sContrato=:contrato and b.sNumeroOrden=:orden and r.sIdConvenio=:convenio ' +
    ' and lCancelada="Si"  and sWbs=:wbs ');
  if OpcButton = 'Edit' then
    qry.sql.add('  and b.iIdDiario<>:diario ');
  qry.ParamByName('contrato').asString := global_contrato;
  qry.ParamByName('convenio').AsString := global_convenio;
  qry.ParamByName('orden').AsString := tsNumeroOrden.KeyValue;
  qry.ParamByName('wbs').AsString := QryPartidasEfectivas.FieldByName('sWbs').AsString;
  qry.ParamByName('actividad').AsString := tsNumeroActividad.Text;
  if OpcButton = 'Edit' then
    qry.ParamByName('diario').AsInteger := QryBitacora.FieldByName('iIdDiario').AsInteger;
  qry.Open;
  if qry.RecordCount > 0 then
  begin
    MessageDlg('La partida esta reportada como cancelada en el reporte diario de fecha ' + datetostr(qry.FieldByName('dIdFecha').AsDateTime) + ', operaciones no permitidas.', mtError, [mbOk], 0);
    exit;
  end;
  {verificar el volumen reportado si se desea cancelar la partida}
  if chkcancelada.Checked then
  begin
    {cantidad solicitada}
    qry.sql.clear;
    qry.sql.add('select dCantidad from actividadesxorden ' +
      ' where sNumeroActividad=:actividad and sContrato=:contrato ' +
      ' and sNumeroOrden=:orden and sIdConvenio=:convenio and sWbs=:wbs');
    qry.ParamByName('contrato').asString := global_contrato;
    qry.ParamByName('convenio').AsString := global_convenio;
    qry.ParamByName('orden').AsString := tsNumeroOrden.KeyValue;
    qry.ParamByName('wbs').AsString := QryPartidasEfectivas.FieldByName('sWbs').AsString;
    qry.ParamByName('actividad').AsString := tsNumeroActividad.Text;
    qry.Open;
    if qry.RecordCount > 0 then
      dCantidadSolicitada := qry.FieldByName('dCantidad').AsFloat;
    {cantidad reportada}
    qry.sql.clear;
    qry.sql.add('select sum(b.dCantidad) as dReportado ' +
      ' from reportediario r ' +
      '   inner join bitacoradeactividades b ' +
      '     on r.sContrato=b.sContrato and r.sNumeroOrden=b.sNumeroOrden and r.sIdTurno=b.sIdTurno and r.dIdFecha=b.dIdFecha ' +
      ' where b.sNumeroActividad=:actividad and b.sContrato=:contrato and b.sNumeroOrden=:orden and r.sIdConvenio=:convenio' +
      '  and sWbs=:wbs ');
    if OpcButton = 'Edit' then
      qry.sql.add('  and b.iIdDiario<>:diario ');
    qry.ParamByName('contrato').asString := global_contrato;
    qry.ParamByName('convenio').AsString := global_convenio;
    qry.ParamByName('orden').AsString := tsNumeroOrden.KeyValue;
    qry.ParamByName('wbs').AsString := QryPartidasEfectivas.FieldByName('sWbs').AsString;
    qry.ParamByName('actividad').AsString := tsNumeroActividad.Text;
    if OpcButton = 'Edit' then
      qry.ParamByName('diario').AsInteger := QryBitacora.FieldByName('iIdDiario').AsInteger;
    qry.Open;
    if qry.RecordCount > 0 then
      dCantidadReportada := qry.FieldByName('dReportado').AsFloat;
    {si se esta editando el registro, no tomar en cuenta el valor guardado actualmente, si no el escrito en el formulario}
    if OpcButton = 'Edit' then
      dCantidadReportada := dCantidadReportada + tdCantidad.Value;
    {Si no se ha reportado el igual a lo solicitado en el anexo del frente, cancelar la operacion}
    if dCantidadReportada < dCantidadSolicitada then
    begin
      dCantidadFalteReportar := dCantidadSolicitada - dCantidadReportada;
      if MessageDlg('Para poder cancelar la partida, es necesario que se reporte el volumen total del anexo. Falta por reportar: [ ' + FloatToStr(dCantidadFalteReportar) + ' ].' + chr(10)
        + chr(10) + '. Desea agregar el faltante por reportar? (si selecciona "No" la operacion será cancelada totalmente)',
        mtError, [mbYes, mbNo], 0) = mrYes then
      begin
        if OpcButton = 'Edit' then
        begin
          dCantidadReportada := dCantidadReportada - tdCantidad.Value;
          dCantidadFalteReportar := dCantidadSolicitada - dCantidadReportada;
        end;
        tdCantidad.Value := dCantidadFalteReportar;
      end
      else
      begin
        exit;
      end;

    end;

  end;

   if pdPaquete.Left = 0 then  //no hacer nada si se esta eligiendo la lista de pertidas
     exit;

   {Validacion de campos}
   sWbsAux := '';
   if ActividadesIguales.Active then
     sWbsAux := 'x';

   {Continua insercion de datos}
    lKardex := false;

    Q_GuardaDatos := TZReadOnlyQuery.Create(self);
    Q_GuardaDatos.Connection := connection.zConnection;

    Q_BuscaAvance := TZReadOnlyQuery.Create(self);
    Q_BuscaAvance.Connection := connection.zConnection;

    lRespuesta       := True;
    { ********************************************************************
    Nota: Aquí inician las modificaciones que hay que pasarle a Ivan
    ******************************************************************** }
    swbsFormulario := ActividadesIguales.FieldByName('sWbs').AsString;
    MaxCantidad    := 0;
    RepoCantidad   := 0;

    if ( strPos( pchar('ACTIVIDAD') , pchar( ActividadesIguales.FieldByName('sMedida').AsString ) ) <> nil ) or (ActividadesIguales.FieldByName('sTipoAnexo').AsString = 'PU' ) then
    // Calcular la cantidad en base al avance
    EstaCantidad := (tdCantidad.value * actividadesiguales.FieldValues['dCantidad']) ;

    // Validar si la cantidad captura es valida de acuerdo a sus recepciones
    Connection.QryBusca.Active := False;
    Connection.QryBusca.SQL.Text := 'select a.snumeroactividad, sum(a.dCantidad) as dCantidad ' +
                                  'from anexo_psuministro a ' +
                                  'inner join anexo_suministro b on (b.scontrato = a.scontrato and b.ifolio = a.iFolio) ' +
                                  'inner join actividadesxanexo c on (c.scontrato = a.scontrato and c.sidconvenio = :convenio and c.sNumeroActividad = a.sNumeroActividad) ' +
                                  'where b.scontrato = :contrato and b.snumeroorden = :orden and c.sTipoActividad = "Actividad" and a.sNumeroActividad = :Actividad ' +
                                  'group by a.sNumeroActividad';
    Connection.QryBusca.ParamByName('contrato').AsString  := global_contrato;
    Connection.QryBusca.ParamByName('convenio').AsString  := global_convenio;
    Connection.QryBusca.ParamByName('orden').AsString     := ordenesdetrabajo.FieldByName('snumeroorden').AsString;
    Connection.QryBusca.ParamByName('actividad').AsString := tsNumeroActividad.Text;
    Connection.QryBusca.Open;

    // Cantidad reportada total de esta partida
    MaxCantidad := Connection.QryBusca.FieldByName('dCantidad').AsFloat;

    // Calcular ahora el total de las cantidades capturadas en la bitácora correspondientes a esta partida
    Connection.QryBusca.SQL.Text := 'select	a.snumeroactividad,	sum(a.dCantidad) as dCantidad ' +
                                  'from bitacoradeactividades a ' +
                                  'where a.scontrato = :contrato and a.snumeroorden = :orden and a.snumeroactividad = :actividad ' +
                                  'group by a.sNumeroActividad';
    Connection.QryBusca.ParamByName('contrato').AsString  := global_contrato;
    Connection.QryBusca.ParamByName('orden').AsString     := ordenesdetrabajo.FieldByName('snumeroorden').AsString;
    Connection.QryBusca.ParamByName('actividad').AsString := tsNumeroActividad.Text;
    Connection.QryBusca.Open;

    if Connection.QryBusca.RecordCount > 0 then
      RepoCantidad := Connection.QryBusca.FieldByname('dCantidad').AsFloat;

    // Si se trata de una edición de registro se deberá descontar el dato original a la cantidad reportada
    if OpcButton = 'Edit' then
    begin
        QryExistePartida.Active := False;
        QryExistePartida.Params.ParamByName('Contrato').DataType   := ftString;
        QryExistePartida.Params.ParamByName('Contrato').Value      := global_contrato;
        QryExistePartida.Params.ParamByName('Fecha').DataType      := ftDate;
        QryExistePartida.Params.ParamByName('Fecha').Value         := tdIdFecha.Date;
        QryExistePartida.Params.ParamByName('Orden').DataType      := ftString;
        QryExistePartida.Params.ParamByName('Orden').Value         := tsNumeroOrden.KeyValue;
        QryExistePartida.Params.ParamByName('wbs').DataType        := ftString;
        QryExistePartida.Params.ParamByName('wbs').Value           := sWbsFormulario;
        QryExistePartida.Params.ParamByName('Actividad').DataType  := ftString;
        QryExistePartida.Params.ParamByName('Actividad').Value     := tsNumeroActividad.Text;
        QryExistePartida.Params.ParamByName('Turno').DataType      := ftString;
        QryExistePartida.Params.ParamByName('Turno').Value         := global_turno_reporte;
        QryExistePartida.Params.ParamByName('Tipo').DataType       := ftString;
        QryExistePartida.Params.ParamByName('Tipo').Value          := sTiempoEfectivo;
        QryExistePartida.Params.ParamByName('Isometrico').DataType := ftString;
        QryExistePartida.Params.ParamByName('Isometrico').Value    := '';
        QryExistePartida.Open;

        // Localizar el elemento original para conocer su cantidad actual
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Text := 'select dCantidad from bitacoradeactividades ' +
                                    'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario';
        connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
        connection.QryBusca.Params.ParamByName('contrato').value    := Global_Contrato;
        connection.QryBusca.Params.ParamByName('fecha').DataType    := ftDate;
        connection.QryBusca.Params.ParamByName('fecha').value       := tdIdFecha.Date;
        connection.QryBusca.Params.ParamByName('diario').DataType   := ftInteger;
        connection.QryBusca.Params.ParamByName('diario').value      := QryExistePartida.FieldValues['iIdDiario'];
        connection.QryBusca.Open;

        if Connection.QryBusca.RecordCount > 0 then
           RepoCantidad := RepoCantidad  - Connection.QryBusca.FieldByName('dCantidad').AsFloat;   // Restar la cantidad original para que no afecte al acumulado total nuevo
    end;

    // Comparar ahora los datos           //HABILITAT CUANDO ESTEN LISTOS LOS AVISOSS.
    //  if RepoCantidad + EstaCantidad > MaxCantidad then
    //  begin
    //    messagedlg('Las cantidades anteriormente reportadas para esta actividad más la cantidad capturada en este momento suman un volúmen mayor a las cantidades registradas en manifiestos de embarque.' + #10 + #10 +
    //               'No es posible registrar mas volumenes de esta partida, verifique esto e intente de nuevo.', mtInformation, [mbOk], 0);
    //    abort;
    //  end;
  { ********************************************************************
    Nota: Aquí TERMINAN las modificaciones que hay que pasarle a Ivan
  ******************************************************************** }
  EraEdit := OpcButton = 'Edit';    // Respaldar el valor original del botón que llamó a este procedimiento
  if OpcButton = 'Edit' then
      if TiposdeMovimiento.FieldValues['sClasificacion'] <> 'Notas' then
      Begin
        {connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('select dAvance from bitacoradeactividades where sContrato =:Contrato and dIdFecha =:Fecha '+
                                 'and sIdTurno =:Turno and sNumeroOrden =:Orden and sNumeroActividad =:Actividad '+
                                 'and sWbs =:Wbs ');
        connection.zCommand.ParamByName('Contrato').AsString  := global_contrato;
        connection.zCommand.ParamByName('Fecha').AsDate       := tdIdFecha.Date;
        connection.zCommand.ParamByName('Turno').AsString     := global_turno;
        connection.zCommand.ParamByName('Orden').AsString     := tsNumeroOrden.Text;
        connection.zCommand.ParamByName('Actividad').AsString := ActividadesIguales.FieldValues['sNumeroActividad'];
        connection.zCommand.ParamByName('Wbs').AsString       := sWbsFormulario;
        connection.zCommand.Open;

        if connection.zCommand.RecordCount > 0 then
           if dAvanceReal.Visible = False then
              dAvanceReal.Value  := connection.zCommand.FieldValues['dAvance'];}

        {Respaldo de la informacion de la partida..}
        Q_GuardaDatos.Active := False;
        Q_GuardaDatos.SQL.Clear;
        Q_GuardaDatos.SQL.Add('select * from bitacoradeactividades where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:Diario');
        Q_GuardaDatos.ParamByName('Contrato').AsString  := global_contrato;
        Q_GuardaDatos.ParamByName('Fecha').AsDate       := tdIdFecha.Date;
        Q_GuardaDatos.ParamByName('Diario').AsString    := QryBitacora.FieldValues['iIdDiario'];
        Q_GuardaDatos.Open;

        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('delete from bitacoradeactividades where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario');
        connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
        connection.zCommand.Params.ParamByName('contrato').value    := Global_Contrato;
        connection.zCommand.Params.ParamByName('fecha').DataType    := ftDate;
        connection.zCommand.Params.ParamByName('fecha').value       := tdIdFecha.Date;
        connection.zCommand.Params.ParamByName('diario').DataType   := ftInteger;
        connection.zCommand.Params.ParamByName('diario').value      := QryBitacora.FieldValues['iIdDiario'];
        connection.zCommand.ExecSQL;

        //Actualizo los Acumulados ...
        // ActividadesxOrden ...
        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('Select Sum(dCantidad) as dCantidad from bitacoradeactividades where ' +
                                    'sContrato = :contrato And sNumeroOrden = :Orden And sWbs = :wbs And ((:Param > 0 and dIdFecha <= :Fecha) or :Param = 0) And sNumeroActividad = :Actividad Group By sWbs, sNumeroActividad') ;
        connection.QryBusca.Params.ParamByName('contrato').DataType  := ftString ;
        connection.QryBusca.Params.ParamByName('contrato').Value     := global_contrato ;
        connection.QryBusca.Params.ParamByName('orden').DataType     := ftString ;
        connection.QryBusca.Params.ParamByName('orden').Value        := tsNumeroOrden.Text ;
        connection.QryBusca.Params.ParamByName('wbs').DataType       := ftString ;
        connection.QryBusca.Params.ParamByName('wbs').Value          := sWbsFormulario;
        connection.QryBusca.Params.ParamByName('fecha').DataType     := ftDate;
        connection.QryBusca.params.ParamByName('fecha').Value        := tdIdFecha.Date;
        connection.QryBusca.Params.ParamByName('param').DataType     := ftInteger;
        connection.QryBusca.params.ParamByName('param').Value        := 0;
        connection.QryBusca.Params.ParamByName('actividad').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('actividad').Value    := tsNumeroActividad.Text ;
        connection.QryBusca.open ;
        dInstaladoOrden := 0 ;
        if connection.QryBusca.RecordCount > 0 then
              dInstaladoOrden := Connection.QryBusca.FieldValues['dCantidad'] ;

        dExcedenteOrden := 0 ;
        if dInstaladoOrden > ActividadesIguales.FieldValues['dCantidad'] then
        begin
              dExcedenteOrden := dInstaladoOrden - ActividadesIguales.FieldValues['dCantidad'] ;
              dInstaladoOrden := ActividadesIguales.FieldValues['dCantidad'] ;
        end;

        // Leer solamente las cantiades reportadas anteriormente a esta fecha
        connection.QryBusca.Close;
        connection.QryBusca.Params.ParamByName('param').DataType     := ftInteger;
        connection.QryBusca.params.ParamByName('param').Value        := 1;
        connection.QryBusca.Open;
        dInstaladoOrden1 := 0 ;
        if connection.QryBusca.RecordCount > 0 then
              dInstaladoOrden1 := Connection.QryBusca.FieldValues['dCantidad'] ;

        // ActividadesxAnexo ....
        // Cantidad Anexo ...
        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('Select dCantidadAnexo from actividadesxanexo where ' +
                          'sContrato = :contrato And sIdConvenio = :Convenio And sWbs = :wbs And sTipoActividad = "Actividad" ');
        Connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
        Connection.qryBusca.Params.ParamByName('contrato').Value    := global_contrato;
        Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString;
        if convenio_reporte = '' then
            Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
        else
            Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
        Connection.QryBusca.ParamByName('wbs').AsString := QryPartidasEfectivas.FieldByName('swbscontrato').AsString;
        connection.qryBusca.Open;

        dCantidadAnexo := 0 ;
        if (Connection.qryBusca.RecordCount > 0) then
            dCantidadAnexo := Connection.qryBusca.FieldValues['dCantidadAnexo'];

        connection.QryBusca.Active := False ;
        connection.QryBusca.SQL.Clear ;
        connection.QryBusca.SQL.Add('Select Sum(dCantidad) as dCantidad from bitacoradeactividades where ' +
                'sContrato = :contrato and sWbs =:wbs And sNumeroActividad = :Actividad Group By sNumeroActividad') ;
        connection.QryBusca.Params.ParamByName('contrato').DataType  := ftString ;
        connection.QryBusca.Params.ParamByName('contrato').Value     := global_contrato ;
        connection.QryBusca.Params.ParamByName('actividad').DataType := ftString ;
        connection.QryBusca.Params.ParamByName('actividad').Value    := tsNumeroActividad.Text ;
        connection.QryBusca.Params.ParamByName('wbs').DataType       := ftString ;
        connection.QryBusca.Params.ParamByName('wbs').Value          := QryBitacora.FieldByName('sWbs').AsString ;
        connection.QryBusca.open ;
        dInstaladoAnexo := 0 ;
        if connection.QryBusca.RecordCount > 0 then
              dInstaladoAnexo := Connection.QryBusca.FieldValues['dCantidad'] ;

        dExcedenteAnexo := 0 ;
        if dInstaladoAnexo > dCantidadAnexo  then
        begin
              dExcedenteAnexo := dInstaladoAnexo - dCantidadAnexo  ;
              dInstaladoAnexo := dCantidadAnexo  ;
        end ;

        lEfectivo := fnActualizaAcumuladosOrden('', QryBitacora.FieldByName('sWbs').AsString , tsNumeroActividad.Text, ActividadesIguales.FieldValues['dCantidad'], dInstaladoOrden, dExcedenteOrden, 0) ;

        lEfectivo :=  fnActualizaAcumuladosContrato('', tsNumeroActividad.Text, dCantidadAnexo, dInstaladoAnexo, dExcedenteAnexo, 0) ;

        OpcButton := 'New'
      end ;
  lEfectivo := False;


  if OpcButton = 'New' then
  begin
      if ( tsHoraInicio.Text = '  :  ' ) or ( tsHoraFinal.Text = '  :  ' ) then
      begin
          ShowMessage( 'Los horarios no deben estar vacios!!' );
          tsHoraInicio.SetFocus;
      end
      else
          if tsHoraInicio.Text > tsHoraFinal.Text then
          begin
              ShowMessage( 'La hora de inicio es menor que la hora final!!' );
              tsHoraInicio.SetFocus;
          end
          else
          begin
              dAvance := 0;
              lFiltro := False;
              if tsIdTipoMovimiento.KeyValue = Connection.configuracion.FieldValues['sTipoAlcance'] then
                    sTiempoEfectivo := Connection.configuracion.FieldValues['sTipoOperacion']
              else
                    sTiempoEfectivo := tsIdTipoMovimiento.KeyValue;

              sHoraInicio := tsHoraInicio.Text;
              sHoraFinal := tsHoraFinal.Text;
              if TiposdeMovimiento.FieldValues['sClasificacion'] = 'Notas' then
              begin
                  tdCantidad.Value := 0;
                  sWbsFormulario := '';
                  lFiltro := True;
                  sHoraInicio := '00:00' ;
                  sHoraFinal := '00:00' ;
              end
              else
              begin
                  if ActividadesIguales.RecordCount > 0 then
                      if TiposdeMovimiento.FieldValues['sClasificacion'] = 'Tiempo en Operacion' then
                          lEfectivo := True
                      else
                          tdCantidad.Value := 0
                  else
                      tdCantidad.Value := 0;

                  sWbsFormulario := ActividadesIguales.FieldByName('sWbs').AsString;
                  SavePlace      := ActividadesIguales.GetBookmark;

                  If lEfectivo then
                  begin
                      If ( strPos( pchar('ACTIVIDAD') , pchar( ActividadesIguales.FieldByName('sMedida').AsString ) ) <> nil ) then
                          tdCantidad.Value := (tdCantidad.value * actividadesiguales.FieldValues['dCantidad']) ;

                      lFiltro := fnValidaPartidaOrden(sWbsFormulario, tsNumeroActividad.Text);
                  end
              end ;

              { Si la respuesta es No, Regresamos el registro eliminado de la bitacoradeactividades.. }
              if lRespuesta = False then
              begin
                   if global_Editor <> 'Nuevo' then
                   begin
                      if Q_GuardaDatos.RecordCount > 0 then
                      begin
                          connection.zCommand.Active := False;
                          connection.zCommand.SQL.Clear;
                          connection.zCommand.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, sIdDepartamento, ' +
                                  ' sNumeroOrden, sWbs, sNumeroActividad, sIdTipoMovimiento, sHoraInicio, sHoraFinal, dAvance, dCantidad, mDescripcion, mNotas, sIsometrico, lImprime, lCancelada ) ' +
                                  ' VALUES (:contrato, :fecha, :diario, :turno, :depto, :orden, :Wbs, :actividad, :tipo, :inicio, :final, :avance, :cantidad, :descripcion, :notas, :isometrico, :imprime, :cancela)');
                          Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
                          Connection.zCommand.Params.ParamByName('contrato').value       := Global_Contrato;
                          Connection.zCommand.Params.ParamByName('fecha').DataType       := ftDate;
                          Connection.zCommand.Params.ParamByName('fecha').value          := Q_GuardaDatos.FieldValues['dIdFecha'];
                          Connection.zCommand.Params.ParamByName('diario').DataType      := ftInteger;
                          Connection.zCommand.Params.ParamByName('diario').value         := Q_GuardaDatos.FieldValues['iIdDiario'];
                          Connection.zCommand.Params.ParamByName('turno').DataType       := ftString;
                          Connection.zCommand.Params.ParamByName('turno').value          := Q_GuardaDatos.FieldValues['sIdTurno'];
                          Connection.zCommand.Params.ParamByName('depto').DataType       := ftString;
                          Connection.zCommand.Params.ParamByName('depto').value          := Q_GuardaDatos.FieldValues['sIdDepartamento'];
                          Connection.zCommand.Params.ParamByName('orden').DataType       := ftString;
                          Connection.zCommand.Params.ParamByName('orden').value          := Q_GuardaDatos.FieldValues['sNumeroOrden'];
                          Connection.zCommand.Params.ParamByName('wbs').DataType         := ftString;
                          Connection.zCommand.Params.ParamByName('wbs').value            := Q_GuardaDatos.FieldValues['sWbs'];
                          Connection.zCommand.Params.ParamByName('actividad').DataType   := ftString;
                          Connection.zCommand.Params.ParamByName('actividad').value      := Q_GuardaDatos.FieldValues['sNumeroActividad'];
                          Connection.zCommand.Params.ParamByName('tipo').DataType        := ftString;
                          Connection.zCommand.Params.ParamByName('tipo').value           := Q_GuardaDatos.FieldValues['sIdTipoMovimiento'];
                          Connection.zCommand.Params.ParamByName('avance').DataType      := ftFloat;
                          Connection.zCommand.Params.ParamByName('avance').value         := Q_GuardaDatos.FieldValues['dAvance'];
                          Connection.zCommand.Params.ParamByName('cantidad').DataType    := ftFloat;
                          Connection.zCommand.Params.ParamByName('cantidad').value       := Q_GuardaDatos.FieldValues['dCantidad'];
                          Connection.zCommand.Params.ParamByName('inicio').DataType      := ftString;
                          Connection.zCommand.Params.ParamByName('inicio').value         := Q_GuardaDatos.FieldValues['sHoraInicio'];
                          Connection.zCommand.Params.ParamByName('final').DataType       := ftString;
                          Connection.zCommand.Params.ParamByName('final').value          := Q_GuardaDatos.FieldValues['sHoraFinal'];
                          Connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                          Connection.zCommand.Params.ParamByName('descripcion').value    := Q_GuardaDatos.FieldValues['mDescripcion'];
                          Connection.zCommand.Params.ParamByName('notas').DataType       := ftMemo;
                          Connection.zCommand.Params.ParamByName('notas').value          := Q_GuardaDatos.FieldValues['mNotas'];
                          Connection.zCommand.Params.ParamByName('Isometrico').DataType  := ftString;
                          Connection.zCommand.Params.ParamByName('Isometrico').value     := Q_GuardaDatos.FieldValues['sIsometrico'];
                          Connection.zCommand.Params.ParamByName('Imprime').DataType     := ftString;
                          if chkImprime.Checked then
                             Connection.zCommand.Params.ParamByName('Imprime').value     := 'Si'
                          else
                             Connection.zCommand.Params.ParamByName('Imprime').value     := 'No';
                          Connection.zCommand.Params.ParamByName('Cancela').DataType     := ftString;
                          if chkCancelada.Checked then
                             Connection.zCommand.Params.ParamByName('Cancela').value     := 'Si'
                          else
                             Connection.zCommand.Params.ParamByName('Cancela').value     := 'No';
                          connection.zCommand.ExecSQL;
                          desactivapop(popupprincipal);
                          {Registra movimiento en Kardex..}
                          lKardex     := true;
                          sWbsKardex  := Q_GuardaDatos.FieldByName('sWbs').AsString;
                          fechaKardex := Q_GuardaDatos.FieldByName('dIdFecha').AsString;
                      end;
                      lRespuesta := True;
                   end;
              end;
              {Continua proceso normal del sistema..}
              If lFiltro then
              begin
                      // Aqui .. primero busco si existe la partida en el dia ... Orden, Paquete, PArtida, si existe las une ...
                      Consolidado := False;
                      QryExistePartida.Active := False;
                      QryExistePartida.Params.ParamByName('Contrato').DataType   := ftString;
                      QryExistePartida.Params.ParamByName('Contrato').Value      := global_contrato;
                      QryExistePartida.Params.ParamByName('Fecha').DataType      := ftDate;
                      QryExistePartida.Params.ParamByName('Fecha').Value         := tdIdFecha.Date;
                      QryExistePartida.Params.ParamByName('Orden').DataType      := ftString;
                      QryExistePartida.Params.ParamByName('Orden').Value         := tsNumeroOrden.KeyValue;
                      QryExistePartida.Params.ParamByName('wbs').DataType        := ftString;
                      QryExistePartida.Params.ParamByName('wbs').Value           := sWbsFormulario;
                      QryExistePartida.Params.ParamByName('Actividad').DataType  := ftString;
                      QryExistePartida.Params.ParamByName('Actividad').Value     := tsNumeroActividad.Text;
                      QryExistePartida.Params.ParamByName('Turno').DataType      := ftString;
                      QryExistePartida.Params.ParamByName('Turno').Value         := global_turno_reporte;
                      QryExistePartida.Params.ParamByName('Tipo').DataType       := ftString;
                      QryExistePartida.Params.ParamByName('Tipo').Value          := sTiempoEfectivo;
                      QryExistePartida.Params.ParamByName('Isometrico').DataType := ftString;
                      QryExistePartida.Params.ParamByName('Isometrico').Value    := '';
                      QryExistePartida.Open;

                      If QryExistePartida.RecordCount > 0 then
                          If ( strPos( pchar('ACTIVIDAD') , pchar( ActividadesIguales.FieldByName('sMedida').AsString ) ) = nil )  then
                              If MessageDlg('Se encontro una coincidencia del Wbs-Partida en los registros de la fecha y orden seleccionada, ¿Desea consolidar el movimiento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                                   Consolidado := True
                              else
                                   Consolidado := False
                          Else
                              Consolidado := False ;

                      If Consolidado then
                      begin
                          If lEfectivo then
                          Begin
                              If ( strPos( pchar('ACTIVIDAD') , pchar( ActividadesIguales.FieldByName('sMedida').AsString ) ) = nil ) then
                              begin
                                  dAvanceAnterior := 0;
                                  dAvance := 0 ;

                                  if ActividadesIguales.FieldValues['dCantidad'] > 0 then
                                  begin

                                      AvanceMaximo.Active := False;
                                      AvanceMaximo.SQL.Clear;
                                      AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                                            'sContrato = :contrato and dIdFecha < :fecha And sNumeroOrden = :orden and ' +
                                            'sWbs = :wbs and sNumeroActividad = :Actividad Group By sContrato');
                                      AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                                      AvanceMaximo.Params.ParamByName('Contrato').Value := Global_Contrato;
                                      AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                                      AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                                      AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                                      AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                                      AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                                      AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                                      AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                                      AvanceMaximo.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
                                      AvanceMaximo.Open;
                                      if AvanceMaximo.RecordCount > 0 then
                                          dAvanceAnterior := AvanceMaximo.FieldValues['Avance'];

                                      AvanceMaximo.Active := False;
                                      AvanceMaximo.SQL.Clear;
                                      AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                                              'sContrato = :contrato and dIdFecha = :fecha and sIdTurno < :Turno And ' +
                                              'sNumeroOrden = :orden and sWbs = :wbs and sNumeroActividad = :Actividad ' +
                                              'Group By sContrato');
                                      AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                                      AvanceMaximo.Params.ParamByName('Contrato').Value := Global_Contrato;
                                      AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                                      AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                                      AvanceMaximo.Params.ParamByName('turno').DataType := ftString;
                                      AvanceMaximo.Params.ParamByName('turno').Value := global_turno_reporte;
                                      AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                                      AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                                      AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                                      AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                                      AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                                      AvanceMaximo.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
                                      AvanceMaximo.Open;
                                      if AvanceMaximo.RecordCount > 0 then
                                          dAvanceAnterior := dAvanceAnterior + AvanceMaximo.FieldValues['Avance'];

                                      if Connection.configuracion.FieldValues['sAvanceBitacora'] = 'Volumen' then
                                      begin
                                          dAvance := (100 / dCantidadOrden) * tdCantidad.Value;
                                          dError := (dInstaladoOrden + tdCantidad.Value) - dCantidadOrden;
                                          if (dError >= 0) then
                                                dAvance := 100 - dAvanceAnterior
                                          else
                                                dAvance := dAvance + QryExistePartida.FieldValues['dAvance'];
                                      end
                                      else if (dAvanceAnterior + dAvance) >= 100 then
                                      begin
                                           tdCantidad.Value := dCantidadOrden - dInstaladoOrden;
                                           dAvance := 100 - dAvanceAnterior
                                      end ;
                                  end ;

                                  try {Se consolida el movimiento se suman los volumenes de la partida..}
                                      connection.zCommand.Active := False;
                                      connection.zCommand.SQL.Clear;
                                      connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET dCantidad = :Cantidad, dAvance = :Avance ' +
                                                     'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario');
                                      connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                                      connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                                      connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                                      connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
                                      connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                                      connection.zCommand.Params.ParamByName('diario').value := QryExistePartida.FieldValues['iIdDiario'];
                                      connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
                                      connection.zCommand.Params.ParamByName('Avance').value := dAvance;
                                      connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                                      connection.zCommand.Params.ParamByName('Cantidad').value := tdCantidad.Value + QryExistePartida.FieldValues['dCantidad'];
                                      connection.zCommand.ExecSQL;

                                      if fnActualizaAcumuladosOrden('', sWbsFormulario, tsNumeroActividad.Text,
                                             dCantidadOrden, dInstaladoOrden, dExcedenteOrden, tdCantidad.Value) then
                                          if fnActualizaAcumuladosContrato('', tsNumeroActividad.Text, dCantidadAnexo, dInstaladoAnexo, dExcedenteAnexo, tdCantidad.Value) then
                                          else
                                                MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + tsNumeroActividad.Text + ', notificar al administrador del sistema', mtWarning, [mbOk], 0)
                                      else
                                          MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + sWbsFormulario + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);
                                  finally
                                      MessageDlg('Ocurrio un error al actualizar la bitacora de actividades, notificar al administrador del sistema', mtWarning, [mbOk], 0);
                                  end
                              end ;
                          end
                          else
                          begin
                              // Si se consolida un comentario ....
                              try
                                  connection.zCommand.Active := False;
                                  connection.zCommand.SQL.Clear;
                                  connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET mDescripcion = :descripcion ' +
                                        'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario');
                                  Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                                  Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                                  Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                                  Connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
                                  Connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                                  Connection.zCommand.Params.ParamByName('diario').value := QryExistePartida.FieldValues['iIdDiario'];
                                  Connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                                  Connection.zCommand.Params.ParamByName('descripcion').value := QryExistePartida.FieldValues['mDescripcion'] + chr(13) + tmDescripcion.Text;
                                  connection.zCommand.ExecSQL;
                              except
                                on e : exception do begin
                                UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registro de Volumenes de Obra y Notas', 'Al actualizar la bitacora de actividades', 0);
                                 end;
                              end
                          end
                      end
                      else
                      begin
                          {Aqui iniciamos con el calculo de los avances de las partidas..}
                          if Pos('TIERRA', tsNumeroOrden.KeyValue) > 0 then
                              global_inicio := global_inicio + 8000;

                          MaximoDiario.Active := False;
                          MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
                          MaximoDiario.Params.ParamByName('Contrato').Value := Global_Contrato;
                          MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
                          MaximoDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                          MaximoDiario.Params.ParamByName('Inicio').DataType := ftInteger;
                          MaximoDiario.Params.ParamByName('Inicio').Value := global_inicio;
                          MaximoDiario.Params.ParamByName('Final').DataType := ftInteger;
                          MaximoDiario.Params.ParamByName('Final').Value := global_final;
                          MaximoDiario.Open;
                          if MaximoDiario.FieldByName('TotalDiario').IsNull then
                              iDiario := global_inicio + 1
                          else
                              iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

                          if lEfectivo then
                          begin
                              dAvanceAnterior := 0;
                              dAvance := 0 ;
                              if ActividadesIguales.FieldValues['dCantidad'] > 0 then
                              begin
                                  AvanceMaximo.Active := False;
                                  AvanceMaximo.SQL.Clear;
                                  AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                                        'sContrato = :contrato and dIdFecha < :fecha And sNumeroOrden = :orden and ' +
                                        'sWbs = :wbs and sNumeroActividad = :Actividad ' +
                                        'Group By sContrato');
                                  AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                                  AvanceMaximo.Params.ParamByName('Contrato').Value := Global_Contrato;
                                  AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                                  AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                                  AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                                  AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                                  AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                                  AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                                  AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                                  AvanceMaximo.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
                                  AvanceMaximo.Open;
                                  if AvanceMaximo.RecordCount > 0 then
                                      dAvanceAnterior := AvanceMaximo.FieldValues['Avance'];

                                  AvanceMaximo.Active := False;
                                  AvanceMaximo.SQL.Clear;
                                  AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                                        'sContrato = :contrato and dIdFecha = :fecha and sIdTurno <= :Turno And ' +
                                        'sNumeroOrden = :orden and sWbs = :wbs and sNumeroActividad = :Actividad ' +
                                        'Group By sContrato');
                                  AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                                  AvanceMaximo.Params.ParamByName('Contrato').Value := Global_Contrato;
                                  AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                                  AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                                  AvanceMaximo.Params.ParamByName('turno').DataType := ftString;
                                  AvanceMaximo.Params.ParamByName('turno').Value := global_turno_reporte;
                                  AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                                  AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                                  AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                                  AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                                  AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                                  AvanceMaximo.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
                                  AvanceMaximo.Open;

                                  if AvanceMaximo.RecordCount > 0 then
                                      dAvanceAnterior := dAvanceAnterior + AvanceMaximo.FieldValues['Avance'];

                                  if Connection.configuracion.FieldValues['sAvanceBitacora'] = 'Volumen' then
                                  begin
                                      if (dAvanceReal.Value <> 0) and (dAvanceReal.Visible = True) then      //LoboAzul27
                                         dAvance := dAvanceReal.Value
                                      else  {Aqui aplicamos el calculoo que aplican para revision que es sumar lo instalado + cant actual - }
                                      begin
                                          // Ajsute realizado por rangel para no modificar el asunto de los avances de la OT-05}
                                          //dAvance := (100 / dCantidadOrden) * tdCantidad.Value;  // 22 Febrero de 2010
                                          if dCantidadOrden > 0 then
                                          begin
                                            {dAvance := ((100 / dCantidadOrden) * (tdCantidad.Value + dInstaladoOrden1));
                                            dAvance := dAvance - dAvanceAnterior;}
                                            dAvance := (tdCantidad.Value / dCantidadOrden) * 100;
                                            dAvance := xRound(dAvance,4);
                                          end;
                                      end;
                                      {-----------------------------------------}
                                      dError := (dInstaladoOrden1 + tdCantidad.Value) - dCantidadOrden;
                                      if (dError >= 0) then
                                          dAvance := 100 - dAvanceAnterior;

                                      // Verificar el 100%
                                      if dAvanceAnterior + dAvance > 100 then
                                        dAvance := 100 - dAvanceAnterior;
                                  end
                                  else
                                  if (dAvanceAnterior + dAvance) >= 100 then
                                  begin
                                    tdCantidad.Value := dCantidadOrden - dInstaladoOrden1;
                                    dAvance := 100 - dAvanceAnterior
                                  end;
                              end;
                          end;
                          try
                              {Guardamos los datos en la bitacora de actividades...}
                              connection.zCommand.Active := False;
                              connection.zCommand.SQL.Clear;
                              connection.zCommand.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, sIdDepartamento, ' +
                                  ' sNumeroOrden, sWbs, sNumeroActividad, sIdTipoMovimiento, sHoraInicio, sHoraFinal, dAvance, dCantidad, mDescripcion, mNotas, sIsometrico,dCantidadAjuste,lImprime, lCancelada) ' +
                                  ' VALUES (:contrato, :fecha, :diario, :turno, :depto, :orden, :Wbs, :actividad, :tipo, :inicio, :final, :avance, :cantidad, :descripcion, :notas, :isometrico,:Ajuste,:imprime, :cancela)');
                              Connection.zCommand.Params.ParamByName('contrato').DataType    := ftString;
                              Connection.zCommand.Params.ParamByName('contrato').value       := Global_Contrato;
                              Connection.zCommand.Params.ParamByName('fecha').DataType       := ftDate;
                              Connection.zCommand.Params.ParamByName('fecha').value          := tdIdFecha.Date;
                              Connection.zCommand.Params.ParamByName('diario').DataType      := ftInteger;
                              Connection.zCommand.Params.ParamByName('diario').value         := iDiario;
                              Connection.zCommand.Params.ParamByName('turno').DataType       := ftString;
                              Connection.zCommand.Params.ParamByName('turno').value          := global_turno_reporte;
                              Connection.zCommand.Params.ParamByName('depto').DataType       := ftString;
                              Connection.zCommand.Params.ParamByName('depto').value          := global_depto;
                              Connection.zCommand.Params.ParamByName('orden').DataType       := ftString;
                              Connection.zCommand.Params.ParamByName('orden').value          := tsNumeroOrden.KeyValue;
                              Connection.zCommand.Params.ParamByName('wbs').DataType         := ftString;
                              Connection.zCommand.Params.ParamByName('wbs').value            := sWbsFormulario;
                              Connection.zCommand.Params.ParamByName('actividad').DataType   := ftString;
                              Connection.zCommand.Params.ParamByName('actividad').value      := tsNumeroActividad.Text;
                              Connection.zCommand.Params.ParamByName('tipo').DataType        := ftString;
                              Connection.zCommand.Params.ParamByName('tipo').value           := sTiempoEfectivo;
                              Connection.zCommand.Params.ParamByName('avance').DataType      := ftFloat;
                              Connection.zCommand.Params.ParamByName('avance').value         := dAvance;
                              Connection.zCommand.Params.ParamByName('cantidad').DataType    := ftFloat;
                              Connection.zCommand.Params.ParamByName('cantidad').value       := tdCantidad.Value;
                              Connection.zCommand.Params.ParamByName('inicio').DataType      := ftString;
                              Connection.zCommand.Params.ParamByName('inicio').value         := sHoraInicio;
                              Connection.zCommand.Params.ParamByName('final').DataType       := ftString;
                              Connection.zCommand.Params.ParamByName('final').value          := sHoraFinal;
                              Connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                              Connection.zCommand.Params.ParamByName('descripcion').value    := tmDescripcion.Text;
                              Connection.zCommand.Params.ParamByName('notas').DataType       := ftMemo;
                              Connection.zCommand.Params.ParamByName('notas').value          := tmNotas.Text;
                              Connection.zCommand.Params.ParamByName('Isometrico').DataType  := ftString;
                              Connection.zCommand.Params.ParamByName('Isometrico').value     := '' ;
                              Connection.zCommand.Params.ParamByName('Ajuste').DataType      := ftFloat;
                              Connection.zCommand.Params.ParamByName('Ajuste').Value         := dAvance;
                              Connection.zCommand.Params.ParamByName('Imprime').DataType     := ftString;
                              if chkImprime.Checked then
                                 Connection.zCommand.Params.ParamByName('Imprime').value     := 'Si'
                              else
                                 Connection.zCommand.Params.ParamByName('Imprime').value     := 'No';
                              Connection.zCommand.Params.ParamByName('Cancela').DataType     := ftString;
                              if chkCancelada.Checked then
                                 Connection.zCommand.Params.ParamByName('Cancela').value     := 'Si'
                              else
                                 Connection.zCommand.Params.ParamByName('Cancela').value     := 'No';
                              connection.zCommand.ExecSQL;

                              {Registra movimiento en kardex del sistema..}
                              lKardex     := true;
                              sWbsKardex  := sWbsFormulario;

                              //soad Funcion para Regenerar el Avance de la Partida..
                              if TiposdeMovimiento.FieldValues['sClasificacion'] <> 'Notas' then
                              begin
                                  {Revisamos si la partida fue Ajustada para llegar a un avance determinado.. Si tiene ajuste se regenera solo al cargar cantidad..}
                                   Q_BuscaAvance.Active := False;
                                   Q_BuscaAvance.SQL.Clear;
                                   Q_BuscaAvance.SQL.Add('select sum(dCantidadAjuste) as Ajuste from bitacoradeactividades where sContrato =:Contrato '+
                                                         'and sNumeroOrden =:Orden and sNumeroActividad =:Actividad and sWbs =:Wbs group by sContrato');
                                   Q_BuscaAvance.ParamByName('Contrato').AsString  := global_contrato;
                                   Q_BuscaAvance.ParamByName('Orden').AsString     := tsNumeroOrden.KeyValue;
                                   Q_BuscaAvance.ParamByName('Actividad').AsString := tsNumeroActividad.Text;
                                   Q_BuscaAvance.ParamByName('Wbs').AsString       := sWbsFormulario;
                                   Q_BuscaAvance.Open;

                                   if Q_BuscaAvance.RecordCount > 0 then
                                   begin
                                       try
                                         if Q_BuscaAvance.FieldValues['Ajuste'] = 0 then
                                      //      RegeneraPartida('Actividad', tsNumeroOrden.KeyValue, sWbsFormulario, tsNumeroActividad.Text, ActividadesIguales.FieldValues['dCantidad']);
                                       except
                                         on e : exception do begin
                                            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al Regenerar Partida al salvar el registro', 0);
                                         end;
                                       end;
                                   end;
                              end;

                              if lEfectivo then
                                  if fnActualizaAcumuladosOrden('', sWbsFormulario, tsNumeroActividad.Text,dCantidadOrden, dInstaladoOrden, dExcedenteOrden, tdCantidad.Value) then
                                      if fnActualizaAcumuladosContrato('', tsNumeroActividad.Text, dCantidadAnexo, dInstaladoAnexo, dExcedenteAnexo, tdCantidad.Value) then
                                      else
                                            MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + tsNumeroActividad.Text + ', notificar al administrador del sistema', mtWarning, [mbOk], 0)
                                  else
                                      MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + sWbsFormulario + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);
                          except
                          on e:exception do
                             begin
                               lKardex := false;
                               UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al actualizar la bitacora de actividades', 0);
                             end;
                          end;
                      end;
                 end
          end ;

          // Este procedimiento se debe ejecutar solamente si el el botón que llamó a este procedimiento era el EDIT
          {Actualizacion de personal y equipo con el idDiario Anterior }
          if EraEdit and (iDiario <> iIdDiarioOld) then
            ActualizaIdDiario(global_contrato, tdIdFecha.Date, iDiario, iIdDiarioOld);
  end
  else
  begin
      if ( tsHoraInicio.Text = '  :  ' ) or ( tsHoraFinal.Text = '  :  ' ) then
      begin
          ShowMessage( 'Los horarios no deben estar vacios!!' );
          tsHoraInicio.SetFocus;
      end
      else
          if tsHoraInicio.Text > tsHoraFinal.Text then
          begin
              ShowMessage( 'La hora de inicio es menor que la hora final!!' );
              tsHoraInicio.SetFocus;
          end
          else
          begin
              sHoraInicio := tsHoraInicio.Text;
              sHoraFinal := tsHoraFinal.Text;
              try
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET sHoraInicio = :inicio, sHoraFinal = :final, mDescripcion = :descripcion, sIsometrico = :Isometrico, lImprime=:Imprime ' +
                      'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario');
                  Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                  Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  Connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
                  Connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                  Connection.zCommand.Params.ParamByName('diario').value := QryBitacora.FieldValues['iIdDiario'];
                  Connection.zCommand.Params.ParamByName('inicio').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('inicio').value := sHoraInicio;
                  Connection.zCommand.Params.ParamByName('final').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('final').value := sHoraFinal;
                  Connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                  Connection.zCommand.Params.ParamByName('descripcion').value := tmDescripcion.Text;
                  Connection.zCommand.Params.ParamByName('Isometrico').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('Isometrico').value := '';

                   if chkImprime.Checked then
                    Connection.zCommand.Params.ParamByName('Imprime').value     := 'Si'
                   else
                    Connection.zCommand.Params.ParamByName('Imprime').value     := 'No';



                  connection.zCommand.ExecSQL;

                  {Asignamos movieintos a kardex del sistema..}
                  lKardex     := true;
                  sWbsKardex  := QryBitacora.FieldByName('sWbs').AsString;
                  DecodeDate(tdIdFecha.Date, myYear, myMonth, myDay);
                  fechaKardex := inttostr(myDay) + '/' + inttostr(myMonth) + '/' + inttostr(myYear);
              except
                  on e : exception do begin
                      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al actualizar el registro', 0);
                  end;
              end
          end;
  end;

  {Registrar la operacion en el kardex}
  if lKardex then
  begin
      if sWbsKardex = '' then
          opcKardex := opcKardex + ' Comentario'
      else
          opcKardex := opcKardex + ' Partida ' + sWbsKardex;
      try
          Kardex('Reporte Diario', opcKardex, fechaKardex, 'Fecha', tsNumeroOrden.Text, '', '' );
      except
          on e : exception do begin
              UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al registrar actualizacion de registro en kardex', 0);
          end;
      end;
  end;
  {--------------kardex---------------}

  SavePlace := Grid_Bitacora.DataSource.DataSet.GetBookmark;
  QryBitacora.Active := False;
  QryBitacora.Open;
  try
    Grid_Bitacora.DataSource.DataSet.GotoBookmark(SavePlace);
  except
  else
    Grid_Bitacora.DataSource.DataSet.FreeBookmark(SavePlace);
  end;

  dAvanceReal.Visible   := False;
  dAvanceReal.Left      := 165;
  dAvanceReal.Width     := 25;
  Q_GuardaDatos.Destroy;

  tsNumeroActividad.ReadOnly  := True;
  tsIdtipoMovimiento.ReadOnly := True;
  tdCantidad.ReadOnly         := True;
  tmDescripcion.ReadOnly      := True;
  tsHoraInicio.ReadOnly       := True;
  tsHoraFinal.ReadOnly        := True;
  tmNotas.ReadOnly            := True;
  tmNotas.Enabled             := True;
  chkImprime.Checked          := True;

  Insertar1.Enabled           := True;
  Editar1.Enabled             := True;
  Registrar1.Enabled          := False;
  Can1.Enabled                := False;
  Eliminar1.Enabled           := True;
  Refresh1.Enabled            := True;
  Salir1.Enabled              := True;
  ActividadesIguales.Active   := False;
  // Solo mandar llamar este evento se si están agregando partidas
  if EraEdit then
    frmBarra1.btnCancelClick(Sender)
  else
    frmBarra1.btnPostClick(Sender);
  BotonPermiso.permisosBotones(frmBarra1);

  tsIdTipoMovimiento.Enabled := true;
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnCancelClick(Sender: TObject);
begin
   if pdPaquete.Left = 0 then  //no hacer nada si se esta eligiendo la lista de pertidas
     exit;

  tsNumeroActividad.ReadOnly  := True;
  tsIdtipoMovimiento.ReadOnly := True;
  //tsPuntosInspeccion.Enabled := False;
  tdCantidad.ReadOnly         := True;
  tmDescripcion.ReadOnly      := True;
  tsHoraInicio.ReadOnly       := True ;
  tsHoraFinal.ReadOnly        := True ;

  dAvanceReal.Visible := False;
  dAvanceReal.Left    := 165;
  dAvanceReal.Width   := 25;
  global_Editor       := '';

  tsNumeroActividad.KeyValue := '';
  tmDescripcion.Text         := '';
  tdCantidad.Value           := 0;
  tsHoraInicio.Text          := '00:00' ;
  tsHoraFinal.Text           := '00:00' ;
  frmBarra1.btnCancelClick(Sender);

  Insertar1.Enabled          := True;
  Editar1.Enabled            := True;
  Registrar1.Enabled         := False;
  Can1.Enabled               := False;
  Eliminar1.Enabled          := True;
  Refresh1.Enabled           := True;
  Salir1.Enabled             := True;
  ActividadesIguales.Active  := False;
  desactivapop(popupprincipal);
  BotonPermiso.permisosBotones(frmBarra1);
  tsIdTipoMovimiento.Enabled := true;
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnRefreshClick(Sender: TObject);
var
  qryPuntos: tZReadOnlyQuery;
begin
  qryPuntos := tzReadOnlyQuery.Create(Self);
  qryPuntos.Connection := connection.zConnection;
  qryPuntos.Active := False;
  qryPuntos.SQL.Clear;
  qryPuntos.SQL.Add('select sIsometrico from puntosdeinspeccion where sContrato = :Contrato And sNumeroOrden = :Orden Order By sIsometrico');
  qryPuntos.Params.ParamByName('Contrato').DataType := ftString;
  qryPuntos.Params.ParamByName('Contrato').Value := global_contrato;
  qryPuntos.Params.ParamByName('Orden').DataType := ftString;
  if global_orden <> '' then
    qryPuntos.Params.ParamByName('Orden').Value := global_orden
  else
    qryPuntos.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
  qryPuntos.Open;
 // tsPuntosInspeccion.Items.Clear;
//  while not qryPuntos.Eof do
//  begin
//    tsPuntosInspeccion.Items.Add(qryPuntos.FieldValues['sIsometrico']);
//    qryPuntos.Next
//  end;
  qryPuntos.Destroy;

  QryBitacora.Active := False;
  QryBitacora.Open;

  connection.configuracion.refresh;

  ordenesdetrabajo.Active := False;
  ordenesdetrabajo.Open;

  TiposdeMovimiento.Active := False;
  TiposdeMovimiento.Open;

end;



procedure TfrmBitacoraDepartamental_2.frmBarra1btnDeleteClick(Sender: TObject);
var
  lBorra: Boolean;
begin
try
  lBorra := True;
  if tsNumeroOrden.Text <> '' then
  begin
    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('contrato').Value := global_contrato;
    ReporteDiario.Params.ParamByName('turno').DataType := ftString;
    ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    ReporteDiario.Open;
    if ReporteDiario.RecordCount > 0 then
      if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
      begin
        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
        lBorra := False;
      end
  end;

  if lBorra then
    if (QryBitacora.RecordCount > 0) and (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      if QryBitacora.FieldValues['lAlcance'] = 'No' then
      begin
        if MessageDlg('Desea eliminar la actividad y todo el personal y equipo asignado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          if QryBitacora.FieldValues['dCantidad'] > 0 then
          begin
            connection.qryBusca.Active := False;
            connection.qryBusca.SQL.Clear;
            connection.qryBusca.SQL.Add('select dCantidad, dInstalado, dExcedente from actividadesxorden where sContrato = :Contrato and sIdConvenio = :Convenio and ' +
              'sNumeroOrden = :Orden and sWbs = :Wbs And sNumeroActividad = :Actividad');
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
            if convenio_reporte = '' then
              Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
            else
              Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
            Connection.qryBusca.Params.ParamByName('Orden').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
            Connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Wbs').Value := QryBitacora.FieldValues['sWbs'];
            Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Actividad').Value := QryBitacora.FieldValues['sNumeroActividad'];
            connection.qryBusca.Open;
            if connection.qryBusca.RecordCount > 0 then
            begin
              if not fnActualizaAcumuladosOrden('Eliminar', QryBitacora.FieldValues['sWbs'], QryBitacora.FieldValues['sNumeroActividad'],
                Connection.qryBusca.FieldValues['dCantidad'], Connection.qryBusca.FieldValues['dInstalado'],
                Connection.qryBusca.FieldValues['dExcedente'], QryBitacora.FieldValues['dCantidad']) then
                MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + QryBitacora.FieldValues['sWbs'] + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);
            end
            else
              MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + QryBitacora.FieldValues['sWbs'] + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);


            connection.qryBusca.Active := False;
            connection.qryBusca.SQL.Clear;
            connection.qryBusca.SQL.Add('select dCantidadAnexo, dInstalado, dExcedente from actividadesxanexo where sContrato = :Contrato and ' +
              'sIdConvenio = :Convenio And sNumeroActividad = :Actividad');
            Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
            Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
            if convenio_reporte = '' then
              Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
            else
              Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
            Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
            Connection.qryBusca.Params.ParamByName('Actividad').Value := QryBitacora.FieldValues['sNumeroActividad'];
            connection.qryBusca.Open;
            if connection.qryBusca.RecordCount > 0 then
            begin
              if not fnActualizaAcumuladosContrato('Eliminar', QryBitacora.FieldValues['sNumeroActividad'],
                Connection.qryBusca.FieldValues['dCantidadAnexo'], Connection.qryBusca.FieldValues['dInstalado'],
                Connection.qryBusca.FieldValues['dExcedente'], QryBitacora.FieldValues['dCantidad']) then
                MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + QryBitacora.FieldValues['sWbs'] + ', notificar al administrador del sistema', mtWarning, [mbOk], 0);
            end
            else
              MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + QryBitacora.FieldValues['sWbs'] + ', notificar al administrador del sistema', mtWarning, [mbOk], 0);
          end;

          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Delete from bitacoradepersonal where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
          connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('diario').Value := QryBitacora.FieldValues['iIdDiario'];
          connection.zCommand.ExecSQL();

          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Delete from bitacoradeequipos where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
          connection.zCommand.Params.ParamByName('Contrato').Value := Global_Contrato;
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Fecha').DataType := ftDate;
          connection.zCommand.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
          connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('diario').Value := QryBitacora.FieldValues['iIdDiario'];
          connection.zCommand.ExecSQL;

          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('DELETE FROM comentariosxanexo WHERE sContrato = :contrato and ' +
            ' sNumeroOrden=:Orden and ' +
            ' sIdConvenio=:Convenio and ' +
            ' sIdTurno=:Turno and ' +
            ' sNumeroActividad=:Actividad and ' +
            ' dIdFecha =:fecha and iIdDiario =:diario');
          Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
          Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
          Connection.zCommand.Params.ParamByName('Orden').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Orden').value := global_orden;
          Connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Convenio').value := convenio_reporte;
          Connection.zCommand.Params.ParamByName('Turno').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Turno').value := global_turno_reporte;
          Connection.zCommand.Params.ParamByName('Actividad').DataType := ftString;
          Connection.zCommand.Params.ParamByName('Actividad').value :=  QryBitacora.FieldValues['sNumeroActividad'];          
          Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
          Connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
          Connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
          Connection.zCommand.Params.ParamByName('diario').value := QryBitacora.FieldValues['iIdDiario'];
          connection.zCommand.ExecSQL;

          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('DELETE FROM bitacoradeactividades WHERE sContrato = :contrato and ' +
            'dIdFecha = :fecha and iIdDiario = :diario');
          Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
          Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
          Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
          Connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
          Connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
          Connection.zCommand.Params.ParamByName('diario').value := QryBitacora.FieldValues['iIdDiario'];
          connection.zCommand.ExecSQL;

          {Registramos movimiento en Kardex del sistema..}
          sWbsKardex := QryBitacora.FieldByName('sWbs').AsString;
          DecodeDate(tdIdFecha.Date, myYear, myMonth, myDay);
          fechaKardex := inttostr(myDay) + '/' + inttostr(myMonth) + '/' + inttostr(myYear);
          if sWbsKardex = '' then
              opcKardex := 'Borra Comentario'
          else
              opcKardex := 'Borra Partida ' + sWbsKardex;

          Kardex('Reporte Diario', opcKardex, fechaKardex, 'Fecha', tsNumeroOrden.Text, '', '' );
          {--------------- kardex -------------------------}

          SavePlace := Grid_Bitacora.DataSource.DataSet.GetBookmark;
          QryBitacora.Active := False;
          QryBitacora.Open;
          try
            Grid_Bitacora.DataSource.DataSet.GotoBookmark(SavePlace);
          except
          else
            Grid_Bitacora.DataSource.DataSet.FreeBookmark(SavePlace);
          end;

          Grid_Bitacora.SetFocus
        end
      end
      else
        MessageDlg('La partida no puede eliminarse, elimine los alcances registrados a la partida en el dia para poder realizar la eliminación.', mtInformation, [mbOk], 0)
    else
      MessageDlg('No existe registro a eliminar o talves el registro pertenece a otro turno, verifique su información.', mtInformation, [mbOk], 0);
except
  on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al eliminar registro', 0);
  end;
end;
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnExitClick(Sender: TObject);
begin
  global_Editor   := '';
  frmBarra1.btnExitClick(Sender);
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  close



end;

procedure TfrmBitacoraDepartamental_2.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Grid_Bitacora.SetFocus
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
      if grid_iguales.Enabled then
        grid_iguales.SetFocus
      else
        if tdCantidad.Visible = True then
           tdCantidad.SetFocus

end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividadMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if QryPartidasEfectivas.RecordCount > 0 then
     tsNumeroActividad.Hint := ' Paquete  ['+QryPartidasEfectivas.FieldValues['sWbsAnterior']+ ']';
end;

procedure TfrmBitacoraDepartamental_2.tsIdTipoMovimientoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
      tdCantidad.SetFocus
end;

procedure TfrmBitacoraDepartamental_2.tdAvanceKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tmDescripcion.SetFocus
end;

function TfrmBitacoraDepartamental_2.lExisteActividadAnexo(sActividad: string): Boolean;
begin
  if TiposdeMovimiento.FieldValues['sClasificacion'] = 'Notas' then
  begin
    sDescripcion := '';
    lExisteActividadAnexo := True
  end
  else
  begin
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('select mDescripcion from actividadesxanexo a where a.sContrato = :Contrato ' +
      'And sIdConvenio = :Convenio And a.sNumeroActividad = :Actividad');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
    if convenio_reporte = '' then
      Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio
    else
      Connection.qryBusca.Params.ParamByName('Convenio').Value := convenio_reporte;
    Connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Actividad').Value := sActividad;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      sDescripcion := Connection.qryBusca.FieldValues['mDescripcion'];
      lExisteActividadAnexo := True
    end
    else
    begin
      sDescripcion := '';
      lExisteActividadAnexo := False
    end
  end
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividadExit(Sender: TObject);
begin
  tdPonderado.Value  := 0;
  tdCantidad.Value   := 0;
  tmDescripcion.Text := '';

  lblTipoConcepto.Caption := '' ;
  LabelCantidad.Caption   := '' ;

  if (frmBarra1.btnCancel.Enabled = True) and (not tsNumeroActividad.ReadOnly) then
    if tsNumeroActividad.Text <> '' then
    begin
      pdPaquete.Caption := '< < Seleccione un Paquete > >';
      pdPaquete.Hint    := '< < Seleccione un Paquete > >';

      {Se buscan todas las actiivdades que tengan el mismo nombre...}
      ActividadesIguales.Active := False;
      ActividadesIguales.Params.ParamByName('contrato').DataType  := ftString;
      ActividadesIguales.Params.ParamByName('contrato').Value     := global_contrato;
      ActividadesIguales.Params.ParamByName('convenio').DataType  := ftString;
      if convenio_reporte = '' then
         ActividadesIguales.Params.ParamByName('Convenio').Value  := global_convenio
      else
         ActividadesIguales.Params.ParamByName('Convenio').Value  := convenio_reporte;
      ActividadesIguales.Params.ParamByName('orden').DataType     := ftString;
      ActividadesIguales.Params.ParamByName('orden').Value        := tsNumeroOrden.KeyValue;
      ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
      ActividadesIguales.Params.ParamByName('actividad').Value    := tsNumeroActividad.Text;
      ActividadesIguales.ParamByName('turno').AsString            := global_turno;
      ActividadesIguales.ParamByName('fecha').AsDate              := tdIdFecha.Date;
      ActividadesIguales.Open;

      tdPonderado.Value := ActividadesIguales.FieldValues['dPonderado'];

      {Se buscan los paquetes anteriores a la actividad...}
      Paquete.Active := False;
      Paquete.Params.ParamByName('contrato').DataType := ftString;
      Paquete.Params.ParamByName('contrato').Value    := global_contrato;
      Paquete.Params.ParamByName('Convenio').DataType := ftString ;
      if convenio_reporte = '' then
         Paquete.Params.ParamByName('Convenio').Value := global_convenio
      else
         Paquete.Params.ParamByName('Convenio').Value := convenio_reporte;
      Paquete.Params.ParamByName('orden').DataType    := ftString;
      Paquete.Params.ParamByName('orden').Value       := tsNumeroOrden.KeyValue;
      Paquete.Params.ParamByName('Wbs').DataType      := ftString;
      Paquete.Params.ParamByName('Wbs').Value         := ActividadesIguales.FieldValues['sWbsAnterior'];
      Paquete.Open;
      if Paquete.RecordCount > 0 then
      begin
          pdPaquete.Caption := Paquete.FieldValues['mDescripcion'];
          pdPaquete.Hint    := Paquete.FieldValues['mDescripcion'];
      end
      else
      begin
          pdPaquete.Caption := '< < Seleccione un Paquete > >';
          pdPaquete.Hint    := '< < Seleccione un Paquete > >';
      end ;
      //**************************BRITO 30/05/11********************************
      pdPaquete.Left := 0;
      pdPaquete.Width := 891;
      pdPaquete.Height := 265;
      grid_iguales.Height := 260;
      grid_iguales.Enabled := true;
      posSelecc:=-1;
      grid_iguales.SetFocus;
      //**************************BRITO 30/05/11********************************
    end
    else
    begin
      ActividadesIguales.Active := False;
      ActividadesIguales.Params.ParamByName('contrato').DataType  := ftString;
      ActividadesIguales.Params.ParamByName('contrato').Value     := global_contrato;
      ActividadesIguales.Params.ParamByName('convenio').DataType  := ftString;
      if convenio_reporte = '' then
        ActividadesIguales.Params.ParamByName('Convenio').Value   := global_convenio
      else
        ActividadesIguales.Params.ParamByName('Convenio').Value   := convenio_reporte;
      ActividadesIguales.Params.ParamByName('orden').DataType     := ftString;
      ActividadesIguales.Params.ParamByName('orden').Value        := tsNumeroOrden.KeyValue;
      ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
      ActividadesIguales.Params.ParamByName('actividad').Value    := '';
      ActividadesIguales.ParamByName('turno').AsString            := global_turno;
      ActividadesIguales.ParamByName('fecha').AsDate              := tdIdFecha.Date;
      ActividadesIguales.Open;

      Paquete.Active := False;
      Paquete.Params.ParamByName('contrato').DataType := ftString;
      Paquete.Params.ParamByName('contrato').Value    := global_contrato;
      Paquete.Params.ParamByName('Convenio').DataType := ftString ;
      if convenio_reporte = '' then
         Paquete.Params.ParamByName('Convenio').Value := global_convenio
      else
         Paquete.Params.ParamByName('Convenio').Value := convenio_reporte;
      Paquete.Params.ParamByName('orden').DataType    := ftString;
      Paquete.Params.ParamByName('orden').Value       := tsNumeroOrden.KeyValue;
      Paquete.Params.ParamByName('Wbs').DataType      := ftString;
      Paquete.Params.ParamByName('Wbs').Value         := '';
      Paquete.Open;

      pdPaquete.Caption := '< < Seleccione un Paquete > >';
      pdPaquete.Hint := '< < Seleccione un Paquete > >';
    end;
  tsNumeroActividad.Color := global_color_salida
end;

procedure TfrmBitacoraDepartamental_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryBitacora.Cancel ;
  action := cafree ;
  BotonPermiso.free;
end;

procedure TfrmBitacoraDepartamental_2.FormCreate(Sender: TObject);
begin
  sAnexosBarco:='';
end;

procedure TfrmBitacoraDepartamental_2.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure TfrmBitacoraDepartamental_2.Label4DblClick(Sender: TObject);
begin
    if frmBarra1.btnAdd.Enabled = False then
    begin
        tsHoraInicio.Text := ReporteDiario.FieldValues['sOperacionInicio'] ;
        tsHoraFinal.Text := ReporteDiario.FieldValues['sOperacionFinal']  ;
    end
end;

procedure TfrmBitacoraDepartamental_2.LabelCantidadClick(Sender: TObject);
var
    Q_ValidaUsuario : TZReadOnlyQuery;
begin
     Q_ValidaUsuario := TZReadOnlyQuery.Create(self);
     Q_VAlidaUsuario.Connection := connection.zConnection;

     Q_VAlidaUsuario.Active;
     Q_VAlidaUsuario.SQL.Clear;
     Q_ValidaUsuario.SQL.Add('select sIdUsuario from usuarios where sIdUsuario =:Usuario and lRealizaAjustes = "Si" ');
     Q_ValidaUsuario.ParamByName('Usuario').AsString := global_Usuario;
     Q_ValidaUsuario.Open;

     if Q_ValidaUsuario.RecordCount > 0 then
     begin
        dAvanceReal.Visible := True;
        dAvanceReal.Left    := 100;
        dAvanceReal.Width   := 90;
     end
     else
         messagedlg('Usuario no Autorizado', mtInformation, [mbOk], 0);
     Q_ValidaUsuario.Destroy;
end;

procedure TfrmBitacoraDepartamental_2.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure TfrmBitacoraDepartamental_2.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure TfrmBitacoraDepartamental_2.RevisarOrtografia2Click(Sender: TObject);
var
  WindowName: string;
  WindowHandle: Cardinal;
  WordApp, Document, Selection: OleVariant;
  exito:boolean;
  actualizar:boolean;
  registro:tbookmark;
begin
     registro:=qrybitacora.GetBookmark;
     actualizar:=false;
     if (OpcButton <> 'New') and (OpcButton <> 'Edit') then
     begin
          if MessageDlgpos('Para Corregir el comentario se necesita editar el registro'+#13+#13+'¿Desea Actualizar el comentario?',
          mtConfirmation, [mbYes, mbNo], 0,self.Left+round(self.Width/4)+10,self.Top+round(self.Height/2)) = mrYes then
                        actualizar:=true
          else exit;
     end;


     if(length(trim(self.tmDescripcion.Text))>0) then
     begin
          exito:=true;
          try
             WordApp := CreateOleObject('Word.Application');
          EXCEPT
                exito:=false;
          end;
          if exito  then
          begin
               Document := WordApp.Documents.Add;
               Selection := WordApp.Selection;
               Selection.TypeText(tmDescripcion.Text);
               WindowName := WordApp.ActiveDocument.FullName + ' - ' + WordApp.Application.Caption;
               WindowHandle := 0;
               WindowHandle := FindWindow(nil, pChar(WindowName));
               SetWindowRgn(WindowHandle, CreateRectRgn(0,0,0,0), true);
               if wordapp.Options.IgnoreUppercase=true then
                  wordapp.Options.IgnoreUppercase := false;
               WordApp.ActiveDocument.CheckGrammar;

               Selection.WholeStory;
               Selection.Copy;
               if actualizar then
                frmBarra1btnEditClick(sender);
               tmDescripcion.Text := Clipboard.AsText;
               wordapp.quit(false);
               if actualizar then
                  frmBarra1btnPostClick(sender);
          end else
              MessageDlg('Para Verificar la ortografia necesita tener instalado Microsoft Word xp o versiones posteriores de office word.', mtWarning, [mbOk], 0);

     end;
     if actualizar then
     begin
          try
             qrybitacora.GotoBookmark(registro);
          except
                qrybitacora.FreeBookmark(registro);
          end;
          self.Grid_Bitacora.SetFocus;
     end;

end;

procedure TfrmBitacoraDepartamental_2.btnMayusClick(Sender: TObject);
begin
     tmDescripcion.Text :=  UpperCase(tmDescripcion.Text);
end;

procedure TfrmBitacoraDepartamental_2.CmdCantidadClick(Sender: TObject);
var
   i : integer;
   Q_Volumen : TZReadOnlyQuery;
begin
   if frmBarra1.btnPost.Enabled then  //Estado de edicion
   Begin

     Q_Volumen := TZReadOnlyQuery.Create(self);
     Q_Volumen.Connection := connection.zConnection;

     rxAvances.Active := True;
     rxAvances.EmptyTable;

     Q_Volumen.Active := False;
     Q_Volumen.SQL.Clear;
     Q_Volumen.SQL.Add('select '+
                       '(select sum(b.dCantidad) from bitacoradeactividades b where b.sContrato = :contrato and b.sNumeroOrden = :orden ' +
                       'and b.dIdFecha < :fecha and b.sIdTurno = :turno and b.sWbs =:Wbs and b.sNumeroActividad =:Actividad) as dCantidadAnterior, '+
                       'ba.dCantidad as dCantidadActual, ao.dCantidad, ao.sMedida from actividadesxorden ao '+
                       'left join bitacoradeactividades ba on (ao.sContrato = ba.sContrato and ao.sNumeroOrden = ba.sNumeroOrden ' +
                       'and ao.sWbs = ba.sWbs and ao.sNumeroActividad = ba.sNumeroActividad and ba.dIdFecha =:Fecha and ba.sIdTurno =:Turno '+
                       'and ao.sIdConvenio =:Convenio and ao.sTipoActividad = "Actividad") ' +
                       'where ao.sContrato =:Contrato and ao.sidconvenio=:convenio and ao.sNumeroOrden =:Orden and ao.sWbs =:Wbs and ao.sNumeroActividad =:Actividad ');
     Q_Volumen.ParamByName('Contrato').AsString   := global_contrato;
     if convenio_reporte = '' then
      Q_Volumen.ParamByName('Convenio').AsString   := global_convenio
     else
      Q_Volumen.ParamByName('Convenio').AsString   :=  convenio_reporte;
     Q_Volumen.ParamByName('Fecha').AsDate        := tdIdFecha.Date;
     Q_Volumen.ParamByName('Turno').AsString      := global_turno;
     Q_Volumen.ParamByName('Orden').AsString      := tsNumeroOrden.KeyValue;
     if OpcButton = 'New' then
     begin
       Q_Volumen.ParamByName('Wbs').AsString        := ActividadesIguales.FieldByname('sWbs').asstring;
       Q_Volumen.ParamByName('Actividad').AsString  := ActividadesIguales.FieldByname('sNumeroActividad').asstring;
     end
     else
     begin
       Q_Volumen.ParamByName('Wbs').AsString        := QryBitacora.FieldByname('sWbs').asstring;
       Q_Volumen.ParamByName('Actividad').AsString  := QryBitacora.FieldByname('sNumeroActividad').asstring;
     end;
     Q_Volumen.Open;

     if Q_Volumen.RecordCount > 0 then
     begin
         rxAvances.Append;
         rxAvances.FieldByName('sMedida').AsString           := Q_Volumen.FieldByName('sMedida').AsString;
         rxAvances.FieldByName('dCantidad').AsFloat          := Q_Volumen.FieldByName('dCantidad').AsFloat;
         rxAvances.FieldByName('dCantidadAnterior').AsFloat  := Q_Volumen.FieldByName('dCantidadAnterior').AsFloat;
//         rxAvances.FieldByName('dCantidadActual').AsFloat    := Q_Volumen.FieldByName('dCantidadActual').AsFloat;
         rxAvances.FieldByName('dCantidadActual').AsFloat    := tdCantidad.Value;
         rxAvances.FieldByName('dCantidadAcumulada').AsFloat := Q_Volumen.FieldByName('dCantidadAnterior').AsFloat + tdCantidad.Value;//Q_Volumen.FieldByName('dCantidadActual').AsFloat;
(*         if OpcButton = 'New' then //Si es insercion, Acumular la cantidad que se esta insertando ahora
         begin
           rxAvances.FieldByName('dCantidadActual').AsFloat := rxAvances.FieldByName('dCantidadActual').AsFloat + tdCantidad.Value;
           rxAvances.FieldByName('dCantidadAcumulada').AsFloat := rxAvances.FieldByName('dCantidadAcumulada').AsFloat + tdCantidad.Value;
         end;
*)
         rxAvances.Post;

         //i := pos('TOTAL A INSTALAR: ', tmNotas.Text);
         //if i > 0 then
         //   tmNotas.Text := copy(tmNotas.Text, 0, i -1)
        // else
        // begin
             tmNotas.Lines.Add('');
             tmNotas.Lines.Add('');
        // end;

         tmNotas.Lines.Add              ('TOTAL A EJECUTAR: '+ FloatToStr(rxAvances.FieldByName('dCantidad').AsFloat) + ' ' +
                                        rxAvances.FieldByName('sMedida').AsString + '       CANTIDAD EJECUTADA: ' +
                                        FloatToStr(rxAvances.FieldByName('dCantidadActual').AsFloat) + ' ' +
                                        rxAvances.FieldByName('sMedida').AsString );

          tmNotas.Lines.Add             ('  ACUM. ANTERIOR: ' +
                                        FloatToStr(rxAvances.FieldByName('dCantidadAnterior').AsFloat) + ' ' +
                                        rxAvances.FieldByName('sMedida').AsString + '       ACUM. ACTUAL: '+
                                        FloatToStr(rxAvances.FieldByName('dCantidadActual').AsFloat +
                                        rxAvances.FieldByName('dCantidadAnterior').AsFloat) +
                                        ' ' + rxAvances.FieldByName('sMedida').AsString);
     end
     else
         messageDLG('La Partida no se Encuentra Reportada!', mtInformation, [mbOk],0);

   End;
end;

procedure TfrmBitacoraDepartamental_2.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;


procedure TfrmBitacoraDepartamental_2.Eliminar1Click(Sender: TObject);
begin
  frmBarra1.btnDelete.Click
end;

procedure TfrmBitacoraDepartamental_2.Refresh1Click(Sender: TObject);
begin
  frmBarra1.btnRefresh.Click
end;

procedure TfrmBitacoraDepartamental_2.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;


procedure TfrmBitacoraDepartamental_2.tsNumeroOrdenExit(Sender: TObject);
var
  ListItem: TListItem;
  qryGrupos: tZReadOnlyQuery;
  qryPuntos: tZReadOnlyQuery;
begin
  frmBarra1.btnCancel.Click;
  if tsNumeroOrden.Text <> '' then
  begin
    qryPuntos := tzReadOnlyQuery.Create(Self);
    qryPuntos.Connection := connection.zConnection;
    qryPuntos.Active := False;
    qryPuntos.SQL.Clear;
    qryPuntos.SQL.Add('select sIsometrico from puntosdeinspeccion where sContrato = :Contrato And sNumeroOrden = :Orden Order By sIsometrico');
    qryPuntos.Params.ParamByName('Contrato').DataType := ftString;
    qryPuntos.Params.ParamByName('Contrato').Value := global_contrato;
    qryPuntos.Params.ParamByName('Orden').DataType := ftString;
    if global_orden <> '' then
      qryPuntos.Params.ParamByName('Orden').Value := global_orden
    else
      qryPuntos.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    qryPuntos.Open;
   // tsPuntosInspeccion.Items.Clear;
   // while not qryPuntos.Eof do
   // begin
   //   tsPuntosInspeccion.Items.Add(qryPuntos.FieldValues['sIsometrico']);
   //   qryPuntos.Next
   // end;
    qryPuntos.Destroy;

    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('contrato').Value := global_contrato;
    ReporteDiario.Params.ParamByName('turno').DataType := ftString;
    ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    ReporteDiario.Open;
    if ReporteDiario.RecordCount > 0 then
      if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);

         // Limpia valores
    tdPonderado.Value := 0;
    tdCantidad.Value := 0;
    tmDescripcion.Text := '';
    tsHoraInicio.Text := '00:00' ;
    tsHoraFinal.Text := '00:00' ;

         // Termina Limpia

    QryPartidasEfectivas.Active := False;
    QryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('contrato').Value := global_contrato;
    QryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      QryPartidasEfectivas.Params.ParamByName('convenio').Value := global_convenio
    else
      QryPartidasEfectivas.Params.ParamByName('Convenio').Value := convenio_reporte;
    QryPartidasEfectivas.Params.ParamByName('Orden').DataType := ftString;
    QryPartidasEfectivas.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
     
    QryPartidasEfectivas.Open;

    QryBitacora.Active := False;
    QryBitacora.Params.ParamByName('contrato').DataType := ftString;
    QryBitacora.Params.ParamByName('contrato').Value := global_contrato;
    QryBitacora.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      QryBitacora.Params.ParamByName('Convenio').Value := global_convenio
    else
      QryBitacora.Params.ParamByName('Convenio').Value := convenio_reporte;
    QryBitacora.Params.ParamByName('orden').DataType := ftString;
    QryBitacora.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
    QryBitacora.Params.ParamByName('fecha').DataType := ftDate;
    QryBitacora.Params.ParamByName('fecha').Value := tdIdFecha.Date;
    QryBitacora.Params.ParamByName('Alcance').DataType := ftString;
    QryBitacora.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
    QryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
    QryBitacora.Params.ParamByName('Ordenado').Value := 'iIdDiario';
    QryBitacora.Open;

    qryGrupos := tzReadOnlyQuery.Create(Self);
    qryGrupos.Connection := connection.zConnection;
    qryGrupos.Active := False;
    qryGrupos.Params.ParamByName('Contrato').DataType := ftString;
    qryGrupos.Params.ParamByName('Contrato').Value := global_contrato;
    qryGrupos.Params.ParamByName('Orden').DataType := ftString;
    qryGrupos.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    qryGrupos.Open;
    Panel_Grupos.Items.Clear;
    if qryGrupos.RecordCount > 0 then
      with Panel_Grupos do
      begin
        qryGrupos.First;
        while not qryGrupos.Eof do
        begin
          ListItem := Items.Add;
          ListItem.Caption := qryGrupos.FieldValues['sGrupo'];
          ListItem.ImageIndex := 0;
          qryGrupos.Next
        end
      end;
    qryGrupos.Destroy;

  end;

  tsNumeroOrden.Color := global_color_salida
end;

procedure TfrmBitacoraDepartamental_2.tdCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    if tmnotas.Enabled then
      tmnotas.SetFocus
    else
      tmDescripcion.SetFocus;
end;

procedure TfrmBitacoraDepartamental_2.grid_bitacoraEnter(Sender: TObject);
begin
  if frmbarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;

  if QryPartidasEfectivas.Active then
  begin
    imgNotas.Visible := False;
    if tsNumeroOrden.Text <> '' then
    begin
      if QryBitacora.RecordCount > 0 then
      begin
       // tsPuntosInspeccion.ItemIndex := tsPuntosInspeccion.Items.IndexOf(QryBitacora.fieldByName('sIsometrico').AsString);
        tsIdTipoMovimiento.KeyValue := QryBitacora.FieldValues['sIdTipoMovimiento'];
        tsNumeroActividad.KeyValue := QryBitacora.FieldValues['sNumeroActividad'];
        tmDescripcion.Text := QryBitacora.FieldValues['mDescripcion'];
        tsHoraInicio.Text := QryBitacora.FieldValues['sHoraInicio'];
        tsHoraFinal.Text := QryBitacora.FieldValues['sHoraFinal'];
        { if(Trim(QryBitacora.FieldByname('sNumeroActividad').AsString)='1 C-13') or
        (trim(QryBitacora.FieldByname('sNumeroActividad').AsString)='2 C-13') or
        (trim(QryBitacora.FieldByname('sNumeroActividad').AsString)='3 C-13') or
        (trim(QryBitacora.FieldByname('sNumeroActividad').AsString)='2 C-37') or
        (trim(QryBitacora.FieldByname('sNumeroActividad').AsString)='3 C-37') or
        (Trim(QryBitacora.FieldByname('sNumeroActividad').AsString)='1 C-37') }
        if UpperCase(Trim(QryBitacora.FieldByName('sMedida').AsString))='DIA' then
       // then
          tdCantidad.Text := FormatFLoat('0.000000', QryBitacora.FieldValues['dCantidad'])
         else
            tdCantidad.Text := FormatFLoat('0.0000', QryBitacora.FieldValues['dCantidad'])

      end
      else
      begin
       // tsPuntosInspeccion.Text := '';
        tsIdTipoMovimiento.KeyValue := '';
        tsNumeroActividad.KeyValue := '';
        tmDescripcion.Text := '';
        tsHoraInicio.Text := '00:00' ;
        tsHoraFinal.Text := '00:00';
        tdCantidad.Value := 0;
      end;

      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
        imgNotas.Visible := True;

      ActividadesIguales.Active := False;
      ActividadesIguales.Params.ParamByName('contrato').DataType := ftString;
      ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato;
      ActividadesIguales.Params.ParamByName('convenio').DataType := ftString;
      if convenio_reporte = '' then
        ActividadesIguales.Params.ParamByName('Convenio').Value := global_convenio
      else
        ActividadesIguales.Params.ParamByName('Convenio').Value   := convenio_reporte;
      ActividadesIguales.Params.ParamByName('orden').DataType     := ftString;
      ActividadesIguales.Params.ParamByName('orden').Value        := tsNumeroOrden.KeyValue;
      ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
      ActividadesIguales.Params.ParamByName('actividad').Value    := tsNumeroActividad.Text;
      ActividadesIguales.ParamByName('turno').AsString            := global_turno;
      ActividadesIguales.ParamByName('fecha').AsDate              := tdIdFecha.Date;
      ActividadesIguales.Open;

      if ActividadesIguales.RecordCount > 0 then
         tdPonderado.Value := ActividadesIguales.FieldValues['dPonderado']
      else
         tdPonderado.Value := 0;

      Grid_Iguales.Enabled := False;
      tdPonderado.Value := 0;

      Paquete.Active := False;
      Paquete.Params.ParamByName('contrato').DataType := ftString;
      Paquete.Params.ParamByName('contrato').Value    := global_contrato;
      Paquete.Params.ParamByName('Convenio').DataType := ftString ;
      if convenio_reporte = '' then
         Paquete.Params.ParamByName('Convenio').Value := global_convenio
      else
         Paquete.Params.ParamByName('Convenio').Value := convenio_reporte;
      Paquete.Params.ParamByName('orden').DataType    := ftString;
      Paquete.Params.ParamByName('orden').Value       := tsNumeroOrden.KeyValue;
      Paquete.Params.ParamByName('wbs').DataType      := ftString;
      if QryBitacora.RecordCount > 0 then
        Paquete.Params.ParamByName('wbs').Value       := ActividadesIguales.FieldValues['sWbs']
      else
        Paquete.Params.ParamByName('wbs').Value       := '';

      Paquete.Open;
      if Paquete.RecordCount > 0 then
      begin
        pdPaquete.Caption := Paquete.FieldValues['mDescripcion'];
        pdPaquete.Hint    := Paquete.FieldValues['mDescripcion'];
      end
      else
      begin
        pdPaquete.Caption := '< < Seleccione un Paquete > >';
        pdPaquete.Hint    := '< < Seleccione un Paquete > >';
      end;
    end;
  end;
end;

procedure TfrmBitacoraDepartamental_2.Panel_GruposClick(Sender: TObject);
var
  sHoraInicio, sHoraFinal, sTiempoEfectivo: string;
  iDiario: Integer;
  dAvance, dAvanceAnterior: Double;

  dCantidadGrupo: Double;
  lContinua: Boolean;
  lFiltro: Boolean;
  Consolidado: Boolean;
begin
  lContinua := True;
  if Trim(tsNumeroOrden.Text) <> '' then
  begin
    ReporteDiario.Active := False;
    ReporteDiario.Params.ParamByName('contrato').DataType := ftString;
    ReporteDiario.Params.ParamByName('contrato').Value := global_contrato;
    ReporteDiario.Params.ParamByName('turno').DataType := ftString;
    ReporteDiario.Params.ParamByName('turno').Value := global_turno_reporte;
    ReporteDiario.Params.ParamByName('Fecha').DataType := ftDate;
    ReporteDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
    ReporteDiario.Params.ParamByName('Orden').DataType := ftString;
    ReporteDiario.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
    ReporteDiario.Open;
    if ReporteDiario.RecordCount > 0 then
    begin
      if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
      begin
        MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
        lContinua := False;
      end
    end;
    if (Panel_Grupos.ItemIndex >= 0) and lContinua then
      if Panel_Grupos.Items.Item[Panel_Grupos.ItemIndex].Caption <> '' then
      begin
        try
          dCantidadGrupo := rfnDecimal(InputBox('Inteligent', 'Introduzca el Cantidad de Grupos a Anexar a la QryBitacora?', '0'));
        except
          on e : exception do begin
            UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registro de Volumenes de Obra y Notas', 'Al hacer click en el panel lateral', 0);
          end;
        end;
        if dCantidadGrupo > 0 then
        begin
          Connection.qryBusca2.Active := False;
          Connection.qryBusca2.SQL.Clear;
          Connection.qryBusca2.SQL.Add('Select sWbs, sNumeroActividad, dCantidad From actividadesxgrupo Where sContrato = :Contrato And sNumeroOrden = :Orden And sGrupo = :Grupo');
          Connection.qryBusca2.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.qryBusca2.Params.ParamByName('Orden').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
          Connection.qryBusca2.Params.ParamByName('Grupo').DataType := ftString;
          Connection.qryBusca2.Params.ParamByName('Grupo').Value := Panel_Grupos.Items.Item[Panel_Grupos.ItemIndex].Caption;
          Connection.qryBusca2.Open;
          if Connection.qryBusca2.RecordCount > 0 then
            if OpcButton <> '' then
              frmBarra1.btnCancel.Click;

          Connection.qryBusca2.First;
          while not Connection.qryBusca2.Eof do
          begin
            dAvance := 0;
            tdCantidad.Value := 0;
            dAvanceAnterior := 0;
            lFiltro := True;
            sTiempoEfectivo := connection.configuracion.FieldValues['sTipoOperacion'];
            sWbsFormulario := Connection.qryBusca2.FieldValues['sWbs'];
            tdCantidad.Value := Connection.qryBusca2.FieldValues['dCantidad'] * dCantidadGrupo;
            sHoraInicio := '00:00';
            sHoraFinal := '00:00';

            lFiltro := fnValidaPartidaAnexo(Connection.qryBusca2.FieldValues['sNumeroActividad']);
            if lFiltro then
              lFiltro := fnValidaPartidaOrden(sWbsFormulario, Connection.qryBusca2.FieldValues['sNumeroActividad']);

            if lFiltro then
            begin
                     // Aqui .. primero busco si existe la partida en el dia ... Orden, Paquete, PArtida, si existe las une ...
              Consolidado := False;
              QryExistePartida.Active := False;
              QryExistePartida.Params.ParamByName('Contrato').DataType := ftString;
              QryExistePartida.Params.ParamByName('Contrato').Value := global_contrato;
              QryExistePartida.Params.ParamByName('Fecha').DataType := ftDate;
              QryExistePartida.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
              QryExistePartida.Params.ParamByName('Orden').DataType := ftString;
              QryExistePartida.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
              QryExistePartida.Params.ParamByName('Wbs').DataType := ftString;
              QryExistePartida.Params.ParamByName('Wbs').Value := sWbsFormulario;
              QryExistePartida.Params.ParamByName('Actividad').DataType := ftString;
              QryExistePartida.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'];
              QryExistePartida.Params.ParamByName('Turno').DataType := ftString;
              QryExistePartida.Params.ParamByName('Turno').Value := global_turno_reporte;
              QryExistePartida.Params.ParamByName('Tipo').DataType := ftString;
              QryExistePartida.Params.ParamByName('Tipo').Value := sTiempoEfectivo;
              QryExistePartida.Params.ParamByName('Isometrico').DataType := ftString;
              QryExistePartida.Params.ParamByName('Isometrico').Value := '';
              QryExistePartida.Open;
              if QryExistePartida.RecordCount > 0 then
                if MessageDlg('Se encontro una coincidencia del Paquete-Partida en la bitacora, ¿Desea consolidar el movimiento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                  Consolidado := True
                else
                  Consolidado := False;

              if Consolidado then
              begin
                AvanceMaximo.Active := False;
                AvanceMaximo.SQL.Clear;
                AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                  'sContrato = :contrato and dIdFecha < :fecha And sNumeroOrden = :orden and ' +
                  'sWbs = :wbs and sNumeroActividad = :Actividad ' +
                  'Group By sContrato');
                AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Contrato').Value := Global_Contrato;
                AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'];
                AvanceMaximo.Open;
                if AvanceMaximo.RecordCount > 0 then
                  dAvanceAnterior := AvanceMaximo.FieldValues['Avance'];


                AvanceMaximo.Active := False;
                AvanceMaximo.SQL.Clear;
                AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                  'sContrato = :contrato and dIdFecha = :fecha and sIdTurno < :Turno And ' +
                  'sNumeroOrden = :orden and sWbs = :wbs and sNumeroActividad = :Actividad ' +
                  'Group By sContrato');
                AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Contrato').Value := Global_Contrato;
                AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                AvanceMaximo.Params.ParamByName('turno').DataType := ftString;
                AvanceMaximo.Params.ParamByName('turno').Value := global_turno_reporte;
                AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'];
                AvanceMaximo.Open;
                if AvanceMaximo.RecordCount > 0 then
                  dAvanceAnterior := dAvanceAnterior + AvanceMaximo.FieldValues['Avance'];

                dAvance := (100 / dCantidadOrden) * tdCantidad.Value;
                if dAvanceAnterior = 100 then
                  dAvance := QryExistePartida.FieldValues['dAvance']
                else if (dInstaladoOrden1 + tdCantidad.Value) >= dCantidadOrden then
                  dAvance := 100 - dAvanceAnterior
                else
                  dAvance := dAvance + QryExistePartida.FieldValues['dAvance'];

                try
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacoradeactividades SET dCantidad = :Cantidad, dAvance = :Avance ' +
                    'where sContrato = :contrato And dIdFecha = :fecha And iIdDiario = :diario');
                  Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                  Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  Connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
                  Connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                  Connection.zCommand.Params.ParamByName('diario').value := QryExistePartida.FieldValues['iIdDiario'];
                  Connection.zCommand.Params.ParamByName('Avance').DataType := ftFloat;
                  Connection.zCommand.Params.ParamByName('Avance').value := dAvance;
                  Connection.zCommand.Params.ParamByName('Cantidad').DataType := ftFloat;
                  Connection.zCommand.Params.ParamByName('Cantidad').value := (tdCantidad.Value + QryExistePartida.FieldValues['dCantidad']);
                  connection.zCommand.ExecSQL;

                  if fnActualizaAcumuladosOrden('', sWbsFormulario, Connection.qryBusca2.FieldValues['sNumeroActividad'],
                    dCantidadOrden, dInstaladoOrden, dExcedenteOrden, tdCantidad.Value) then
                    if fnActualizaAcumuladosContrato('', Connection.qryBusca2.FieldValues['sNumeroActividad'],
                      dCantidadAnexo, dInstaladoAnexo, dExcedenteAnexo, tdCantidad.Value) then
                    else
                      MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + Connection.qryBusca2.FieldValues['sNumeroActividad'] + ', notificar al administrador del sistema', mtWarning, [mbOk], 0)
                  else
                    MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + sWbsFormulario + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);

                except
                  MessageDlg('Ocurrio un error al actualizar la bitacora de actividades, notificar al administrador del sistema', mtWarning, [mbOk], 0);
                end
              end
              else
              begin
                if Pos('TIERRA', tsNumeroOrden.KeyValue) > 0 then
                  global_inicio := global_inicio + 8000;

                MaximoDiario.Active := False;
                MaximoDiario.Params.ParamByName('Contrato').DataType := ftString;
                MaximoDiario.Params.ParamByName('Contrato').Value := Global_Contrato;
                MaximoDiario.Params.ParamByName('Fecha').DataType := ftDate;
                MaximoDiario.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                MaximoDiario.Params.ParamByName('Inicio').DataType := ftInteger;
                MaximoDiario.Params.ParamByName('Inicio').Value := global_inicio;
                MaximoDiario.Params.ParamByName('Final').DataType := ftInteger;
                MaximoDiario.Params.ParamByName('Final').Value := global_final;
                MaximoDiario.Open;
                if MaximoDiario.FieldByName('TotalDiario').IsNull then
                  iDiario := global_inicio + 1
                else
                  iDiario := MaximoDiario.FieldValues['TotalDiario'] + 1;

                AvanceMaximo.Active := False;
                AvanceMaximo.SQL.Clear;
                AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                  'sContrato = :contrato and dIdFecha < :fecha And sNumeroOrden = :orden and ' +
                  'sWbs = :wbs and sNumeroActividad = :Actividad ' +
                  'Group By sContrato');
                AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Contrato').Value := Global_Contrato;
                AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'];
                AvanceMaximo.Open;
                if AvanceMaximo.RecordCount > 0 then
                  dAvanceAnterior := AvanceMaximo.FieldValues['Avance'];

                AvanceMaximo.Active := False;
                AvanceMaximo.SQL.Clear;
                AvanceMaximo.SQL.Add('SELECT Sum(dAvance) as Avance FROM bitacoradeactividades where ' +
                  'sContrato = :contrato and dIdFecha = :fecha and sIdTurno <= :Turno And ' +
                  'sNumeroOrden = :orden and sWbs = :wbs and sNumeroActividad = :Actividad ' +
                  'Group By sContrato');
                AvanceMaximo.Params.ParamByName('Contrato').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Contrato').Value := Global_Contrato;
                AvanceMaximo.Params.ParamByName('Fecha').DataType := ftDate;
                AvanceMaximo.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
                AvanceMaximo.Params.ParamByName('turno').DataType := ftString;
                AvanceMaximo.Params.ParamByName('turno').Value := global_turno_reporte;
                AvanceMaximo.Params.ParamByName('orden').DataType := ftString;
                AvanceMaximo.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
                AvanceMaximo.Params.ParamByName('wbs').DataType := ftString;
                AvanceMaximo.Params.ParamByName('wbs').Value := sWbsFormulario;
                AvanceMaximo.Params.ParamByName('Actividad').DataType := ftString;
                AvanceMaximo.Params.ParamByName('Actividad').Value := Connection.qryBusca2.FieldValues['sNumeroActividad'];
                AvanceMaximo.Open;
                if AvanceMaximo.RecordCount > 0 then
                  dAvanceAnterior := dAvanceAnterior + AvanceMaximo.FieldValues['Avance'];

                dAvance := (100 / dCantidadOrden) * tdCantidad.Value;
                if (dInstaladoOrden + tdCantidad.Value) >= dCantidadOrden then
                  dAvance := 100 - dAvanceAnterior;

                try
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno, sIdDepartamento, ' +
                    ' sNumeroOrden, sWbs, sNumeroActividad, sIdTipoMovimiento, sHoraInicio, sHoraFinal, dAvance, dCantidad , mDescripcion ) ' +
                    ' VALUES (:contrato, :fecha, :diario, :turno, :depto, :orden, :wbs, :actividad, :tipo, :inicio, :final, :avance, :cantidad, :descripcion)');
                  Connection.zCommand.Params.ParamByName('contrato').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('contrato').value := Global_Contrato;
                  Connection.zCommand.Params.ParamByName('fecha').DataType := ftDate;
                  Connection.zCommand.Params.ParamByName('fecha').value := tdIdFecha.Date;
                  Connection.zCommand.Params.ParamByName('diario').DataType := ftInteger;
                  Connection.zCommand.Params.ParamByName('diario').value := iDiario;
                  Connection.zCommand.Params.ParamByName('turno').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('turno').value := global_turno_reporte;
                  Connection.zCommand.Params.ParamByName('depto').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('depto').value := global_depto;
                  Connection.zCommand.Params.ParamByName('orden').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('orden').value := tsNumeroOrden.KeyValue;
                  Connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('wbs').value := sWbsFormulario;
                  Connection.zCommand.Params.ParamByName('actividad').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('actividad').value := Connection.qryBusca2.FieldValues['sNumeroActividad'];
                  Connection.zCommand.Params.ParamByName('tipo').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('tipo').value := sTiempoEfectivo;
                  Connection.zCommand.Params.ParamByName('avance').DataType := ftFloat;
                  Connection.zCommand.Params.ParamByName('avance').value := dAvance;
                  Connection.zCommand.Params.ParamByName('cantidad').DataType := ftFloat;
                  Connection.zCommand.Params.ParamByName('cantidad').value := tdCantidad.Value;
                  Connection.zCommand.Params.ParamByName('inicio').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('inicio').value := sHoraInicio;
                  Connection.zCommand.Params.ParamByName('final').DataType := ftString;
                  Connection.zCommand.Params.ParamByName('final').value := sHoraFinal;
                  Connection.zCommand.Params.ParamByName('descripcion').DataType := ftMemo;
                  Connection.zCommand.Params.ParamByName('descripcion').value := sDescripcion;
                  connection.zCommand.ExecSQL;

                  if fnActualizaAcumuladosOrden('', sWbsFormulario, Connection.qryBusca2.FieldValues['sNumeroActividad'],
                    dCantidadOrden, dInstaladoOrden, dExcedenteOrden, tdCantidad.Value) then
                    if fnActualizaAcumuladosContrato('', Connection.qryBusca2.FieldValues['sNumeroActividad'],
                      dCantidadAnexo, dInstaladoAnexo, dExcedenteAnexo, tdCantidad.Value) then
                    else
                      MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + Connection.qryBusca2.FieldValues['sNumeroActividad'] + ', notificar al administrador del sistema', mtWarning, [mbOk], 0)
                  else
                    MessageDlg('ERROR: Ocurrio un error al actualizar en concepto. ' + sWbsFormulario + ' de la orden de trabajo seleccionada, notificar al administrador del sistema', mtWarning, [mbOk], 0);
                except
                  MessageDlg('Ocurrio un error al actualizar la bitacora de actividades, notificar al administrador del sistema', mtWarning, [mbOk], 0);
                end

              end
            end;
            Connection.qryBusca2.Next
          end;
            // Termime de Actualizar
          QryBitacora.Active := False;
          QryBitacora.Open;

          Insertar1.Enabled := True;
          Editar1.Enabled := True;
          Registrar1.Enabled := False;
          Can1.Enabled := False;
          Eliminar1.Enabled := True;
          Refresh1.Enabled := True;
          Salir1.Enabled := True;
          ActividadesIguales.Active := False;
          Grid_Bitacora.SetFocus
            // Termino de meter el grupo ...
        end
      end
  end
end;

procedure TfrmBitacoraDepartamental_2.tdIdFechaEnter(Sender: TObject);
begin
  frmBarra1.btnCancel.Click;
  tdIdFecha.Color := global_color_entrada;
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroOrdenEnter(Sender: TObject);
begin
  frmBarra1.btnCancel.Click;
  tsNumeroOrden.Color := global_color_entrada;
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividadEnter(
  Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_entrada;
  imgNotas.Visible := False;
end;

procedure TfrmBitacoraDepartamental_2.tsHoraFinalEnter(Sender: TObject);
begin
    tsHoraFinal.Color := global_color_entrada
end;

procedure TfrmBitacoraDepartamental_2.tsHoraFinalExit(Sender: TObject);
begin
    tsHoraFinal.Color := global_color_salida
end;

procedure TfrmBitacoraDepartamental_2.tsHoraFinalKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        if tdCantidad.Enabled then
             tdCantidad.SetFocus
        Else
             tmDescripcion.SetFocus

end;

procedure TfrmBitacoraDepartamental_2.tsHoraInicioEnter(Sender: TObject);
begin
    tsHoraInicio.Color := global_color_entrada
end;

procedure TfrmBitacoraDepartamental_2.tsHoraInicioExit(Sender: TObject);
begin
    tsHoraInicio.Color := global_color_salida
end;

procedure TfrmBitacoraDepartamental_2.tsHoraInicioKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        tsHoraFinal.SetFocus
end;

procedure TfrmBitacoraDepartamental_2.tsIdTipoMovimientoEnter(
  Sender: TObject);
begin
  tsIdTipoMovimiento.Color := global_color_entrada
end;

procedure TfrmBitacoraDepartamental_2.tsIdTipoMovimientoExit(
  Sender: TObject);
begin
  if tiposdemovimiento.FieldValues['sIdTipoMovimiento'] = 'N' then
     tmNotas.Enabled := False;
  tsIdTipoMovimiento.Color := global_color_salida ;
end;

procedure TfrmBitacoraDepartamental_2.tdCantidadEnter(Sender: TObject);
begin
   tdCantidad.Color := global_color_entrada;
end;

procedure TfrmBitacoraDepartamental_2.tdCantidadExit(Sender: TObject);
begin
  tdCantidad.Color := global_color_salida
end;

procedure TfrmBitacoraDepartamental_2.tmDescripcionDblClick(Sender: TObject);
begin
  if global_Editor <>'Nuevo' then
  begin
     sTituloVentana := ' DESCRIPCION PARTIDA / NOTAS GENERALES';
      frmEditorBitacoraDepartamental.ShowModal ;
  end;
end;

procedure TfrmBitacoraDepartamental_2.tmDescripcionEnter(Sender: TObject);
begin
  tmDescripcion.Color := global_color_entrada;
end;

procedure TfrmBitacoraDepartamental_2.tmDescripcionExit(Sender: TObject);

begin
  tmDescripcion.Color := global_color_salida
end;

procedure TfrmBitacoraDepartamental_2.tmNotasDblClick(Sender: TObject);
begin
  if global_Editor <>'Nuevo' then
  begin
     sTituloVentana := ' NOTAS / COMENTARIOS POR PARTIDA';
     frmEditorBitacoraDepartamental.ShowModal;
  end;
end;

procedure TfrmBitacoraDepartamental_2.tmNotasEnter(Sender: TObject);
begin
      tmNotas.Color := global_color_entrada;
end;

procedure TfrmBitacoraDepartamental_2.tmNotasExit(Sender: TObject);
begin
    tmNotas.Color := global_color_salida;
end;

procedure TfrmBitacoraDepartamental_2.Imprimir1Click(Sender: TObject);
begin
  frmBarra1.btnPrinter.Click
end;


procedure TfrmBitacoraDepartamental_2.grid_igualesDblClick(Sender: TObject);
begin
  //**************************BRITO 30/05/11********************************
  if pdPaquete.Left = 0 then
  begin
    pdPaquete.Left := 377;
    pdPaquete.Width := 522;
    pdPaquete.Height := 126;
    grid_iguales.Height := 105;
    grid_iguales.Enabled := false;
     if tdCantidad.Enabled then
      tdCantidad.SetFocus
     Else
      tmDescripcion.SetFocus   ;

    //if UpperCase(Trim(ActividadesIguales.FieldByName('sAnexo').AsString))='C0' then
    if pos(UpperCase(Trim(ActividadesIguales.FieldByName('sAnexo').AsString)),sAnexosBarco)>0 then
      tdCantidad.DecimalPlaces := 6
    else
      tdCantidad.DecimalPlaces:=tmpDecimal;


  end;
  //**************************BRITO 30/05/11********************************
end;

procedure TfrmBitacoraDepartamental_2.grid_igualesGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dCantidad').AsFloat = (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dInstalado').AsFloat then
    Background := clGradientInactiveCaption
end;


procedure TfrmBitacoraDepartamental_2.grid_igualesKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 then
  begin
    Inc(NumEnters);
    if NumEnters=2 then
    begin
      if posSelecc=grid_iguales.DataSource.DataSet.RecNo then
      begin
        grid_igualesDblClick(Sender);
        NumEnters:=0;
        posSelecc:=-1;
      end
      else
      begin
        NumEnters:=1;
        posSelecc:=grid_iguales.DataSource.DataSet.RecNo;
      end;
    end
    else
      posSelecc:=grid_iguales.DataSource.DataSet.RecNo;

  end;
end;

procedure TfrmBitacoraDepartamental_2.grid_igualesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid2.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmBitacoraDepartamental_2.grid_igualesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid2.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmBitacoraDepartamental_2.grid_igualesTitleClick(Column: TColumn);
begin
 UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmBitacoraDepartamental_2.Grid_BitacoraGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
var x : integer;
begin
    If (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse Then
       If QryBitacora.RecordCount > 0 Then
       Begin
           AFont.Color := clBlack ;
           if i > 1 then
           begin
              for x := 1 to i - 1 do
              begin
                  if ListaPEQ[x] = QryBitacora.FieldValues['iIdDiario'] then
                  Begin
                      Afont.Style  := [fsBold,fsItalic] ;
                      Afont.Size   := 8 ;
                      AFont.Color  := clBlue ;
                  End;
              end;
           end;
        End;
end;

procedure TfrmBitacoraDepartamental_2.Grid_BitacoraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
UtGrid.dbGridMouseMoveCoord(x,y);
end;

procedure TfrmBitacoraDepartamental_2.Grid_BitacoraMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
UtGrid.DbGridMouseUp(Sender,Button,Shift,X, Y);
end;

procedure TfrmBitacoraDepartamental_2.Grid_BitacoraTitleBtnClick(Sender: TObject; ACol: Integer; Field: TField);
var
  sCampo: string;
begin
  sCampo := Field.FieldName;
  QryBitacora.Active := False;
  QryBitacora.Params.ParamByName('contrato').DataType := ftString;
  QryBitacora.Params.ParamByName('contrato').Value := global_contrato;
  QryBitacora.Params.ParamByName('convenio').DataType := ftString;
  if convenio_reporte = '' then
    QryBitacora.Params.ParamByName('convenio').Value := global_convenio
  else
    QryBitacora.Params.ParamByName('convenio').Value := convenio_reporte;
  QryBitacora.Params.ParamByName('orden').DataType := ftString;
  QryBitacora.Params.ParamByName('orden').Value := tsNumeroOrden.KeyValue;
  QryBitacora.Params.ParamByName('fecha').DataType := ftDate;
  QryBitacora.Params.ParamByName('fecha').Value := tdIdFecha.Date;
  QryBitacora.Params.ParamByName('Alcance').DataType := ftString;
  QryBitacora.Params.ParamByName('Alcance').Value := Connection.configuracion.FieldValues['sTipoAlcance'];
  QryBitacora.Params.ParamByName('Ordenado').DataType := ftString;
  QryBitacora.Params.ParamByName('Ordenado').Value := sCampo;
  QryBitacora.Open;
end;


procedure TfrmBitacoraDepartamental_2.Grid_BitacoraTitleClick(Column: TColumn);
begin
 UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmBitacoraDepartamental_2.TiposdeMovimientoAfterScroll(
  DataSet: TDataSet);
begin
  if TiposdeMovimiento.FieldValues['sClasificacion'] <> 'Tiempo en Operacion' then
  begin
    pdPaquete.Caption := '< < No aplica seleccion de paquetes > >';
    pdPaquete.Hint    := '< < No aplica seleccion de paquetes > >';
    tsNumeroActividad.Color := global_color_pantalla;
    tdCantidad.Color := global_color_pantalla;
    tsNumeroActividad.KeyValue := '';
    tsNumeroActividad.Enabled := False;
    tmDescripcion.Text := '' ;
    tsHoraInicio.Text := '00:00' ;
    tsHoraFinal.Text := '00:00' ;
    ActividadesIguales.Active := False;
    tdCantidad.Enabled := False;
  end
  else
  begin
    pdPaquete.Caption := '< < Seleccione un Paquete > >';
    pdPaquete.Hint    := '< < Seleccione un Paquete > >';
    tsNumeroActividad.Color := global_color_text;
    tdCantidad.Color := global_color_text;
    tsNumeroActividad.Enabled := True;
    tdCantidad.Enabled := True;
  end;
end;

procedure TfrmBitacoraDepartamental_2.ComentariosAdicionalesClick(
  Sender: TObject);
begin
  global_partida := QryBitacora.FieldValues['sNumeroActividad']; ;
  if (IntToStr(global_iIdDiario) <> '') and (global_partida <> '') then
  begin
    Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
    frmComentariosxAnexo.show;
  end
  else
    ShowMessage('No ha seleccionado alguna actividad !');
end;

procedure TfrmBitacoraDepartamental_2.MayusClick(
  Sender: TObject);
begin
      tmDescripcion.Text := UpperCase(tmDescripcion.Text);
      self.Editar1.Click;
end;

procedure TfrmBitacoraDepartamental_2.MinusClick(
  Sender: TObject);
begin
      tmDescripcion.Text := LowerCase(tmDescripcion.Text);
      self.Editar1.Click;
end;

procedure TfrmBitacoraDepartamental_2.tsNumeroActividadChange(
  Sender: TObject);
begin
   global_partida  := tsNumeroActividad.Text;
 
end;

procedure TfrmBitacoraDepartamental_2.imgNotasDblClick(Sender: TObject);
begin
  ComentariosAdicionales.Click
end;

procedure TfrmBitacoraDepartamental_2.ActividadesIgualesAfterScroll(
  DataSet: TDataSet);
begin
  if ActividadesIguales.State <> dsInactive then
  begin
    if ActividadesIguales.Active and (ActividadesIguales.RecordCount > 0) then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sWbsAnterior from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs and sTipoActividad ="Paquete" ');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('Convenio').AsString := global_convenio;
      connection.QryBusca.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
      connection.QryBusca.ParamByName('Wbs').AsString      := ActividadesIguales.FieldValues['sWbsAnterior'];
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        connection.QryBusca2.Active := False;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select sNumeroActividad, mDescripcion from actividadesxorden where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroOrden =:Orden and sWbs =:Wbs and sTipoActividad ="Paquete" ');
        connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca2.ParamByName('Convenio').AsString := global_convenio;
        connection.QryBusca2.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
        connection.QryBusca2.ParamByName('Wbs').AsString      := connection.QryBusca.FieldValues['sWbsAnterior'];
        connection.QryBusca2.Open;

        if connection.QryBusca2.RecordCount > 0 then
          mObra.Text := connection.QryBusca2.FieldValues['sNumeroActividad'] +' .- '+connection.QryBusca2.FieldValues['mDescripcion']
        else
          mObra.Text := 'Paquete Principal';
      end
      else
        mObra.Text := '';
    end
    else
      mObra.Text := '';

    if tsNumeroActividad.ReadOnly = False then
      if ActividadesIguales.RecordCount > 0 then
      begin
        if ( strPos( pchar('ACTIVIDAD') , pchar( ActividadesIguales.FieldByName('sMedida').AsString ) ) <> nil ) then
        begin
            lblTipoConcepto.Caption := 'Actividad del Programa' ;
            LabelCantidad.Caption := '% Avance'
        end
        Else
        begin
            lblTipoConcepto.Caption := 'Concepto de Anexo' ;
            LabelCantidad.Caption := 'Cantidad a Instalar'
        end;
        tmDescripcion.Text  := ActividadesIguales.FieldValues['mDescripcion'];
        Grid_Iguales.Hint   := ActividadesIguales.FieldValues['mDescripcion'];
        Paquete.Active := False;
        Paquete.Params.ParamByName('contrato').DataType := ftString;
        Paquete.Params.ParamByName('contrato').Value    := global_contrato;
        Paquete.Params.ParamByName('Convenio').DataType := ftString ;
        if convenio_reporte = '' then
           Paquete.Params.ParamByName('Convenio').Value := global_convenio
        else
           Paquete.Params.ParamByName('Convenio').Value := convenio_reporte;
        Paquete.Params.ParamByName('orden').DataType    := ftString;
        Paquete.Params.ParamByName('orden').Value       := tsNumeroOrden.Text;
        Paquete.Params.ParamByName('wbs').DataType      := ftString;
        Paquete.Params.ParamByName('wbs').Value         := ActividadesIguales.FieldValues['sWbsAnterior'];
        Paquete.Open;

        if Paquete.RecordCount > 0 then
        begin
          pdPaquete.Caption := Paquete.FieldValues['sNumeroActividad'] +' .- '+ Paquete.FieldValues['mDescripcion'];
          pdPaquete.Hint    := Paquete.FieldValues['sNumeroActividad'] +' .- '+ Paquete.FieldValues['mDescripcion']
        end
        else
        begin
          pdPaquete.Caption := '< < Seleccione un Paquete > >';
          pdPaquete.Hint    := '< < Seleccione un Paquete > >'
        end;
        tdPonderado.Value := ActividadesIguales.FieldValues['dPonderado'];
      end;
  end
  else
    mObra.Text := '';
end;

procedure TfrmBitacoraDepartamental_2.mnFichaTecnicaClick(Sender: TObject);
begin
  try
    if tsNumeroActividad.Text <> '' then
      procFichaTecnica(global_contrato, global_convenio, tsNumeroActividad.Text, frmBitacoraDepartamental_2);
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al actualizar el registro', 0);
    end;
  end;
end;

procedure TfrmBitacoraDepartamental_2.QryBitacoraCalcFields(
  DataSet: TDataSet);
begin
  try
    QryBitacoradTotalMN.Value := QryBitacoradCantidad.Value * QryBitacoradVentaMN.Value;
    if lCheckReporte() then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sDescripcion from turnos Where sContrato = :contrato and sIdTurno = :Turno');
      connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('turno').DataType := ftString;
      connection.QryBusca.Params.ParamByName('turno').Value := global_turno_reporte;
      connection.QryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then
        QryBitacorasTurno.Value := connection.QryBusca.FieldValues['sDescripcion']
      else
        QryBitacorasTurno.Value := 'Frente Unico'
    end
    else
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sDescripcion from ordenes_frentes Where sContrato = :contrato and sNumeroOrden = :Orden and sIdFrente = :Turno');
      connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('orden').DataType := ftString;
      connection.QryBusca.Params.ParamByName('orden').Value := tsNumeroOrden.Text;
      connection.QryBusca.Params.ParamByName('turno').DataType := ftString;
      connection.QryBusca.Params.ParamByName('turno').Value := global_turno_reporte;
      connection.QryBusca.Open;
      if connection.QryBusca.RecordCount > 0 then
        QryBitacorasTurno.Value := connection.QryBusca.FieldValues['sDescripcion']
      else
        QryBitacorasTurno.Value := 'Frente Unico'
    end
  except
     on e:exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al cambiar de registro', 0);
     end;
  end;
end;

procedure TfrmBitacoraDepartamental_2.QryBitacoraAfterScroll(
  DataSet: TDataSet);
begin
  if Abierto then
  begin
    imgNotas.Visible := False;
    mObra.Text := '';
    if QryBitacora.RecordCount > 0 then
    begin
      {Activar o no check box..}
      if QryBitacora.FieldValues['lImprime'] = 'Si' then
         chkImprime.Checked := True
      else
         chkImprime.Checked := False;

    if QryBitacora.FieldValues['lCancelada'] = 'Si' then
       chkCancelada.Checked := True
    else
       chkCancelada.Checked := False;

    // tsPuntosInspeccion.ItemIndex := tsPuntosInspeccion.Items.IndexOf(QryBitacora.fieldByName('sIsometrico').AsString);
    tsIdTipoMovimiento.KeyValue := QryBitacora.FieldValues['sIdTipoMovimiento'];
    tsNumeroActividad.KeyValue  := QryBitacora.FieldValues['sNumeroActividad'];

    tmNotas.Text       := QryBitacora.FieldValues['mNotas'];
    tmDescripcion.Text := QryBitacora.FieldValues['mDescripcion'];

    rxAvances.Active := True;
    rxAvances.EmptyTable;

   // tdCantidad.Text   := FormatFLoat('0.000000', QryBitacora.FieldValues['dCantidad']);

       {  if(Trim(QryBitacora.FieldByname('sNumeroActividad').AsString)='1 C-13') or
        (Trim(QryBitacora.FieldByname('sNumeroActividad').AsString)='2 C-13') or
        (Trim(QryBitacora.FieldByname('sNumeroActividad').AsString)='3 C-13') or
        (Trim(QryBitacora.FieldByname('sNumeroActividad').AsString)='1 C-37') or
        (Trim(QryBitacora.FieldByname('sNumeroActividad').AsString)='2 C-37') or
        (Trim(QryBitacora.FieldByname('sNumeroActividad').AsString)='3 C-37')  }
        //if UpperCase(Trim(QryBitacora.FieldByName('sAnexo').AsString))='C0' then
       // then
         if pos(UpperCase(Trim(QryBitacora.FieldByName('sAnexo').AsString)),sAnexosBarco)>0 then
          tdCantidad.Text := FormatFLoat('0.000000', QryBitacora.FieldValues['dCantidad'])
         else
            tdCantidad.Text := FormatFLoat('0.0000', QryBitacora.FieldValues['dCantidad']);






    tsHoraInicio.Text := QryBitacora.FieldValues['sHoraInicio'];
    tsHoraFinal.Text  := QryBitacora.FieldValues['sHoraFinal'];

    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select sContrato From comentariosxanexo Where sContrato = :Contrato And sNumeroActividad = :Actividad');
    Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.qryBusca.Params.ParamByName('actividad').DataType := ftString;
    Connection.qryBusca.Params.ParamByName('actividad').Value := tsNumeroActividad.Text;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
      imgNotas.Visible := True;

    ActividadesIguales.Active := False;
    ActividadesIguales.Params.ParamByName('contrato').DataType := ftString;
    ActividadesIguales.Params.ParamByName('contrato').Value := global_contrato;
    ActividadesIguales.Params.ParamByName('convenio').DataType := ftString;
    if convenio_reporte = '' then
      ActividadesIguales.Params.ParamByName('Convenio').Value := global_convenio
    else
      ActividadesIguales.Params.ParamByName('Convenio').Value   := convenio_reporte;
    ActividadesIguales.Params.ParamByName('orden').DataType     := ftString;
    ActividadesIguales.Params.ParamByName('orden').Value        := tsNumeroOrden.KeyValue;
    ActividadesIguales.Params.ParamByName('actividad').DataType := ftString;
    ActividadesIguales.Params.ParamByName('actividad').Value    := QryBitacora.FieldValues['sNumeroActividad'];
    ActividadesIguales.ParamByName('turno').AsString            := global_turno;
    ActividadesIguales.ParamByName('fecha').AsDate              := tdIdFecha.Date;
    //ActividadesIguales.ParamByName('wbs').AsString := QryPartidasEfectivas.FieldByName('swbs').AsString;
    ActividadesIguales.Open;
    ActividadesIguales.Locate('sWbs', QryBitacora.FieldValues['sWbs'], [loPartialKey]);
    Grid_Iguales.Enabled := False;
    if ActividadesIguales.RecordCount > 0 then
      tdPonderado.Value := ActividadesIguales.FieldValues['dPonderado']
    else
      tdPonderado.Value := 0;

    Paquete.Active := False;
    Paquete.Params.ParamByName('contrato').DataType   := ftString;
    Paquete.Params.ParamByName('contrato').Value      := global_contrato;
    Paquete.Params.ParamByName('Convenio').DataType   := ftString ;
      if convenio_reporte = '' then
         Paquete.Params.ParamByName('Convenio').Value := global_convenio
      else
         Paquete.Params.ParamByName('Convenio').Value := convenio_reporte;
    Paquete.Params.ParamByName('orden').DataType      := ftString;
    Paquete.Params.ParamByName('orden').Value         := tsNumeroOrden.KeyValue;
    Paquete.Params.ParamByName('wbs').DataType        := ftString;
    Paquete.Params.ParamByName('wbs').Value           := ActividadesIguales.FieldValues['sWbsAnterior'];
    Paquete.Open;

      if Paquete.RecordCount > 0 then
      begin
        pdPaquete.Caption := Paquete.FieldValues['sNumeroActividad'] +' .- '+Paquete.FieldValues['mDescripcion'];
        pdPaquete.Hint    := Paquete.FieldValues['sNumeroActividad'] +' .- '+Paquete.FieldValues['mDescripcion'];
      end
      else
      begin
        pdPaquete.Caption := '< < Seleccione un Paquete > >';
        pdPaquete.Hint := '< < Seleccione un Paquete > >';
      end;
    end;
  end;
end;

procedure TfrmBitacoraDepartamental_2.frmBarra1btnPrinterClick(
  Sender: TObject);
begin
  try
    procAnalisisFinanciero(global_contrato, tsNumeroOrden.Text, convenio_reporte, tdIdFecha.Date, tdIdFecha.Date, frmBitacoraDepartamental_2, rDiario.OnGETValue)
  except
    on e:exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Registros de Volumenes de Obra y Notas', 'Al actualizar la bitacora de actividades', 0);
    end;
  end;
end;

procedure TfrmBitacoraDepartamental_2.rDiarioGetValue(
  const VarName: string; var Value: Variant);
begin
  if CompareText(VarName, 'ORDEN') = 0 then
    Value := 'DE LA ORDEN DE TRABAJO ' + tsNumeroOrden.Text;

  if CompareText(VarName, 'FECHA_INICIO') = 0 then
    Value := tdIdFecha.Date;

  if CompareText(VarName, 'FECHA_FINAL') = 0 then
    Value := tdIdFecha.Date;

  If CompareText(VarName, 'SEMANA') = 0 then
     Value := WeekOfTheMonth(tdIdFecha.Date) ;

  If CompareText(VarName, 'DIAS_SEMANA') = 0 then
     Value := '1';

  If CompareText(VarName, 'MONEDA') = 0 then
     Value := 'M.N.' ;
end;



procedure TfrmBitacoraDepartamental_2.mnEliminaNotaClick(Sender: TObject);
begin
  if (ActiveControl is TMemo) then
    if frmBarra1.btnEdit.Enabled = False then
      tmDescripcion.Text := '';
end;

procedure TfrmBitacoraDepartamental_2.mnInsertaNotaClick(Sender: TObject);
begin
  if (ActiveControl is TMemo) then
    if frmBarra1.btnEdit.Enabled = False then
      if TiposdeMovimiento.FieldValues['sClasificacion'] = 'Tiempo en Operacion' then
      begin
        connection.QryBusca2.Active := False;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('select mDescripcion from actividadesxanexo where sContrato = :Contrato and sIdConvenio = :Convenio And ' +
          'sNumeroActividad = :Actividad');
        connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
        connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
        connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString;
        if convenio_reporte = '' then
          connection.QryBusca2.Params.ParamByName('Convenio').Value := global_convenio
        else
          connection.QryBusca2.Params.ParamByName('Convenio').Value := convenio_reporte;
        connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString;
        connection.QryBusca2.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
        connection.QryBusca2.Open;
        if connection.QryBusca2.RecordCount > 0 then
          sDescripcion := connection.QryBusca2.FieldValues['mDescripcion'];

        tmDescripcion.Text := tmDescripcion.Text + sDescripcion;
        tmDescripcion.SelStart := length(tmDescripcion.Text)
      end;
end;

procedure TfrmBitacoraDepartamental_2.mnNotaAntClick(Sender: TObject);
begin
   if (ActiveControl is TMemo) then
    if frmBarra1.btnEdit.Enabled = False then
    begin
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select mDescripcion from bitacoradeactividades where sContrato = :Contrato and dIdFecha < :fecha And ' +
        'sNumeroOrden = :Orden and sWbs = :wbs and sNumeroActividad = :Actividad Order By dIdFecha desc');
      connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
      connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
      connection.QryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
      connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
      connection.QryBusca2.Params.ParamByName('wbs').DataType := ftString;
      if ActividadesIguales.State <> dsInactive then
        connection.QryBusca2.Params.ParamByName('wbs').Value := ActividadesIguales.FieldValues['sWbs']
      else
        connection.QryBusca2.Params.ParamByName('wbs').Value := '';
      connection.QryBusca2.Params.ParamByName('Actividad').DataType := ftString;
      connection.QryBusca2.Params.ParamByName('Actividad').Value := tsNumeroActividad.Text;
      connection.QryBusca2.Open;
      if connection.QryBusca2.RecordCount > 0 then
      begin
        tmDescripcion.Text := '';
        sDescripcion := connection.QryBusca2.FieldValues['mDescripcion'];
      end;
      tmDescripcion.Text := tmDescripcion.Text + sDescripcion;
      tmDescripcion.SelStart := length(tmDescripcion.Text)
    end;
end;

procedure TfrmBitacoraDepartamental_2.mnAlbumClick(Sender: TObject);
begin
  if (ActiveControl is TMemo) then
    if frmBarra1.btnEdit.Enabled = False then
    begin
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('select r.iImagen, r.sDescripcion from reportediario rf inner join reportefotografico r on ' +
        '(rf.sContrato = r.sContrato and rf.sNumeroReporte = r.sNumeroReporte) ' +
        'Where rf.sContrato = :Contrato and rf.dIdFecha = :fecha And rf.sNumeroOrden = :Orden and rf.sIdTurno = :turno');
      connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
      connection.QryBusca2.Params.ParamByName('Fecha').DataType := ftDate;
      connection.QryBusca2.Params.ParamByName('Fecha').Value := tdIdFecha.Date;
      connection.QryBusca2.Params.ParamByName('Orden').DataType := ftString;
      connection.QryBusca2.Params.ParamByName('Orden').Value := tsNumeroOrden.KeyValue;
      connection.QryBusca2.Params.ParamByName('Turno').DataType := ftString;
      connection.QryBusca2.Params.ParamByName('turno').Value := global_turno_reporte;
      connection.QryBusca2.Open;
      while not connection.QryBusca2.Eof do
      begin
        tmDescripcion.Lines.Add('');
        tmDescripcion.Lines.Add('Fotografia # ' + connection.QryBusca2.fieldByName('iImagen').asString + '.');
        tmDescripcion.Lines.Add(connection.QryBusca2.FieldValues['sDescripcion']);
        connection.QryBusca2.Next
      end;
      tmDescripcion.SelStart := length(tmDescripcion.Text)
    end;
end;

procedure TfrmBitacoraDepartamental_2.rbMaterialesc13Exit(Sender: TObject);
begin
{  if rbMaterialesc13.Checked = True then
  begin
    qryPartidasEfectivas.Active := False;
    qryPartidasEfectivas.SQL.Clear;
    qryPartidasEfectivas.SQL.Add('SELECT DISTINCT ao.sNumeroActividad FROM actividadesxorden ao ' +
      'WHERE NOT EXISTS (SELECT a.sNumeroActividad from alcancesxactividad  a where a.sContrato = ao.scontrato and a.sNumeroActividad = ao.sNumeroActividad) AND ' +
      'ao.sContrato = :Contrato And ao.sNumeroOrden = :Orden And ao.sIdConvenio = :Convenio and ao.sTipoActividad = "Actividad" And ao.sWbs like "%C-13%" Order By ao.iItemOrden');
    qryPartidasEfectivas.Params.ParamByName('contrato').DataType := ftString;
    qryPartidasEfectivas.Params.ParamByName('contrato').Value := global_contrato;
    qryPartidasEfectivas.Params.ParamByName('convenio').DataType := ftString;
    qryPartidasEfectivas.Params.ParamByName('convenio').Value := global_convenio;
    qryPartidasEfectivas.Params.ParamByName('Orden').DataType := ftString;
    qryPartidasEfectivas.Params.ParamByName('Orden').Value := global_orden;
    qryPartidasEfectivas.Open;
  end;}
end;

procedure Tfrmbitacoradepartamental_2.CopiaMemo(Sender: TObject);
begin
     tmDescripcion.Text := (Sender as tMemo).Text ;
end;

procedure Tfrmbitacoradepartamental_2.CopiaMemo2(Sender: TObject);
begin
     tmNotas.Text := (Sender as tMemo).Text ;
end;


procedure TfrmBitacoraDepartamental_2.Copy1Click(Sender: TObject);
begin

end;

{_______________________________________________________________________________
 FUNCION PARA ACTUALIZAR EL ID DIARIO DE PERSONAL, EQUIPO Y PERNOCTA CARGADO A LA PARTIDA
--------------------------------------------------------------------------------}
procedure Tfrmbitacoradepartamental_2.ActualizaIdDiario(dParamContrato: string; dParamFecha: TDate; dParamIdDiario, dParamIdDiarioOld : Integer);
var
    Q_BuscaId :TZReadOnlyQuery;
begin
    Q_BuscaId := TZReadOnlyQuery.Create(self);
    Q_BuscaId.Connection := connection.zConnection;

    {Actualiza IdDiario Bitacora de Personal}
    Q_BuscaId.Active := False;
    Q_BuscaId.SQL.Clear;
    Q_BuscaId.SQL.Add('Update bitacoradepersonal set iIdDiario =:Id where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:IdOld');
    Q_BuscaId.ParamByName('Contrato').AsString := dParamContrato;
    Q_BuscaId.ParamByName('Fecha').AsDate      := dParamFecha;
    Q_BuscaId.ParamByName('Id').AsInteger      := dParamIdDiario;
    Q_BuscaId.ParamByName('IdOld').AsInteger   := dParamIdDiarioOld;
    Q_BuscaId.ExecSQL;

    {Actualiza IdDiario Bitacora de Personal}
    Q_BuscaId.Active := False;
    Q_BuscaId.SQL.Clear;
    Q_BuscaId.SQL.Add('Update bitacoradeequipos set iIdDiario =:Id where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:IdOld');
    Q_BuscaId.ParamByName('Contrato').AsString := dParamContrato;
    Q_BuscaId.ParamByName('Fecha').AsDate      := dParamFecha;
    Q_BuscaId.ParamByName('Id').AsInteger      := dParamIdDiario;
    Q_BuscaId.ParamByName('IdOld').AsInteger   := dParamIdDiarioOld;
    Q_BuscaId.ExecSQL;

    {Actualiza IdDiario Bitacora de Materiales}
    Q_BuscaId.Active := False;
    Q_BuscaId.SQL.Clear;
    Q_BuscaId.SQL.Add('Update bitacorademateriales set iIdDiario =:Id where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:IdOld');
    Q_BuscaId.ParamByName('Contrato').AsString := dParamContrato;
    Q_BuscaId.ParamByName('Fecha').AsDate      := dParamFecha;
    Q_BuscaId.ParamByName('Id').AsInteger      := dParamIdDiario;
    Q_BuscaId.ParamByName('IdOld').AsInteger   := dParamIdDiarioOld;
    Q_BuscaId.ExecSQL;

     {Actualiza IdDiario Bitacora de Pernocta auxiliar..}
    Q_BuscaId.Active := False;
    Q_BuscaId.SQL.Clear;
    Q_BuscaId.SQL.Add('Update bitacoradepernocta_aux set iIdDiario =:Id where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:IdOld');
    Q_BuscaId.ParamByName('Contrato').AsString := dParamContrato;
    Q_BuscaId.ParamByName('Fecha').AsDate      := dParamFecha;
    Q_BuscaId.ParamByName('Id').AsInteger      := dParamIdDiario;
    Q_BuscaId.ParamByName('IdOld').AsInteger   := dParamIdDiarioOld;
    Q_BuscaId.ExecSQL;
end;


end.

