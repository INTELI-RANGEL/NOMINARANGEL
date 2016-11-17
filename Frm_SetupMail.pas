unit Frm_SetupMail;

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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxGroupBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, cxTextEdit, cxMemo, cxRichEdit,
  dxLayoutControlAdapters, Menus, StdCtrls, cxButtons, NxAutoCompletion,
  cxMaskEdit, cxDropDownEdit, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxSpinEdit, cxDBEdit, cxGridCustomLayoutView, cxGridCardView, cxGridDBCardView,
  AdvShape, ExtCtrls, cxLabel, cxCheckBox, dxCheckGroupBox, dxDBCheckGroupBox;

type
  TFrmSetupMail = class(TForm)
    CxPageMail: TcxPageControl;
    cTsConfiguracion: TcxTabSheet;
    cTsOpciones: TcxTabSheet;
    GBx2: TcxGroupBox;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    TxtEdtRecibe: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    TxtEdtCc: TcxTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    TxtEdtAsunto: TcxTextEdit;
    RchEdtFirma: TcxRichEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    btnAdd: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    NxAutoCompletion1: TNxAutoCompletion;
    cbbTipo: TcxComboBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    QCorreos: TZQuery;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    DbTxtEdtSmtp: TcxDBTextEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    DbSpnEdtPuerto: TcxDBSpinEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    DbTxtEdtEmail: TcxDBTextEdit;
    dxLayoutControl2Item3: TdxLayoutItem;
    DbCmbPassw: TcxDBComboBox;
    dxLayoutControl2Item5: TdxLayoutItem;
    QConfiguracion: TZQuery;
    dsConfiguracion: TDataSource;
    dsCorreos: TDataSource;
    TxtEdtPass: TcxTextEdit;
    dxLayoutControl2Item4: TdxLayoutItem;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1Row1: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Row2: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Row3: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Row4: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Row5: TcxGridDBCardViewRow;
    Panel1: TPanel;
    dxLayoutControl2Item6: TdxLayoutItem;
    cxlblMsj: TcxLabel;
    dxLayoutControl2Item7: TdxLayoutItem;
    DbChkGrBxSSL: TdxDBCheckGroupBox;
    dxLayoutControl2Item9: TdxLayoutItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    DbCmbSSL: TcxDBComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure DbTxtEdtEmailExit(Sender: TObject);
    procedure cxGrid1DBCardView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    const
      skey='$@intelcode';//No Cambiar, es la llave para desencriptar

    var
      sPasswOrig:string;
  public
    { Public declarations }
    sIdUser:string;
  end;

var
  FrmSetupMail: TFrmSetupMail;

implementation

uses frm_connection, UFunctionsGHH;

{$R *.dfm}

procedure TFrmSetupMail.btnAddClick(Sender: TObject);
var
  esGrabable,seGrabo:Boolean;
  msjerror,msjVacio:string;

begin
  msjerror:='';
  esGrabable:=True;
  msjVacio:='';
  seGrabo:=False;
  if (TxtEdtRecibe.Text<>'') and (not ValidarCorreos(TxtEdtRecibe.Text,',')) then
  begin
    msjerror:='El campo Para: no tiene un valor valido.';
    esGrabable:=False;
    TxtEdtRecibe.SetFocus;
  end;

  if (TxtEdtcc.Text<>'') and (not ValidarCorreos(TxtEdtcc.Text,',')) then
  begin
    if msjerror='' then
      msjerror:='El campo Cc no tiene un valor valido.'
    else
      msjerror:=msjerror + #13 + #10 + 'EL campo Cc no tiene un valor valido.';
    esGrabable:=False;
    TxtEdtcc.SetFocus;
  end;

  if msjerror<>'' then
    MessageError(msjerror);

  if (esGrabable) And ((TxtEdtRecibe.Text='')) then
    if MessageDlg('El campo Para: no tiene datos.' + #13 + #10 + '�Desea Continuar?',
          mtConfirmation,[mbYes,mbNo],0)=mrNo then
      esGrabable:=False;

  if esGrabable then
  begin
    if not QCorreos.Locate('sIdUsuario;eTipo',VarArrayOf([sIdUser,cbbTipo.Text]),[]) then
    begin
      QCorreos.Append;
      QCorreos.FieldByName('sIdUsuario').AsString:=sIdUser;
      QCorreos.FieldByName('etipo').AsString:=cbbTipo.Text;
      QCorreos.FieldByName('sRemitente').AsString:=TxtEdtRecibe.Text;
      QCorreos.FieldByName('sCc').AsString:=TxtEdtCc.Text;
      QCorreos.FieldByName('sAsunto').AsString:=TxtEdtAsunto.Text;
      QCorreos.FieldByName('sMensaje').AsString:=RchEdtFirma.Lines.Text;
      QCorreos.Post;
      seGrabo:=True;
    end
    else
    begin
        if MessageDlg('Ya existe una configuracion para ese documento, se sobreescribiran los datos.' + #13 + #10 + '�Desea Continuar?',
           mtConfirmation,[mbYes,mbNo],0)=mrYes then
        begin
          QCorreos.Edit;
          QCorreos.FieldByName('sRemitente').AsString:=TxtEdtRecibe.Text;
          QCorreos.FieldByName('sCc').AsString:=TxtEdtCc.Text;
          QCorreos.FieldByName('sAsunto').AsString:=TxtEdtAsunto.Text;
          QCorreos.FieldByName('sMensaje').AsString:=RchEdtFirma.Lines.Text;
          QCorreos.Post;
          seGrabo:=True;
        end;

    end;

    if seGrabo then
    begin
      TxtEdtRecibe.Text:='';
      TxtEdtCc.Text:='';
      TxtEdtAsunto.Text:='';
      RchEdtFirma.Lines.Clear;
    end;
  end;
end;

procedure TFrmSetupMail.cxGrid1DBCardView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if QCorreos.RecordCount>0 then
  begin
    cbbTipo.Text:=QCorreos.FieldByName('etipo').AsString;
    TxtEdtRecibe.Text:=QCorreos.FieldByName('sRemitente').AsString;
    TxtEdtCc.Text:=QCorreos.FieldByName('sCc').AsString;
    TxtEdtAsunto.Text:=QCorreos.FieldByName('sAsunto').AsString;
    RchEdtFirma.Lines.Text:=QCorreos.FieldByName('sMensaje').AsString;
  end;
end;

procedure TFrmSetupMail.DbTxtEdtEmailExit(Sender: TObject);
begin
  if (DbTxtEdtEmail.Text<>'') and  (not emailValido(DbTxtEdtEmail.Text)) then
    MessageError('EL campo email no tiene un valor valido.');
end;

procedure TFrmSetupMail.FormClose(Sender: TObject; var Action: TCloseAction);
var
  PaswPost:Boolean;

begin
  PaswPost:=False;
  if (QConfiguracion.State=dsInsert) and
      (Length(TxtEdtPass.Text)>0) then
    PaswPost:=True;

  if (QConfiguracion.State=dsEdit) and (TxtEdtPass.Text<>sPasswOrig) then
    PaswPost:=True;
  QConfiguracion.FieldByName('ilargopass').AsInteger:=Length(TxtEdtPass.Text);
  QConfiguracion.Post;

  if PaswPost then
  begin
    connection.zCommand.Active:=False;
    connection.zCommand.SQL.Text:='update configuracion_correo set sPassword=AES_ENCRYPT(:pass,:Key) where sIdUsuario=:Usuario ';
    connection.zCommand.ParamByName('usuario').AsString:= sIdUser;
    connection.zCommand.ParamByName('pass').AsString:=TxtEdtPass.Text;
    connection.zCommand.ParamByName('key').AsString:= skey;
    connection.zCommand.ExecSQL;
  end;
end;

procedure TFrmSetupMail.FormShow(Sender: TObject);
begin
  QConfiguracion.Active:=False;
  QConfiguracion.ParamByName('usuario').AsString:=sIdUser;
  QConfiguracion.ParamByName('Key').AsString:=sKey;
  QConfiguracion.Open;
  if QConfiguracion.RecordCount=0 then
  begin
    QConfiguracion.Append;
    QConfiguracion.FieldByName('sIdUsuario').AsString:=sIdUser;
    QConfiguracion.FieldByName('sSmtp').AsString:='';
    QConfiguracion.FieldByName('iPuerto').AsInteger:=25;
    QConfiguracion.FieldByName('sEmail').AsString:='';
    QConfiguracion.FieldByName('sPassword').AsString:='';
    QConfiguracion.FieldByName('eGrabarPassw').AsString:='No';
    QConfiguracion.FieldByName('ilargopass').AsInteger:=0;
    sPasswOrig:='';
  end
  else
  begin
    sPasswOrig:=QConfiguracion.FieldByName('pass').AsString;
    TxtEdtPass.Text:=sPasswOrig;
    QConfiguracion.Edit;
  end;

  QCorreos.Active:=False;
  QCorreos.ParamByName('usuario').AsString:=sIdUser;
  QCorreos.Open;



end;

end.