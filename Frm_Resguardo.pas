unit Frm_Resguardo;

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
  cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxCheckGroupBox, dxLayoutcxEditAdapters, dxLayoutContainer,
  dxLayoutControl, ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxDBLookupComboBox, dxLayoutControlAdapters, Menus,
  StdCtrls, cxButtons, ZAbstractRODataset, ZDataset;

type
  TFrmResguardo = class(TForm)
    GBx1: TcxGroupBox;
    GBx2: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    ChkGbxFechas: TdxCheckGroupBox;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    DtEdtFechaI: TcxDateEdit;
    dxLayoutControl2Item1: TdxLayoutItem;
    DtEdtFechaT: TcxDateEdit;
    dxLayoutControl2Item2: TdxLayoutItem;
    ChkGbxEquipos: TdxCheckGroupBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    ChkGbxEmpleado: TdxCheckGroupBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    LCmbEmpleados: TcxLookupComboBox;
    dxLayoutControl4Item1: TdxLayoutItem;
    LCmbEquipos: TcxLookupComboBox;
    dxLayoutControl3Item1: TdxLayoutItem;
    btnConsulta: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    QrEquipos: TZReadOnlyQuery;
    dsEquipos: TDataSource;
    QrEmpleados: TZReadOnlyQuery;
    dsEmpleados: TDataSource;
    QrConsulta: TZReadOnlyQuery;
    dsConsulta: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    cxGrid1DBTableView1Column12: TcxGridDBColumn;
    cxGrid1DBTableView1Column13: TcxGridDBColumn;
    cxGrid1DBTableView1Column14: TcxGridDBColumn;
    btnExcel: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    procedure ChkGbxEquiposPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ChkGbxEmpleadoPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultaClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmResguardo: TFrmResguardo;

implementation

uses frm_connection, global, ExportaExcel;

{$R *.dfm}

procedure TFrmResguardo.btnConsultaClick(Sender: TObject);
var
  Next:Boolean;
begin
  Next:=True;
  if (ChkGbxEquipos.CheckBox.Checked) and (LCmbEquipos.EditValue=null)  then
  begin
    ShowMessage('Debe elegir un Equipo');
    LCmbEquipos.SetFocus;
    Next:=False;
  end;

  if (ChkGbxEmpleado.CheckBox.Checked) and (LCmbEmpleados.EditValue=null)  then
  begin
    ShowMessage('Debe elegir un Empleado');
    LCmbEmpleados.SetFocus;
    Next:=False;
  end;

  if Next then
  begin
    QrConsulta.Active:=False;
    if ChkGbxFechas.CheckBox.Checked then
    begin
      QrConsulta.ParamByName('FechaI').AsDate:=DtEdtFechaI.Date;
      QrConsulta.ParamByName('FechaT').AsDate:=DtEdtFechaT.Date;

    end
    else
      QrConsulta.ParamByName('FechaI').AsInteger:=-1;

    if ChkGbxEquipos.CheckBox.Checked then
      QrConsulta.ParamByName('equipo').AsString:=LCmbEquipos.EditValue
    else
      QrConsulta.ParamByName('equipo').AsInteger:=-1;

    if ChkGbxEmpleado.CheckBox.Checked then
      QrConsulta.ParamByName('Empleado').AsString:=LCmbEmpleados.EditValue
    else
      QrConsulta.ParamByName('Empleado').AsInteger:=-1;

    QrConsulta.Open;



  end;


end;

procedure TFrmResguardo.btnExcelClick(Sender: TObject);
var
   QueryImagen: TZQuery;
begin
  QueryImagen := TZQuery.Create(Self);
  try


    QueryImagen.Connection := connection.ZConnection;
    QueryImagen.Active:=False;
    QueryImagen.SQL.Clear;
    QueryImagen.SQL.Add('SELECT bImagen FROM configuracion WHERE sContrato=:sContrato');
    QueryImagen.ParamByName('sContrato').AsString:=global_contrato;
    QueryImagen.Open;

    if QrConsulta.RecordCount>0 then
      ExportExcelPersonalizado(QueryImagen,cxGrid1DBTableView1,'Equipos','Resguardo de equipos por personal');


  finally
    QueryImagen.Destroy;
  end;

end;

procedure TFrmResguardo.ChkGbxEmpleadoPropertiesChange(Sender: TObject);
begin
  if ChkGbxEmpleado.CheckBox.Checked then
  begin
    if QrEmpleados.Active then
      QrEmpleados.Refresh
    else
      QrEmpleados.Open;

  end
  else
    QrEmpleados.close;
end;

procedure TFrmResguardo.ChkGbxEquiposPropertiesChange(Sender: TObject);
begin
  if ChkGbxEquipos.CheckBox.Checked then
  begin
    if QrEquipos.Active then
      QrEquipos.Refresh
    else
      QrEquipos.Open;
  end
  else
    QrEquipos.Close;
end;

procedure TFrmResguardo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmResguardo.FormCreate(Sender: TObject);
begin
  DtEdtFechaI.Date:=dxGetStartDateOfMonth(Now);//EncodeDate(CurrentYear,dxGetMonthNumber(Now),1);
  DtEdtFechaT.Date:=dxGetEndDateOfMonth(Now,true);//EncodeDate(CurrentYear,dxGetMonthNumber(Now),DayOfTheMonth(EndOfAMonth(CurrentYear,dxGetMonthNumber(Now))));

end;

procedure TFrmResguardo.FormShow(Sender: TObject);
begin
  {QrEmpleados.Active := False;
  QrEmpleados.Params.ParamByName('Contrato').DataType := ftString ;
  QrEmpleados.Params.ParamByName('Contrato').Value    := Global_Contrato ;}

end;

end.