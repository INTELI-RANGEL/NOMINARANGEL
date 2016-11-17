unit UFunctionsGHH;

interface
Uses ZConnection, Classes, ZDataSet, SysUtils,DB,StdCtrls, Variants, Windows,global, frm_connection,utilerias,
      Controls,Jpeg,Graphics,ExtCtrls,Clipbrd,ShellApi,Messages,Dialogs,axctrls,WinInet;

type
  IData=class
    Private

    Public
      IdDb:Integer;
      sNameFile:String;
      sTypeFile:String;


  end;

  IDataPlus=class
    Private

    Public
      dFecha:TDate;
      IdFolio:Integer;
      sIdEgreso:String;
      sIdProveedor:String;
      sIdFactura:String;
      sNameFile:String;
      sTypeFile:String;


  end;


Function Conectar(var conexion:TzConnection;Server,DataBase:string;Port:integer):boolean;
Function CompressImage(ArchOrig:TFilename;Porcentaje:Integer):TFilename;
Procedure MostrarBitmap(Const Bitmap:  TBitmap;Const Image:  TImage);
Function LoadGraphicsFile(Const Filename: String):  TBitmap;
Function ImagePasteFromClipBoard:TFilename;
Procedure MessageError(CAdena:WideString);
Function PermisosExportar(conexion:TzConnection;Grupo,Programa:string):String;
Function SwbsPrincipal(psContrato,psConvenio,psTipo,psItemO:String;ptconexion:TzConnection):string;
Function GenerarTmpName(sNombre:String;sExt:String=''):String;
function obtenerDirectorioTemporal : TFileName;
function obtenerDirectorioWindows : TFileName;
function BlobToStream(Field: TField): TMemoryStream;
FUNCTION emailValido(CONST Value: String): boolean;
function DeleteAllDir(Carpeta:TFilename):Boolean;
function ValidarCorreos(Cadena:string;Separador:Char):Boolean;
function IsOnline():Boolean;
function GetNextIdAlmacen(ParamContrato,ParamTipo:String):Integer;
Procedure SetNextIdAlmacen(ParamContrato,ParamTipo:String;iSgte:Integer);
type
  TeFilter = (prNinguno,prIgual,prDiferente,prMayor,prMayorIgual,prMenor,prMenorIgual);

  vsMode=(vsLectura,vsEdicion,vsInsercion);
  smFile=(smPdf,smJpeg,smXml);

implementation

uses masUtilerias;

var
   InetIsOffline : function(dwFlags: DWORD): BOOL; stdcall;

Procedure SetNextIdAlmacen(ParamContrato,ParamTipo:String;iSgte:Integer);
var
  QrNext:TZQuery;
  QrExiste:TZReadOnlyQuery;
  iNext:Integer;
  Existe:Boolean;
begin
  iNext:=iSgte + 1;
  QrNext:=TZQuery.Create(nil);
  QrExiste:=TZReadOnlyQuery.Create(nil);
  try
    QrExiste.Connection:=connection.zConnection;
    if ParamTipo='ENTRADA' then
      QrExiste.SQL.Text:='select * from almacen_entrada where sContrato=:Contrato and iFolioEntrada=:Folio';
    if ParamTipo='SALIDA' then
      QrExiste.SQL.Text:='select * from almacen_salida where sContrato=:Contrato and iFolioSalida=:Folio';
    QrExiste.ParamByName('contrato').AsString:=ParamContrato;

    QrNext.Connection:=connection.zConnection;
    QrNext.SQL.Text:='select * from mascaras where scontrato=:Contrato and eTipo=:Tipo';
    QrNext.ParamByName('Contrato').AsString:=ParamContrato;
    QrNext.ParamByName('Tipo').AsString:=ParamTipo;
    QrNext.Open;
    if QrNext.RecordCount=1 then
    begin
      repeat
        QrExiste.Active:=False;
        QrExiste.ParamByName('Folio').AsInteger:=iNext;
        QrExiste.Open;
        if QrExiste.RecordCount=0 then
          Existe:=False
        else
        begin
          Existe:=True;
          Inc(iNext)
        end;
      until not Existe;

      QrNext.Edit;
      QrNext.FieldByName('iConsecutivo').AsInteger:=iNext;
      QrNext.Post;
    end;
  finally
    QrNext.Destroy;
    QrExiste.Destroy;
  end;
end;

function GetNextIdAlmacen(ParamContrato,ParamTipo:String):Integer;
var
  QrNext,QrExiste:TZReadOnlyQuery;
  iNext:Integer;
  Existe:Boolean;
begin
  iNext:=1;
  QrNext:=TZReadOnlyQuery.Create(nil);
  QrExiste:=TZReadOnlyQuery.Create(nil);
  try
    QrExiste.Connection:=connection.zConnection;
    if ParamTipo='ENTRADA' then
      QrExiste.SQL.Text:='select * from almacen_entrada where sContrato=:Contrato and iFolioEntrada=:Folio';
    if ParamTipo='SALIDA' then
      QrExiste.SQL.Text:='select * from almacen_salida where sContrato=:Contrato and iFolioSalida=:Folio';
    QrExiste.ParamByName('contrato').AsString:=ParamContrato;

    QrNext.Connection:=connection.zConnection;
    QrNext.SQL.Text:='select * from mascaras where scontrato=:Contrato and eTipo=:Tipo';
    QrNext.ParamByName('Contrato').AsString:=ParamContrato;
    QrNext.ParamByName('Tipo').AsString:=ParamTipo;
    QrNext.Open;
    if QrNext.RecordCount=1 then
    begin
      iNext:=QrNext.FieldByName('iConsecutivo').AsInteger;

      repeat
        QrExiste.Active:=False;
        QrExiste.ParamByName('Folio').AsInteger:=iNext;
        QrExiste.Open;
        if QrExiste.RecordCount=0 then
          Existe:=False
        else
        begin
          Existe:=True;
          Inc(iNext)
        end;
      until not Existe;
    end;
  finally
    QrNext.Destroy;
    QrExiste.Destroy;
  end;
  Result:=iNext;
end;


function FuncAvail(_dllname, _funcname: string; var _p: pointer): boolean;
   {
   Devuelve true si la funcion _funcname esta disponible en la DLL _dllname.
   Si es asi, almacena en _p la direccion de la funci�n.
   }
var _lib: tHandle;
begin
 Result := false;
 if LoadLibrary(PChar(_dllname)) = 0 then exit;
 _lib := GetModuleHandle(PChar(_dllname));
 if _lib <> 0 then
   begin
     _p := GetProcAddress(_lib, PChar(_funcname));
     if _p <> NIL then Result := true;
   end;
end;


function IsOnline:Boolean;
var
  isConect:Boolean;
begin
  isConect:=False;
  if FuncAvail('URL.DLL', 'InetIsOffline', @InetIsOffline) = true then
     if InetIsOffLine(0) = true
       then isConect:=false
         else isConect:=true;
  Result:=isConect;

end;


function DeleteAllDir(Carpeta:TFilename):Boolean;
var
  DirInfo: TSearchRec;
  r : Integer;
begin
  r := FindFirst(Carpeta+'\*.*', FaAnyfile, DirInfo);
  while r = 0 do
  begin
    if  ((DirInfo.Attr and FaDirectory <> FaDirectory) and
        (DirInfo.Attr and FaVolumeId <> FaVolumeID)) then
      if DeleteFile(pChar(Carpeta+'\' + DirInfo.Name))= false then
  {Si no puede borrar el fichero}
        ShowMessage('No se pudo borrar el fichero: ' + Carpeta+'\' + DirInfo.Name);
    r := FindNext(DirInfo);
  end;
  SysUtils.FindClose(DirInfo);

  Result:=RemoveDirectory(PChar(Carpeta));
end;

function ValidarCorreos(Cadena:string;Separador:Char):Boolean;
var
  i,nReg:Integer;
  esCorreo:Boolean;
  CadTmp:string;
begin
  esCorreo:=False;
  if Cadena<>'' then
  begin
    nReg:=NumItems(Cadena,Separador);
    for I := 1 to nReg do
    begin
      CadTmp:=TraerItem(Cadena,Separador,i);
      if emailValido(CadTmp) then
        esCorreo:=True
      else
      begin
        esCorreo:=False;
        Break;
      end;
    end;
  end;
  Result:=esCorreo;
end;



FUNCTION emailValido(CONST Value: String): boolean;
  FUNCTION CheckAllowed(CONST s: String): boolean;
  VAR i: Integer; 
  BEGIN 
    Result:= False;
    FOR i:= 1 TO Length(s) DO // illegal char in s -> no valid address
      IF NOT (s[i] IN ['a'..'z','A'..'Z','0'..'9','_','-','.']) THEN Exit;
    Result:= true;
  END; 
VAR
  i,len: Integer; 
  namePart, serverPart: String; 
BEGIN // of IsValidEmail 
  Result:= False; 
  i:= Pos('@', Value); 
  IF (i=0) OR (Pos('..',Value) > 0) THEN Exit; 
  namePart:= Copy(Value, 1, i - 1); 
  serverPart:= Copy(Value,i+1,Length(Value)); 
  len:=Length(serverPart); 
  // must have dot and at least 3 places from end, 2 places from begin 
  IF (len<4) OR 
     (Pos('.',serverPart)=0) OR 
     (serverPart[1]='.') OR 
     (serverPart[len]='.') OR 
     (serverPart[len-1]='.') THEN Exit; 
  Result:= CheckAllowed(namePart) AND CheckAllowed(serverPart); 
END;

Function GenerarTmpName(sNombre:String;sExt:String=''):String;
var
  sTimeFile:String;
begin
  sTimeFile:=formatdatetime('ddmmyyhhnnss',now);
  if sExt<>'' then
    Result:=sNombre+'ftempAby'+sTimeFile+sExt
  else
    Result:=sNombre+'ftempAby'+sTimeFile;
end;


function obtenerDirectorioTemporal : TFileName;
var
  TmpDir: array [0..MAX_PATH-1] of char;
begin
 try
  SetString(Result, TmpDir, GetTempPath(MAX_PATH, TmpDir));
  if not DirectoryExists(Result) then
   if not CreateDirectory(PChar(Result), nil) then begin
    Result := IncludeTrailingBackslash(obtenerDirectorioWindows) + 'TEMP';
    if not DirectoryExists(Result) then
     if not CreateDirectory(Pointer(Result), nil) then begin
      Result := ExtractFileDrive(Result) + '\TEMP';
      if not DirectoryExists(Result) then
       if not CreateDirectory(Pointer(Result), nil) then begin
        Result := ExtractFileDrive(Result) + '\TMP';
        if not DirectoryExists(Result) then
         if not CreateDirectory(Pointer(Result), nil) then begin
          raise Exception.Create(SysErrorMessage(GetLastError));
         end;
       end;
     end;
   end;
  except
    Result := '';
    raise;
  end;
end;


function obtenerDirectorioWindows : TFileName;
var
  WinDir: array [0..MAX_PATH-1] of char;
begin
  SetString(Result, WinDir, GetWindowsDirectory(WinDir, MAX_PATH));
  if Result = '' then
    raise Exception.Create(SysErrorMessage(GetLastError));
end;

function BlobToStream(Field: TField): TMemoryStream;
begin
  Result := nil;
  if Field.IsBlob then
  begin
    Result := TMemoryStream.Create;
    try
      TBlobField(Field).SaveToStream(Result);
    except
      FreeAndNil(Result);
    end;
  end;
end;


Function SwbsPrincipal(psContrato,psConvenio,psTipo,psItemO:String;ptconexion:TzConnection):string;
var
  error:Boolean;
  QrAct:TzReadOnlyQuery;
begin
  result:='';
  Error:=false;
  QrAct:=TzReadOnlyQuery.Create(nil);
  QrAct.Connection:=ptconexion;
  QrAct.SQL.Text:='select swbs from actividadesxanexo where scontrato=:contrato '+
                  'and sidconvenio=:convenio and stipoActividad=:tipo ' +
                  'and swbsanterior=:item';
  QrAct.ParamByName('contrato').AsString:=pscontrato;
  QrAct.ParamByName('convenio').AsString:=psconvenio;
  QrAct.ParamByName('tipo').AsString:=psTipo;
  QrAct.ParamByName('item').AsString:=psItemO;

  try
    try
      QrAct.Open
    except
      error:=true;
    end;

    if not error then
    begin
      if QrAct.RecordCount>0 then
        result:=QrAct.FieldByName('swbs').AsString;
    end;
  finally
    freeandnil(QrAct);
  end;
end;

Function PermisosExportar(conexion:TzConnection;Grupo,Programa:string):String;
var
  QrPermisosExp:TzReadOnlyQuery;
  Error:boolean;
begin
  result:='';
  Error:=false;
  QrPermisosExp:=TzReadOnlyQuery.Create(nil);
  QrPermisosExp.Connection:=conexion;
  QrPermisosExp.SQL.Text:='SELECT sFormatos ' +
                          'FROM gruposxprograma ' +
                          'WHERE sIdGrupo = :grupo AND sIdPrograma = :modulo';
  QrPermisosExp.ParamByName('grupo').AsString:=grupo;
  QrPermisosExp.ParamByName('modulo').AsString:=Programa;
  try
    try
      QrPermisosExp.Open;
    except
      error:=true;
    end;

    if not error then
    begin
      if QrPermisosExp.RecordCount=1 then
        result:=QrPermisosExp.FieldByName('sFormatos').AsString;
    end;
  finally
    freeandnil(QrPermisosExp);
  end;
end;

Procedure MessageError(Cadena:widestring);
begin
  MessageDlg(Cadena,Mterror,[mbok],0);
end;

Function ImagePasteFromClipboard:TFilename;
var
  f : TFileStream;
  Jpg : TJpegImage;
  Hand : THandle;
  Buffer : Array [0..MAX_PATH] of Char;
  numFiles : Integer;
  File_Name : String;
  Jpg_Bmp : String;
  BitMap : TBitMap;
  ImageAux : TImage;
  Picture : TPicture;
  TempPath: array [0..MAX_PATH-1] of Char;
  FNombre:TFileName;
begin
  ImageAux := TImage.Create(nil);
  Result:='';

  if Clipboard.HasFormat(CF_HDROP) then   //Checar si es Drag and Drop
  begin
    Clipboard.Open;
    try
      Hand := Clipboard.GetAsHandle(CF_HDROP);
      If Hand <> 0 then
      begin
        numFiles := DragQueryFile(Hand, $FFFFFFFF, nil, 0) ;
        if numFiles > 1 then
        begin
          Clipboard.Close;
          ImageAux.Free;
          MessageError('El Portapapeles contiene m�s de un �nico fichero. No es posible pegar');
          Exit;
        end;
        Buffer[0] := #0;
        DragQueryFile( Hand, 0, buffer, sizeof(buffer)) ;
        File_Name := buffer;
      end;
    finally
      Clipboard.close;
    end;

    f := TFileStream.Create(File_Name, fmOpenRead);
    Jpg := TJpegImage.Create;
    Bitmap := TBitmap.Create;

    try        //Checar si es un JPG o BMP
      Jpg.LoadFromStream(f);
      ImageAux.Picture.Assign(Jpg);
      Jpg_Bmp := 'JPG';
    except
      f.seek(0,soFromBeginning);
      Jpg_Bmp := '';
    end;

    if Jpg_Bmp = '' then
    begin
      try
        Bitmap.LoadFromStream(f);
        Jpg.Assign(Bitmap);
        ImageAux.Picture.Assign(Jpg);
        Jpg_Bmp := 'BMP';
      except
        Jpg_Bmp := '';
      end;
    end;

    Jpg.Free;
    Bitmap.Free;
    f.Free;

    GetTempPath(SizeOf(TempPath), TempPath);
    FNombre:=TempPath +'ClpbtempGHH'+formatdatetime('dddddd hhnnss',now)+'.jpg';

    try
      if Jpg_Bmp = '' then
      begin
        MessageError('Fichero seleccionado no contiene ninguna Imagen del Tipo JPEG o BMP');
      end
      else
      begin
        ImageAux.Picture.SaveToFile(FNombre);
        Result:=CompressImage(FNombre,90);
      end;
    finally
      ImageAux.Free;
      if FileExists(FNombre) then
        DeleteFile(Pchar(FNombre));
   end;

  end
  else
    if (Clipboard.HasFormat(CF_BITMAP))  or (Clipboard.HasFormat(CF_PICTURE)) then
      ImageAux.Picture.Assign(Clipboard)
    else
    begin
      ImageAux.Free;
      MessageError('El Portapapeles no contiene ninguna Imagen del Tipo JPEG o BMP');
      Exit;
    end;

    GetTempPath(SizeOf(TempPath), TempPath);
    FNombre:=TempPath +'ClpbtempGHH'+formatdatetime('dddddd hhnnss',now)+'.jpg';
    Jpg := TJpegImage.Create;
    Picture := TPicture.Create;
    try
      try
        if (Clipboard.HasFormat(CF_BITMAP)) then
        begin
          Jpg.Assign(ImageAux.Picture.Graphic);
          jpg.SaveToFile(FNombre);
          Result:=CompressImage(FNombre,90);
        end;
        if (Clipboard.HasFormat(CF_PICTURE)) then
        begin
          Picture.Assign(Clipboard);
          Picture.SaveToFile(FNombre);
          Result:=CompressImage(FNombre,90);
        end;
      except
        on e:Exception do
        begin
          ImageAux.Free;
          MessageError('El Portapapeles no contiene ninguna Imagen del Tipo JPEG o BMP');
        end;
      end;
    finally
      if Fileexists(Fnombre) then
        DeleteFile(PChar(FNombre));
      freeandnil(Jpg);
      FreeandNil(Picture);
    end;
end;

Function LoadGraphicsFile(Const Filename: String):  TBitmap;
Var
  Picture: TPicture;
  f : TFileStream;
  graphic : TOleGraphic;
Begin
  Result := NIL;
  If FileExists(Filename) Then
  Begin
    Result := TBitmap.Create;
    Try
      Picture := TPicture.Create;
      graphic := TOleGraphic.Create;
      Try
        f := TFileStream.Create (Filename,fmOpenRead or fmShareDenyNone);
        try
          try
            Graphic.LoadFromStream(f);
            Picture.Assign(Graphic);
          except
            on e:exception do
            begin
              if e.ClassName='EOleSysError' then
              begin
                try
                  Picture.LoadFromFile(Filename);
                except
                  Result:=nil;
                end;
              end;
            end;
          end;
          Try
            Result.Assign(Picture.Graphic);
          Except
            Result.Width  := Picture.Graphic.Width;
            Result.Height := Picture.Graphic.Height;
            Result.PixelFormat := pf24bit;
            Result.Canvas.Draw(0, 0, Picture.Graphic);
          End;
        finally
          freeandnil(f);
        end;
      Finally
        Picture.Free;
        freeandnil(graphic);
      End;
    Except
      Result.Free;
      Raise;
    End;
  End;
End;



Procedure MostrarBitmap(Const Bitmap:  TBitmap;Const Image :  TImage);
Var
    Half      :  INTEGER;
    Height    :  INTEGER;
    NewBitmap :  TBitmap;
    TargetArea:  TRect;
    Width     :  INTEGER;
Begin
  NewBitmap := TBitmap.Create;
  TRY
    NewBitmap.Width  := Image.Width;
    NewBitmap.Height := Image.Height;
    NewBitmap.PixelFormat := pf24bit;
    NewBitmap.Canvas.FillRect(NewBitmap.Canvas.ClipRect);
    If (Bitmap.Width / Bitmap.Height) < (Image.Width / Image.Height)Then
    Begin
      TargetArea.Top    := 0;
      TargetArea.Bottom := NewBitmap.Height;
      Width := MulDiv(NewBitmap.Height, Bitmap.Width, Bitmap.Height);
      Half := (NewBitmap.Width - Width) DIV 2;
      TargetArea.Left  := Half;
      TargetArea.Right := TargetArea.Left + Width;
    End
    Else
    Begin
      TargetArea.Left    := 0;
      TargetArea.Right   := NewBitmap.Width;
      Height := MulDiv(NewBitmap.Width, Bitmap.Height, Bitmap.Width);
      Half := (NewBitmap.Height - Height) DIV 2;
      TargetArea.Top    := Half;
      TargetArea.Bottom := TargetArea.Top + Height
    End;
    NewBitmap.Canvas.StretchDraw(TargetArea, Bitmap);
    Image.Picture.Graphic := NewBitmap
  Finally
    NewBitmap.Free
  End;
End;



Function CompressImage(ArchOrig:TFilename;Porcentaje:Integer):TFilename;
var
  Aux,Original,pantalla:Timage;
  TempPath: array [0..MAX_PATH-1] of Char;
  jpg:TJpegImage;
  Bitmap,bmp: TBitmap;
  Alto,Ancho,Comp:Integer;
  FNombre:TFileName;
  f : TFileStream;
  graphic : TOleGraphic;
begin
  Result:='';
  Comp:=Porcentaje;
  if (Porcentaje=0) or (Porcentaje>100) then
    Comp:=100;
  if Length(trim(ArchOrig))>0 then
  begin
    if FileExists(ArchOrig) then
    begin
      ancho:=0;
      Alto:=0;
      Original:=Timage.Create(nil);
      graphic := TOleGraphic.Create;

      Original.AutoSize:=true;
      try
        f := TFileStream.Create (ArchOrig,fmOpenRead or fmShareDenyNone);
        try
          try
            graphic.LoadFromStream(f);
            Original.Picture.Assign(graphic);
          except
            on e:Exception do
            begin
              if e.ClassName='EOleSysError' then
              begin
                try
                  Original.Picture.LoadFromFile(ArchOrig);
                except
                  Result:='';
                end;
              end;
            end;
          end;
        finally
          f.Free;
        end;
        Ancho:=Original.Width;
        Alto:=Original.Height;
      finally
        freeandnil(Original);
        freeandnil(graphic);
      end;

      if Alto>2000 then
      begin
        Alto:=trunc(alto/3);
        Ancho:=trunc(Ancho/3);
      end
      else
      begin
        if Alto>1000 then
        begin
          Alto:=trunc(alto/2);
          Ancho:=trunc(Ancho/2);
        end;
      end;

      Aux:=Timage.Create(nil);
      Aux.Width:=ancho;
      Aux.Height:=alto;
      Bitmap := TBitmap.Create;
      Bitmap.Width  := aux.Width;
      Bitmap.Height := aux.Height;
      Bitmap.PixelFormat := pf24bit;
      Bitmap.Canvas.Brush.Color := clRed;
      Bitmap.Canvas.FillRect(Bitmap.Canvas.ClipRect);
      MostrarBitmap(Bitmap, Aux);
      Bitmap.Free;
      Bitmap := LoadGraphicsFile(ArchOrig);
      MostrarBitmap(Bitmap, Aux);

      try
        GetTempPath(SizeOf(TempPath), TempPath);
        FNombre:=TempPath +'imgtempGHH'+formatdatetime('dddddd hhnnss',now)+'.jpg'; //'imgtemp2327ghh.jpg';
        jpg := TJpegImage.Create;
        bmp := TBitmap.Create;
        bmp.Assign(aux.Picture.Bitmap);
        jpg.Assign(Bmp);
        Pantalla:=Timage.Create(nil);

        try
          jpg.CompressionQuality := comp;
          jpg.Compress;
          try
            pantalla.Picture.Assign(jpg);
          except
            pantalla.Picture.Assign(nil);
          end;
          pantalla.Picture.SaveToFile(fNombre);
        finally
          freeandnil(jpg);
          freeandnil(pantalla);
          freeandnil(bmp);
        end;
      finally
        freeandnil(Aux);
        freeandnil(Bitmap);
        if fileexists(FNombre)  then
        begin
          Result:=FNombre;
        end;
      end;
    end;
  end;
end;

Function Conectar(var conexion:TzConnection;Server,DataBase:string;Port:integer):boolean;
var
  error,isroot:boolean;
  QrAcceso:TzReadOnlyQuery;
  local_Pass:String;
begin
  error:=false;
  isRoot:=false;
  Conexion.Disconnect;
  Conexion.HostName:=Global_ServAcceso;
  Conexion.Database:='';
  Conexion.Catalog:='';
  Conexion.Port:=Global_PortAcceso;
  Conexion.User:=IntelUser;
  Conexion.Password:=IntelPass;
  conexion.Protocol:=connection.zConnection.Protocol;
  try
    Conexion.Connect;
  except
    on e:exception do
    begin
      if pos('Access denied',e.message)>0 then
      begin
        Conexion.Disconnect;
        Conexion.User :=IntelUser;
        Conexion.Password :=IntelPass ;
        conexion.HostName:=server;
        Conexion.Database := '' ;
        Conexion.Catalog := '' ;
        conexion.Port:=port;
        conexion.Protocol:=connection.zConnection.Protocol;
        Try
          Conexion.Connect ;
        except
          on e : exception do
          begin
            if pos('Access denied',e.message)>0 then
            begin
              Conexion.Disconnect;
              Conexion.User :='root';
              Conexion.Password :=IntelPass ;
              conexion.HostName:=server;
              Conexion.Database := database ;
              Conexion.Catalog := database ;
              conexion.Port:=port;
              conexion.Protocol:=connection.zConnection.Protocol;
              Try
                Conexion.Connect ;
                isRoot:=true;
              except
                error:=true;
              End;
            end
            else
              error:=true;
          end;
        End;

        if not error then
        begin
          If not Conexion.Ping Then
          begin
              error:=true;
          end;
        end;
      end
      else
        error:=true;
    end;
  end;

  if not error then
  begin
    if conexion.Ping then
    begin
      if not isroot then
      begin
        QrAcceso:=TzReadOnlyquery.Create(nil);
        QrAcceso.Connection:=Conexion;
        QrAcceso.SQL.Text:='select * from adminintel.acceso where user=' + quotedstr(global_bduser) +
                              ' and servidor=' +quotedstr(server);
        try
          QrAcceso.Open;
        except
          on E:exception do
          begin
            error:=true;
          end;
        end;

        if not error then
        begin
          try
            if QrAcceso.RecordCount=1 then
              local_Pass:=desencripta(QrAcceso.FieldByName('password').AsString)
            else
              local_Pass:=IntelPass;

          finally
            freeandnil(QrAcceso);
          end;

          Conexion.Disconnect;
          Conexion.HostName := server ;
          Conexion.Port := port;
          Conexion.User :=global_bduser;
          Conexion.Password :=Local_pass;
          Conexion.Database :=database ;
          conexion.Protocol:=connection.zConnection.Protocol;

          try
            Conexion.Connect;
          except
            on E:exception do
              error:=true;
          end;
        end;
      End;
    end;
  end;
  result:=not error;
end;


end.