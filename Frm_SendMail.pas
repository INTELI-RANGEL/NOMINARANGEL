unit Frm_SendMail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxGroupBox, cxSplitter, cxTextEdit, cxMemo, cxRichEdit, dxSkinscxPCPainter,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, Menus, StdCtrls,
  cxButtons, NxColumns, NxColumnClasses, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, JvComponentBase, JvMail, dxLayoutControlAdapters,
  ZDataset, DB, ZAbstractRODataset, ZAbstractDataset, IdBaseComponent, IdMessage,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL,IdSSLOpenSSLHeaders, ExtCtrls,
  JvBaseDlg, JvProgressDialog, ImgList;
  
  type tDocMAil=(DcReCo=1, DcOrco=2);


type
  TFrmSendMail = class(TForm)
    GBx1: TcxGroupBox;
    GBx2: TcxGroupBox;
    Spl1: TcxSplitter;
    GBx3: TcxGroupBox;
    GBx4: TcxGroupBox;
    RchEdtMensaje: TcxRichEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    TxtEdtReceptor: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    TxtEdtCc: TcxTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    TxtEdtAsunto: TcxTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    btnAdjunto: TcxButton;
    NxGrdAdjuntos: TNextGrid;
    NxHyperlinkColumn1: TNxHyperlinkColumn;
    NxHyperlinkColumn2: TNxHyperlinkColumn;
    NxHyperlinkColumn3: TNxHyperlinkColumn;
    btnSend: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    QrConfiguracion: TZReadOnlyQuery;
    idmsgMail: TIdMessage;
    idsmtpMail: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    tmrAdjuntos: TTimer;
    dlgProgressAdjuntos: TJvProgressDialog;
    dlgOpenFile: TOpenDialog;
    ImgLstAdjuntos: TcxImageList;
    NxButtonColumn1: TNxHyperlinkColumn;
    NxButtonColumn2: TNxHyperlinkColumn;
    NxButtonColumn3: TNxHyperlinkColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure tmrAdjuntosTimer(Sender: TObject);
    procedure dlgProgressAdjuntosProgress(Sender: TObject;
      var AContinue: Boolean);
    procedure btnAdjuntoClick(Sender: TObject);
    procedure NxButtonColumn1Click(Sender: TObject; ACol, ARow: Integer;
      AHyperlink: WideString);
  private
    { Private declarations }
    const
      skey='$@intelcode';//No Cambiar, es la llave para desencriptar
    var
      LstLinks:TStringList;

    function AdjuntarFile(ParamFileName:TFileName):Boolean;
    procedure AdjuntarArchivos;
    function AdjuntarArchivo(ParamFileName:TFileName):Boolean;
    function ConectarMail:Boolean;
    procedure HandleOnHyperlinkClick(Sender: TObject; ACol, ARow: Integer; AHyperlink: WideString);
    procedure EnviarMail;
    procedure RemoveAdjunto(ACol, ARow: Integer; AHyperlink: WideString);
    function RemoveFile(ParamFileName:TFileName):Boolean;
  public
    { Public declarations }
    DirFiles:TFileName;
    sFiles:string;
    Tipo:tDocMAil;
  end;

var
  FrmSendMail: TFrmSendMail;

implementation

uses frm_connection, global,IdAttachmentFile, masUtilerias,ShellAPI,
  UFunctionsGHH;



{$R *.dfm}

function TFrmSendMail.RemoveFile(ParamFileName:TFileName):Boolean;
var
  seDel:Boolean;
  i:Integer;
begin
  seDel:=False;
  for I := 0 to idmsgMail.MessageParts.Count - 1 do
     if (idmsgMail.MessageParts.Items[i] is TIdAttachmentFile ) then
      if TIdAttachmentFile(idmsgMail.MessageParts[i]).FileName=ParamFileName then
      begin
        TIdAttachmentFile(idmsgMail.MessageParts[i]).Destroy;
        seDel:=True;
        Break;
      end;
  Result:=seDel;
end;

procedure TFrmSendMail.RemoveAdjunto(ACol, ARow: Integer; AHyperlink: WideString);
var
  xRow,xCol,tmpCol,tmpRow:Integer;
  OnlyClear:Boolean;
begin
  OnlyClear:=False;
  if RemoveFile(NxGrdAdjuntos.Cell[ACol-1,ARow].AsString) then
  begin
    if (ACol = NxGrdAdjuntos.Columns.Count-1) and
        (ARow=NxGrdAdjuntos.RowCount-1) then
        OnlyClear:=True;


    if OnlyClear then
    begin
      LstLinks.Delete(LstLinks.IndexOfNAme(NxGrdAdjuntos.Cell[ACol-1,ARow].AsString));
      NxGrdAdjuntos.Cell[ACol-1,ARow].Clear ;
      NxGrdAdjuntos.Cell[ACol,ARow].Clear;
    end
    else
    begin
      If ACol = NxGrdAdjuntos.Columns.Count-1 then
      begin
        tmpCol:=1;
        inc(tmpRow);
      end
      else
      begin
        tmpCol:=ACol+1;
        tmpRow:=ARow;
      end;

      //LstLinks.in

      LstLinks.Delete(LstLinks.IndexOfNAme(NxGrdAdjuntos.Cell[ACol-1,ARow].AsString));
      NxGrdAdjuntos.Cell[ACol-1,ARow].AsString:=NxGrdAdjuntos.Cell[tmpCol,tmpRow].AsString ;
      NxGrdAdjuntos.Cell[ACol,ARow].AsString:=NxGrdAdjuntos.Cell[tmpCol+1,tmpRow].AsString;
      for xRow := tmpRow to NxGrdAdjuntos.RowCount-1 do
        for xCol := tmpCol to NxGrdAdjuntos.Columns.Count-1 do
        begin
          if NxGrdAdjuntos.Columns[xCol].ClassType=TNxHyperlinkColumn  then
            if (NxGrdAdjuntos.Cell[xCol,xRow].AsString<>'') and (NxGrdAdjuntos.Cell[xCol,xRow].AsString<>'X') then
            begin
             // LstLinks.Delete(LstLinks.IndexOfNAme(NxGrdAdjuntos.Cell[xCol,xRow].AsString));
              if (xCol+1 = NxGrdAdjuntos.Columns.Count-1) and
                (xRow=NxGrdAdjuntos.RowCount-1) then
                OnlyClear:=True;

              if OnlyClear then
              begin
                NxGrdAdjuntos.Cell[xCol,xRow].Clear ;
                NxGrdAdjuntos.Cell[xCol+1,xRow].Clear;
              end
              else
              begin
                if (xCol+1 = NxGrdAdjuntos.Columns.Count-1) then
                begin
                  NxGrdAdjuntos.Cell[xCol,xRow].AsString:=NxGrdAdjuntos.Cell[1,xRow+1].AsString ;
                  NxGrdAdjuntos.Cell[xCol+1,xRow].AsString:=NxGrdAdjuntos.Cell[2,xRow+1].AsString;
                end
                else
                begin
                  NxGrdAdjuntos.Cell[xCol,xRow].AsString:=NxGrdAdjuntos.Cell[xCol + 2,xRow].AsString ;
                  NxGrdAdjuntos.Cell[xCol+1,xRow].AsString:=NxGrdAdjuntos.Cell[xCol + 3,xRow].AsString;
                end;
              end;
            end;
        end;
    end;
  end;

end;

function TFrmSendMail.AdjuntarArchivo(ParamFileName:TFileName):Boolean;
var
  i,xRow,xCol:Integer;
  seGrabo:Boolean;
begin
  Result:=AdjuntarFile(ParamFileName);
  if (Result) then
  begin
    seGrabo:=False;
    for xRow := 0 to NxGrdAdjuntos.RowCount-1 do
      for xCol := 0 to NxGrdAdjuntos.Columns.Count-1 do
      begin
        if NxGrdAdjuntos.Columns[xCol].ClassType=TNxHyperlinkColumn  then
          if (NxGrdAdjuntos.Cell[xCol,xRow].AsString='') then
          begin
            NxGrdAdjuntos.Cell[xCol,xRow].AsString:=extractfilename(ParamFileName)  ;
            //TNxHyperlinkColumn(NxGrdAdjuntos.Columns[xCol]).AddVisitedHyperlink(DirFiles +'\'+ TraerItem(sFiles,',',i));
            LstLinks.Add(extractfilename(ParamFileName) +'='+ ParamFileName);
            TNxHyperlinkColumn(NxGrdAdjuntos.Columns[xCol]).OnClick:=HandleOnHyperlinkClick;
            NxGrdAdjuntos.Cell[xCol+1,xRow].AsString:='X';
            seGrabo:=True;
            Break;
          end;
      end;

    if not seGrabo then
    begin
      NxGrdAdjuntos.AddRow();
      NxGrdAdjuntos.Cell[0,NxGrdAdjuntos.LastAddedRow].AsString:=extractfilename(ParamFileName)  ;
     // TNxHyperlinkColumn(NxGrdAdjuntos.Columns[0]).AddVisitedHyperlink(DirFiles +'\'+ TraerItem(sFiles,',',i));
      LstLinks.Add(extractfilename(ParamFileName) +'='+ ParamFileName);
      TNxHyperlinkColumn(NxGrdAdjuntos.Columns[0]).OnClick:=HandleOnHyperlinkClick;
      NxGrdAdjuntos.Cell[1,NxGrdAdjuntos.LastAddedRow].AsString:='X';
    end;


  end;

end;
Procedure TFrmSendMail.EnviarMail;
var
  NumR,I:Integer;
begin
  try
    try
      if not idsmtpMail.Connected then
        idsmtpMail.Connect;
    except
      MessageError('No se pudo establecer la conexion');

    end;
    if idsmtpMail.Connected then
    begin
      idmsgMail.FromList.EMailAddresses := QrConfiguracion.FieldByName('sEmail').AsString;

      if TxtEdtReceptor.Text<>'' then
      begin
        idmsgMail.Recipients.Clear;
        NumR:=NumItems(TxtEdtReceptor.Text,',');
        for I := 1 to NumR do
        begin
          idmsgMail.Recipients.Add;
          idmsgMail.Recipients[i-1].Address:=TraerItem(TxtEdtReceptor.Text,',',I);
        end;
        //idmsgMail.Recipients.EMailAddresses := TxtEdtReceptor.Text;
      end;


      if TxtEdtCc.Text<>'' then
      begin
        idmsgMail.CCList.Clear;
        NumR:=NumItems(TxtEdtCc.Text,',');
        for I := 1 to NumR do
        begin
          idmsgMail.CCList.Add;
          idmsgMail.CCList[i-1].Address:=TraerItem(TxtEdtCc.Text,',',I);
        end;

        //idmsgMail.CCList.Add.Address := TxtEdtCc.Text;
      end;

      if TxtEdtAsunto.Text<>'' then
        idmsgMail.Subject := TxtEdtAsunto.Text;

      idmsgMail.Body.Clear;
      idmsgMail.Body.Text := RchEdtMensaje.Lines.Text;
      idsmtpMail.Send(idmsgMail);
      Application.MessageBox('Mensaje enviado.', 'Aviso', MB_OK + MB_ICONINFORMATION);
    end;
  except
    on e: eidosslcouldnotloadssllibrary do
      EnviarMail;

    on S:Exception do
      MessageError('Hubo problemas con la conexion.' + #13 + #10 + s.ClassName + ', ' + s.Message);
  end;
end;

procedure TFrmSendMail.HandleOnHyperlinkClick(Sender: TObject; ACol, ARow: Integer; AHyperlink: WideString);
begin
//Aqui mando a abrir el pdf
//  TNxHyperlinkColumn(NxGrdAdjuntos.Columns[ACol])
  ShellExecute(Self.Handle, 'open', PChar(LstLinks.Values[AHyperlink]),nil,nil,SW_SHOWNORMAL);

end;

procedure TFrmSendMail.NxButtonColumn1Click(Sender: TObject; ACol,
  ARow: Integer; AHyperlink: WideString);
begin
  if AHyperlink='X' then
    RemoveAdjunto(ACol, ARow, AHyperlink)
end;

procedure TFrmSendMail.tmrAdjuntosTimer(Sender: TObject);
begin
  tmrAdjuntos.Enabled:=False;
  AdjuntarArchivos;
end;

procedure TFrmSendMail.AdjuntarArchivos;
var
  i,xRow,xCol:Integer;
  seGrabo:Boolean;
begin
  if (sFiles<>'') and (DirFiles<>'') then
    if DirectoryExists(DirFiles+ '\') then
    begin
      i:=1;
      dlgProgressAdjuntos.Max:=NumItems(sFiles,',');
      dlgProgressAdjuntos.Position:=0;
      dlgProgressAdjuntos.Interval:=1;
      dlgProgressAdjuntos.Caption:='Adjuntando Archivos';
      dlgProgressAdjuntos.Show;
      repeat
        if AdjuntarFile(DirFiles +'\'+ TraerItem(sFiles,',',i)) then
        begin
          seGrabo:=False;
          for xRow := 0 to NxGrdAdjuntos.RowCount-1 do
            for xCol := 0 to NxGrdAdjuntos.Columns.Count-1 do
            begin
              if NxGrdAdjuntos.Columns[xCol].ClassType=TNxHyperlinkColumn  then
                if (NxGrdAdjuntos.Cell[xCol,xRow].AsString='') then
                begin
                  NxGrdAdjuntos.Cell[xCol,xRow].AsString:=TraerItem(sFiles,',',i);
                  //TNxHyperlinkColumn(NxGrdAdjuntos.Columns[xCol]).AddVisitedHyperlink(DirFiles +'\'+ TraerItem(sFiles,',',i));
                  LstLinks.Add(TraerItem(sFiles,',',i) +'='+ DirFiles +'\'+ TraerItem(sFiles,',',i));
                  TNxHyperlinkColumn(NxGrdAdjuntos.Columns[xCol]).OnClick:=HandleOnHyperlinkClick;
                  NxGrdAdjuntos.Cell[xCol+1,xRow].AsString:='X';
                  seGrabo:=True;
                  Break;
                end;
            end;

          if not seGrabo then
          begin
            NxGrdAdjuntos.AddRow();
            NxGrdAdjuntos.Cell[0,NxGrdAdjuntos.LastAddedRow].AsString:=TraerItem(sFiles,',',i);
           // TNxHyperlinkColumn(NxGrdAdjuntos.Columns[0]).AddVisitedHyperlink(DirFiles +'\'+ TraerItem(sFiles,',',i));
            LstLinks.Add(TraerItem(sFiles,',',i)+'='+DirFiles +'\'+ TraerItem(sFiles,',',i));
            TNxHyperlinkColumn(NxGrdAdjuntos.Columns[0]).OnClick:=HandleOnHyperlinkClick;
            NxGrdAdjuntos.Cell[1,NxGrdAdjuntos.LastAddedRow].AsString:='X';
          end;
        end;
        Inc(i);
        dlgProgressAdjuntos.Position:=dlgProgressAdjuntos.Position+1;
      until i>NumItems(sFiles,',') ;
     
    end;
end;

function TFrmSendMail.ConectarMail:Boolean;
var
  Cm:Boolean;
begin
  Cm:=False;
  try
    idsmtpMail.Disconnect(True);

    if QrConfiguracion.RecordCount=1 then
    begin
      if QrConfiguracion.FieldByName('eSSL').AsInteger=-1 then
      begin
        if QrConfiguracion.FieldByName('sTls').AsString='utNoTLSSupport' then
          idsmtpMail.UseTLS:=utNoTLSSupport;
        if QrConfiguracion.FieldByName('sTls').AsString='utUseExplicitTLS' then
          idsmtpMail.UseTLS:=utUseExplicitTLS;
        if QrConfiguracion.FieldByName('sTls').AsString='utUseImplicitTLS' then
          idsmtpMail.UseTLS:=utUseImplicitTLS;
        if QrConfiguracion.FieldByName('sTls').AsString='utUseRequireTLS' then
          idsmtpMail.UseTLS:=utUseRequireTLS;
      end
      else
         idsmtpMail.UseTLS:=utNoTLSSupport;

      idsmtpMail.Host:=QrConfiguracion.FieldByName('sSmtp').AsString;
      idsmtpMail.Port:=QrConfiguracion.FieldByName('iPuerto').AsInteger;
      idsmtpMail.Username:=QrConfiguracion.FieldByName('sEmail').AsString;
      idsmtpMail.Password:=QrConfiguracion.FieldByName('Pass').AsString;
      dlgProgressAdjuntos.Position:=dlgProgressAdjuntos.Position + 1;
      idsmtpMail.Connect;
      Cm:=idsmtpMail.Connected;
      dlgProgressAdjuntos.Position:=dlgProgressAdjuntos.Position + 1;

    end;
  except
    on e:Exception do
      MessageDlg('Ocurrio el siguiente error: ' + e.Message + ', ' + e.ClassName,mtError,[mbOK],0);

  end;
  Result:=Cm;
end;

procedure TFrmSendMail.dlgProgressAdjuntosProgress(Sender: TObject;
  var AContinue: Boolean);
begin
  if dlgProgressAdjuntos.Max=dlgProgressAdjuntos.Position then
    AContinue:=False;
end;

function TFrmSendMail.AdjuntarFile(ParamFileName: TFileName):Boolean;
begin
  Result:=False;
  TRY
    TIdAttachmentFile.Create(idmsgMail.MessageParts,ParamFileName );
    Result:=True;
  except
    on e:Exception do
      MessageDlg('Ocurrio el siguiente error: ' + e.Message + ', ' + e.ClassName,mtError,[mbOK],0);
  END;
end;

procedure TFrmSendMail.btnAdjuntoClick(Sender: TObject);
begin
  if dlgOpenFile.Execute then
    AdjuntarArchivo(dlgOpenFile.FileName);
end;

procedure TFrmSendMail.btnSendClick(Sender: TObject);
var
  esCorrecto,seGrabo:Boolean;
  msjerror,msjVacio:string;

begin
  if IsOnline then
  begin
    msjerror:='';
    esCorrecto:=True;
    msjVacio:='';
    seGrabo:=False;

    if (QrConfiguracion.FieldByName('sEmail').AsString='') or (not emailValido(QrConfiguracion.FieldByName('sEmail').AsString)) then
    begin
      MessageError('La configuracion del correo de Salida es Incorrecta.');
      esCorrecto:=False;
    end;


    if (TxtEdtReceptor.Text<>'') and (not ValidarCorreos(TxtEdtReceptor.Text,',')) then
    begin
      msjerror:='El campo Para: no tiene un valor valido.';
      esCorrecto:=False;
      TxtEdtReceptor.SetFocus;
    end;

    if (TxtEdtcc.Text<>'') and (not ValidarCorreos(TxtEdtcc.Text,',')) then
    begin
      if msjerror='' then
        msjerror:='El campo Cc no tiene un valor valido.'
      else
        msjerror:=msjerror + #13 + #10 + 'EL campo Cc no tiene un valor valido.';
      esCorrecto:=False;
      TxtEdtcc.SetFocus;
    end;

    if msjerror<>'' then
      MessageError(msjerror);


    if (esCorrecto) and (TxtEdtAsunto.Text='') then
      if MessageDlg('El campo Asunto no tiene datos.' + #13 + #10 + '�Desea Continuar?',
          mtConfirmation,[mbYes,mbNo],0)=mrNo then
      esCorrecto:=False;

    if esCorrecto then
      try
        EnviarMail;
      finally
        connection.idsmtp.Disconnect(true);
        Close;
      end;

  end
  else
    MessageError('No se establece la conexion a internet');
end;

function SendMail(dirOrigen, passservidor, dirdest, cc, cco, asunto, Adjunto, texto: ansistring): boolean;
var
  res: boolean;
  Adj: TIdAttachmentFile;
  cadena: ansiString;

begin

  {connection.idMessage.FromList.EMailAddresses := dirOrigen;
  connection.idMessage.Recipients.EMailAddresses := dirdest;

  if cco <> '' then
    connection.idMessage.BccList.Add.Address := cco;
  if cc <> '' then
    connection.idMessage.CCList.Add.Address := cc;

  connection.idMessage.Subject := asunto;
  connection.idMessage.Body.Clear;
  connection.idMessage.Body.Text := texto;

  if Adjunto <> '' then
    adj := TIdAttachmentfile.Create(connection.idMessage.MessageParts, Adjunto)
    TIdAttachmentFile.Create( idMessage1.MessageParts, cArchivo );
  else
    adj := nil;
    //TIdAttachmentFile
  res := false;

  if passservidor <> '' then
  begin
    connection.idSMTP.Username := dirOrigen;
    connection.idSMTP.Password := passservidor;

    try
      try
        if not connection.idsmtp.Connected then
        begin
          connection.idsmtp.Connect;
          if connection.idsmtp.Connected then
        end;
        connection.idSMTP.Send(connection.IdMessage);
        Application.MessageBox('Mensaje enviado.', 'Aviso', MB_OK + MB_ICONINFORMATION);
        res := true;
        freeandnil(adj);
      except
        on e: eidosslcouldnotloadssllibrary do
        begin
          freeandnil(adj);
          result := SendMail(dirOrigen, passservidor, dirdest, cc, cco, asunto, adjunto, texto);
        end;
      end;
    finally
      connection.idsmtp.Disconnect(true);
    end;
  end;
  }
  result := res;
end;

procedure TFrmSendMail.FormCreate(Sender: TObject);
begin
  DirFiles:='';
  sFiles:='';
  LstLinks:=TStringList.Create;
  IdSSLOpenSSLHeaders.Load;
  dlgProgressAdjuntos.Max:=10;
  dlgProgressAdjuntos.Position:=0;
  dlgProgressAdjuntos.Caption:='Cargando Correo';
  dlgProgressAdjuntos.Show;
end;

procedure TFrmSendMail.FormDestroy(Sender: TObject);
begin
  LstLinks.Destroy;
end;

procedure TFrmSendMail.FormShow(Sender: TObject);
var
  QrDatosMail:TzReadOnlyQuery;
  sTipo:string;
begin
  sTipo:='';
  QrDatosMail:=TZReadOnlyQuery.Create(nil);
  try
    try
      if Tipo=DcReCo then
        sTipo:='Requisicion';

      if Tipo=DcOrCo then
        sTipo:='Orden de Compra';


      QrDatosMail.Connection:=connection.zConnection;
      QrDatosMail.SQL.Text:='select * from doctos_correo where sIdUsuario=:Usuario and eTipo=:Tipo';
      QrDatosMail.ParamByName('Usuario').AsString:=global_usuario;
      QrDatosMail.ParamByName('Tipo').AsString:=sTipo;
      QrDatosMail.Open;
      dlgProgressAdjuntos.Position:=dlgProgressAdjuntos.Position + 1;

      if QrDatosMail.RecordCount=1 then
      begin
        TxtEdtReceptor.Text:=QrDatosMail.FieldByName('sRemitente').AsString;
        TxtEdtCc.Text:= QrDatosMail.FieldByName('sCc').AsString;
        TxtEdtAsunto.Text:=QrDatosMail.FieldByName('sAsunto').AsString;
        RchEdtMensaje.Lines.Add(QrDatosMail.FieldByName('sMensaje').AsString);

      end;

      QrConfiguracion.Active:=False;
      QrConfiguracion.ParamByName('usuario').AsString:=global_Usuario;
      QrConfiguracion.ParamByName('Key').AsString:=sKey;
      QrConfiguracion.Open;
      dlgProgressAdjuntos.Position:=dlgProgressAdjuntos.Position + 1;

      if (IsOnline) and (ConectarMail) then
      begin
        dlgProgressAdjuntos.Position:=dlgProgressAdjuntos.Position + 5;

        Self.Caption:= QrConfiguracion.FieldByName('sEmail').AsString + '. CONECTADO';
        if sFiles<>'' then
          tmrAdjuntos.Enabled:=True;
      end
      else
        Self.Caption:= QrConfiguracion.FieldByName('sEmail').AsString + '. SIN CONEXION';

    except
      on e:Exception do
        MessageDlg('Ocurrio el siguiente error: ' + e.Message + ', ' + e.ClassName,mtError,[mbOK],0);

    end;
  finally
    QrDatosMail.Destroy;
  end;

end;

end.
