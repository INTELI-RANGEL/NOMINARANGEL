unit frm_ListadeAsistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  NxDBColumns, NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid,
  NxDBGrid, frm_barra, ComCtrls, AdvGlowButton, NxColumnClasses, frm_connection, NxGrid,
  frxClass, frxDBSet, Menus, UFunctionsGHH, utilerias, global, unittbotonespermisos,
  unitValidacion, unitactivapop, ExtCtrls, RxMemDS, DateUtils, Mask, rxToolEdit,
  JvExMask, DBCtrls, JvSpin, JvExControls, JvLabel, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxGroupBox, cxSplitter, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,cxDateUtils,
  cxGridCustomPopupMenu, cxGridPopupMenu, JvToolEdit, cxCheckBox, cxLabel,
  cxCurrencyEdit, cxDBLookupComboBox;

Type
  EValidaciones = class(Exception)
  end;

type
  TfrmListadeAsistencia = class(TForm)
    zqLista: TZQuery;
    ds_Lista: TDataSource;
    zAsistencia: TZQuery;
    ds_Asistencia: TDataSource;
    PopupMenu1: TPopupMenu;
    ImprimirLista1: TMenuItem;
    dsLista: TfrxDBDataset;
    rDiario: TfrxReport;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    rbgOpciones: TRadioGroup;
    rbGenAsistencia: TRadioButton;
    rbAsistencia: TRadioButton;
    btnImprimir: TAdvGlowButton;
    Label5: TLabel;
    ds_ListaXRango: TfrxDBDataset;
    zQListaXRango: TRxMemoryData;
    zQListaXRangoIdEmpleado: TStringField;
    zQListaXRangoNombre: TStringField;
    zQListaXRangomes: TIntegerField;
    zQListaXRangoanio: TIntegerField;
    tdFechaI: TJvDateEdit;
    tdFechaF: TJvDateEdit;
    frxEstDiarioEmp: TfrxDBDataset;
    ZQEstDiarioEmp: TZQuery;
    ZQEstDiarioEmpiIdEstatusDiario: TIntegerField;
    ZQEstDiarioEmpsDescripcion: TStringField;
    ZQEstDiarioEmpiColor: TIntegerField;
    zQListaXRangodiaest1: TVariantField;
    zQListaXRangodiaest2: TVariantField;
    zQListaXRangodiaest3: TVariantField;
    zQListaXRangodiaest4: TVariantField;
    zQListaXRangodiaest5: TVariantField;
    zQListaXRangodiaest6: TVariantField;
    zQListaXRangodiaest7: TVariantField;
    zQListaXRangodiaest8: TVariantField;
    zQListaXRangodiaest9: TVariantField;
    zQListaXRangodiaest11: TVariantField;
    zQListaXRangodiaest12: TVariantField;
    zQListaXRangodiaest13: TVariantField;
    zQListaXRangodiaest14: TVariantField;
    zQListaXRangodiaest15: TVariantField;
    zQListaXRangodiaest16: TVariantField;
    zQListaXRangodiaest17: TVariantField;
    zQListaXRangodiaest18: TVariantField;
    zQListaXRangodiaest19: TVariantField;
    zQListaXRangodiaest20: TVariantField;
    zQListaXRangodiaest21: TVariantField;
    zQListaXRangodiaest22: TVariantField;
    zQListaXRangodiaest23: TVariantField;
    zQListaXRangodiaest24: TVariantField;
    zQListaXRangodiaest26: TVariantField;
    zQListaXRangodiaest28: TVariantField;
    zQListaXRangodiaest29: TVariantField;
    zQListaXRangodiaest30: TVariantField;
    zQListaXRangodiaest31: TVariantField;
    zQListaXRangodiaest10: TVariantField;
    zQListaXRangodiaest25: TVariantField;
    zQListaXRangodiaest27: TVariantField;
    Panel2: TPanel;
    Panel3: TPanel;
    label1: TLabel;
    Label2: TLabel;
    tdFecha: TDateTimePicker;
    Panel4: TPanel;
    btGuardar2: TAdvGlowButton;
    Panel5: TPanel;
    NXLista: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxNombre: TNxTextColumn;
    NxAsistencia: TNxCheckBoxColumn;
    NxFecha: TNxTextColumn;
    NxEntrada: TNxTextColumn;
    NxSalida: TNxTextColumn;
    Splitter1: TSplitter;
    DsEstDiarioEmp: TDataSource;
    zQListaXRangoasistencias: TIntegerField;
    zQListaXRangofaltas: TIntegerField;
    zQListaXRangoaux1: TStringField;
    zQListaXRangoaux2: TStringField;
    zQListaXRangoaux3: TStringField;
    zQListaXRangoaux4: TStringField;
    zQListaXRangoaux5: TStringField;
    zQListaXRangoaux6: TStringField;
    zQListaXRangoaux7: TStringField;
    zQListaXRangoaux8: TStringField;
    zQListaXRangoaux9: TStringField;
    zQListaXRangoaux10: TStringField;
    zQListaXRangoaux11: TStringField;
    zQListaXRangoaux12: TStringField;
    zQListaXRangoaux13: TStringField;
    zQListaXRangoaux14: TStringField;
    zQListaXRangoaux15: TStringField;
    zQListaXRangoaux16: TStringField;
    zQListaXRangoaux17: TStringField;
    zQListaXRangoaux18: TStringField;
    zQListaXRangoaux19: TStringField;
    zQListaXRangoaux20: TStringField;
    zQListaXRangoaux21: TStringField;
    zQListaXRangoaux22: TStringField;
    zQListaXRangoaux23: TStringField;
    zQListaXRangoaux24: TStringField;
    zQListaXRangoaux25: TStringField;
    zQListaXRangoaux26: TStringField;
    zQListaXRangoaux27: TStringField;
    zQListaXRangoaux28: TStringField;
    zQListaXRangoaux29: TStringField;
    zQListaXRangoaux30: TStringField;
    zQListaXRangoaux31: TStringField;
    ImportarDatosdelDiaAnterior1: TMenuItem;
    ZQImpDatosAnt: TZQuery;
    zQListaXRangodiact1: TVariantField;
    zQListaXRangodiact2: TVariantField;
    zQListaXRangodiact3: TVariantField;
    zQListaXRangodiact4: TVariantField;
    zQListaXRangodiact5: TVariantField;
    zQListaXRangodiact6: TVariantField;
    zQListaXRangodiact7: TVariantField;
    zQListaXRangodiact8: TVariantField;
    zQListaXRangodiact9: TVariantField;
    zQListaXRangodiact10: TVariantField;
    zQListaXRangodiact11: TVariantField;
    zQListaXRangodiact12: TVariantField;
    zQListaXRangodiact13: TVariantField;
    zQListaXRangodiact14: TVariantField;
    zQListaXRangodiact15: TVariantField;
    zQListaXRangodiact16: TVariantField;
    zQListaXRangodiact17: TVariantField;
    zQListaXRangodiact18: TVariantField;
    zQListaXRangodiact19: TVariantField;
    zQListaXRangodiact20: TVariantField;
    zQListaXRangodaict21: TVariantField;
    zQListaXRangodiact22: TVariantField;
    zQListaXRangodiact23: TVariantField;
    zQListaXRangodiact24: TVariantField;
    zQListaXRangodiact25: TVariantField;
    zQListaXRangodiact26: TVariantField;
    zQListaXRangodiact27: TVariantField;
    zQListaXRangodiact28: TVariantField;
    zQListaXRangodiact29: TVariantField;
    zQListaXRangodiact30: TVariantField;
    zQListaXRangodiact31: TVariantField;
    zqzQListaXRangoApellido: TStringField;
    btnTodos: TcxButton;
    nxCategoria: TNxTextColumn;
    nxSalario: TNxTextColumn;
    zqrReporte: TZQuery;
    zq1: TStringField;
    zq2: TStringField;
    dtfld1: TDateField;
    zq3: TStringField;
    intgrfld1: TIntegerField;
    zq4: TStringField;
    zq5: TStringField;
    zq6: TStringField;
    zq7: TStringField;
    intgrfld2: TIntegerField;
    zq8: TStringField;
    zq9: TStringField;
    zq10: TStringField;
    fltfldzqrReportesumtotal: TFloatField;
    mniImprimirListadeldia1: TMenuItem;
    frxlista2: TfrxDBDataset;
    zqzQListaXRangocategoria: TStringField;
    fltfldzQListaXRangodia1: TFloatField;
    fltfldzQListaXRangodia2: TFloatField;
    fltfldzQListaXRangodia3: TFloatField;
    fltfldzQListaXRangodia4: TFloatField;
    fltfldzQListaXRangodia5: TFloatField;
    fltfldzQListaXRangodia6: TFloatField;
    fltfldzQListaXRangodia7: TFloatField;
    fltfldzQListaXRangodia8: TFloatField;
    fltfldzQListaXRangodia9: TFloatField;
    fltfldzQListaXRangodia10: TFloatField;
    fltfldzQListaXRangodia11: TFloatField;
    fltfldzQListaXRangodia12: TFloatField;
    fltfldzQListaXRangodia13: TFloatField;
    fltfldzQListaXRangodia14: TFloatField;
    fltfldzQListaXRangodia15: TFloatField;
    fltfldzQListaXRangodia16: TFloatField;
    fltfldzQListaXRangodia17: TFloatField;
    fltfldzQListaXRangodia18: TFloatField;
    fltfldzQListaXRangodia19: TFloatField;
    fltfldzQListaXRangodia20: TFloatField;
    fltfldzQListaXRangodia21: TFloatField;
    fltfldzQListaXRangodia22: TFloatField;
    fltfldzQListaXRangodia23: TFloatField;
    fltfldzQListaXRangodia24: TFloatField;
    fltfldzQListaXRangodia25: TFloatField;
    fltfldzQListaXRangodia26: TFloatField;
    fltfldzQListaXRangodia27: TFloatField;
    fltfldzQListaXRangodia28: TFloatField;
    fltfldzQListaXRangodia29: TFloatField;
    fltfldzQListaXRangodia30: TFloatField;
    fltfldzQListaXRangodia31: TFloatField;
    InsertarListadePersonal1: TMenuItem;
    zQListaXRangotitulocargo: TStringField;
    zQListaXRangotitulodepartamento: TStringField;
    zQListaXRangoFecha1: TDateField;
    zQListaXRangoFecha2: TDateField;
    zQListaXRangoFecha3: TDateField;
    zQListaXRangoFecha4: TDateField;
    zQListaXRangoFecha5: TDateField;
    zQListaXRangoFecha6: TDateField;
    zQListaXRangoFecha7: TDateField;
    zQListaXRangoFecha8: TDateField;
    zQListaXRangoFecha9: TDateField;
    zQListaXRangoFecha10: TDateField;
    zQListaXRangoFecha11: TDateField;
    zQListaXRangoFecha12: TDateField;
    zQListaXRangoFecha13: TDateField;
    zQListaXRangoFecha14: TDateField;
    zQListaXRangoFecha15: TDateField;
    zQListaXRangoFecha16: TDateField;
    tsComentario: TcxTextEdit;
    nxstatus: TNxListColumn;
    EliminarAsistencia1: TMenuItem;
    Spl1: TcxSplitter;
    lbmuestranombre: TLabel;
    QNominas: TZQuery;
    dsNominas: TDataSource;
    pmNominas: TPopupMenu;
    mniAddCompleta: TMenuItem;
    Label6: TLabel;
    Edit1: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    Grid_1: TcxGrid;
    cxgGrid1DBTableView1: TcxGridDBTableView;
    cxgGrid1Grid1Level1: TcxGridLevel;
    qryDetNomina: TZQuery;
    dsListadoRaya: TDataSource;
    col_id: TcxGridDBColumn;
    col_nombrelista: TcxGridDBColumn;
    col_descripcion: TcxGridDBColumn;
    col_fechainicio: TcxGridDBColumn;
    col_fechafinal: TcxGridDBColumn;
    col_totalpersonal: TcxGridDBColumn;
    col_montototal: TcxGridDBColumn;
    col_Frente: TcxGridDBColumn;
    qryOrdenes: TZQuery;
    dsOrdenes: TDataSource;
    zqImp: TZQuery;
    Frx1: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure tdFechaChange(Sender: TObject);
    procedure NXListaSelectCell(Sender: TObject; ACol, ARow: Integer);

    procedure llenarfechas();
    procedure ImprimirLista1Click(Sender: TObject);
    procedure NXListaBeforeEdit(Sender: TObject; ACol, ARow: Integer;
      var Accept: Boolean);
    procedure NXListaEditExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    function Imprime_Reporte_Listas_X_Rango() : Boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure llenaGrid (Zaux : Tzquery);
    procedure NXListaHeaderClick(Sender: TObject; ACol: Integer);

    procedure btGuardar2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure ImportarDatosdelDiaAnterior1Click(Sender: TObject);

    procedure mniImprimirListadeldia1Click(Sender: TObject);
    procedure rDiarioGetValue(const VarName: string; var Value: Variant);
    procedure InsertarListadePersonal1Click(Sender: TObject);

    procedure btnTodosClick(Sender: TObject);
    procedure EliminarAsistencia1Click(Sender: TObject);
    procedure QNominasAfterScroll(DataSet: TDataSet);
    procedure mniAddCompletaClick(Sender: TObject);
    procedure pmNominasPopup(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure qryDetNominaBeforeInsert(DataSet: TDataSet);
    procedure qryDetNominaAfterInsert(DataSet: TDataSet);
    procedure qryDetNominaAfterPost(DataSet: TDataSet);
    procedure cxgGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxgGrid1DBTableView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxgGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
     sMenuP: String;
     Sentencia: string;
     IsOpen:Boolean;
    imprimir_global: Boolean;
  public
    { Public declarations }
  end;

var
  frmListadeAsistencia: TfrmListadeAsistencia;
  todos : Boolean;
  Aux2 : Integer ;
  folior : string ;

implementation

{$R *.dfm}


procedure TfrmListadeAsistencia.AdvGlowButton1Click(Sender: TObject);

begin
  imprimir_global := true; //bandera creada para saber si el formato es global o individual
  btnImprimir.Click;
end;

procedure TfrmListadeAsistencia.AdvGlowButton2Click(Sender: TObject);
begin
  imprimir_global := false; //bandera creada para saber si el formato es global o individual
  btnImprimir.Click;
end;

procedure TfrmListadeAsistencia.btGuardar2Click(Sender: TObject);
var
  I, x, asistencia : Integer;
  Efecha: tdatetime;
  codigo : String;
begin
        NXLista.EndUpdate;
        Efecha := tdFecha.Date;
        zAsistencia.open ;
        x := NXLista.RowCount;

        for i := 0 to x-1 do begin
          if NXLista.Cells[2, i] = 'True' then
            begin
               zAsistencia.Append;
                zAsistencia.FieldByName('sIdEmpleado').AsString      := NXLista.Cells[0, i];
                zAsistencia.FieldByName('iIdEstatusDiario').AsInteger := 1 ;
                zAsistencia.FieldByName('idLista').AsInteger         := qryDetNomina.FieldByName('iId').AsInteger ;
                zAsistencia.FieldByName('sAsistencia').AsString      := 'Si' ;
                zAsistencia.FieldByName('sEntrada').AsString         := NXLista.Cells[4, i];
                zAsistencia.FieldByName('sSalida').AsString          := NXLista.Cells[5, i];
                zAsistencia.FieldByName('dFecha').AsDateTime         := Efecha;
                zAsistencia.Post;
            end;
        end;
        Showmessage('La Lista de Asistencia se ha Actualizado Correctamente');
        zqLista.Refresh;
        NXLista.SelectedRow:=0;
        NXLista.setfocus;

end;

procedure TfrmListadeAsistencia.btnImprimirClick(Sender: TObject);
Var
Fecha : TDate;
Dia, Mes, Anio : Word  ;
Begin
  if Imprime_Reporte_Listas_X_Rango() then
  begin
    rDiario.PreviewOptions.MDIChild := False ;
    rDiario.PreviewOptions.Modal := True ;
    rDiario.PreviewOptions.Maximized := lCheckMaximized () ;
    rDiario.PreviewOptions.ShowCaptions := False ;
    rDiario.Previewoptions.ZoomMode := zmPageWidth ;

    Fecha := tdFechaF.Date;
    DecodeDate(Fecha, Anio, Mes, Dia);

   if rbGenAsistencia.Checked then
    begin
         if not FileExists(Global_Files + global_miReporte +'_quincenal2.fr3') then
         begin
           showmessage('El archivo de reporte '+global_Mireporte+'_quincenal2.fr3 no existe, notifique al administrador del sistema');
           exit;
         end
         else
         begin
           rDiario.LoadFromFile(Global_Files+global_miReporte +'_quincenal2.fr3');
           rDiario.ShowReport;  //(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
         end;
    end;

    if rbAsistencia.Checked then
    begin
         if IntToStr(Dia)='31' then
           begin
            if not FileExists(Global_Files + global_miReporte +'_quincenal3.fr3') then
               begin
                 showmessage('El archivo de reporte '+global_Mireporte+'_quincenal3.fr3 no existe, notifique al administrador del sistema');
                 exit;
               end
             else
               begin
                  rDiario.LoadFromFile(Global_Files+global_miReporte +'_quincenal3.fr3');
                  rDiario.ShowReport;  //(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
               end;
           end;

         if IntToStr(Dia)<>'31' then
           begin
            if not FileExists(Global_Files + global_miReporte +'_quincenal.fr3') then
               begin
                 showmessage('El archivo de reporte '+global_Mireporte+'_quincenal.fr3 no existe, notifique al administrador del sistema');
                 exit;
               end
             else
               begin
                  rDiario.LoadFromFile(Global_Files+global_miReporte +'_quincenal.fr3');
                  rDiario.ShowReport;  //(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
               end;
           end;
    end;

    if connection.QryBusca.SQL.Text <> sentencia then
    begin
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add(sentencia);
      connection.QryBusca.Open;
    end;
  end;
end;

procedure TfrmListadeAsistencia.btnTodosClick(Sender: TObject);
var
   i : integer;
begin
    zqLista.First;
    i:= 0;
    while not zqLista.Eof do
    begin
        NXLista.Cells[2, i] := 'True';
        inc(i);
        zqLista.Next;
    end;
    zqLista.First;
end;


procedure TfrmListadeAsistencia.cxgGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 llenarfechas ;
end;

procedure TfrmListadeAsistencia.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 // #8 is Backspace
  if not (Key in [#8, '0'..'9']) then begin
    // Discard the key
    Key := #0;
  end;
end;

procedure TfrmListadeAsistencia.EliminarAsistencia1Click(Sender: TObject);
begin
     With connection.zCommand do
       begin
           Active := False;
           Sql.Clear ;
           Sql.Add('DELETE FROM rh_asistencia Where sIdEmpleado =:id') ;
           ParamByName('id').AsString       := NXLista.Cells[0, NXLista.LastAddedRow] ;
           ExecSQL ;
       end ;
end;

procedure TfrmListadeAsistencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmListadeAsistencia.FormCreate(Sender: TObject);
var
  I: Integer;
  aCol: TcxGridDBColumn;
begin
 Sentencia := '';
 Sentencia :='select * from rh_estatusdiarioempleados';


 QNominas.Active:=false;
 QNominas.ParamByName('Contrato').Value := Global_Contrato ;
 QNominas.Active:=true;
 QNominas.Refresh;

end;

procedure TfrmListadeAsistencia.FormShow(Sender: TObject);
var
  Efecha: tdatetime;
  mes, dia, a�o :Word;
  primerdia : tdate;
begin
  rbAsistencia.Checked := true ;

  qryDetNomina.Active := False ;
  qryDetNomina.Params.ParamByName('Contrato').AsString := global_contrato ;
  qryDetNomina.Open ;
  if qryDetNomina.RecordCount > 0 then
  begin
    tdFechaI.Date  := qryDetNomina.FieldByName('dFechaInicio').AsDateTime ;
    tdFechaF.Date  := qryDetNomina.FieldByName('dFechaFinal').AsDateTime ;
   end;

  qryOrdenes.Active := False ;
  qryOrdenes.Params.ParamByName('Contrato').asString := global_contrato ;
  qryOrdenes.Open ;

  Efecha:=date;
  tdFecha.date:=date;

  tdFecha.OnChange(Sender) ;
end;

procedure TfrmListadeAsistencia.ImprimirLista1Click(Sender: TObject);
var
Efecha, fechaf: tdatetime;
begin
  try
    ShortDateFormat := 'yyyy-mm-dd';
    Efecha := tdFechaI.Date;
    fechaf := tdFechaf.Date ;
    zqrReporte.Active:=false;
    zqrReporte.ParamByName('contrato').AsString          := global_contrato ;
    zqrReporte.ParamByName('fecha').AsDate               :=Efecha;
    zqrReporte.ParamByName('fecha2').AsDate              :=fechaf;
    zqrReporte.ParamByName('iIdEstatusDiario').AsInteger := -1;
    zqrReporte.ParamByName('sAsistencia').AsString       := '-1';
    zqrReporte.ParamByName('sSalida').AsString           := '-1';
    zqrReporte.ParamByName('sEntrada').AsString          := '-1';
    zqrReporte.ParamByName('sIdEmpleado').AsString       := '-1';
    zqrReporte.ParamByName('sNombreCompleto').AsString   := '-1';

    zqrReporte.Open;

    rDiario.PreviewOptions.MDIChild := False ;
    rDiario.PreviewOptions.Modal := True ;
    rDiario.PreviewOptions.Maximized := lCheckMaximized () ;
    rDiario.PreviewOptions.ShowCaptions := False ;
    rDiario.Previewoptions.ZoomMode := zmPageWidth ;

    if not FileExists(Global_Files + global_miReporte +'_repcategorias.fr3') then
     begin
       showmessage('El archivo de reporte '+global_Mireporte+'_repcategorias.fr3 no existe, notifique al administrador del sistema');
       exit;
     end
     else
     begin
       rDiario.LoadFromFile(Global_Files + global_miReporte +'_repcategorias.fr3') ;
       rDiario.ShowReport;  //(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
     end;

  except
  on e:exception do
    begin
      MessageDlg('ha ocurrido un error inesperado del sistema, Error: '+#10+#10+e.Message, mterror, [mbok], 0);
    end;
  end;

end;

procedure TfrmListadeAsistencia.InsertarListadePersonal1Click(Sender: TObject);
begin
    ZQImpDatosAnt.Active:=false;
    ZQImpDatosAnt.ParamByName('Contrato').AsString          := Global_Contrato ;
    ZQImpDatosAnt.ParamByName('fecha').AsDate               :=-1;

    ZQImpDatosAnt.ParamByName('sAsistencia').AsString       := '-1';

    ZQImpDatosAnt.ParamByName('sIdEmpleado').AsString       := '-1';

    ZQImpDatosAnt.Open;

    llenaGrid(ZQImpDatosAnt);
end;


procedure TfrmListadeAsistencia.NXListaBeforeEdit(Sender: TObject; ACol,
  ARow: Integer; var Accept: Boolean);
begin
//ShortDateFormat := 'HH:mm';
end;

procedure TfrmListadeAsistencia.NXListaEditExit(Sender: TObject);
var
formattedDate: string;
begin
    DateTimeToString(formattedDate, 't', StrToTimeDef( NXLista.Cells[5, NXLista.SelectedRow], StrToTime( '00:00' ) ));
    NXLista.Cells[5, NXLista.SelectedRow]:= formattedDate;

    DateTimeToString(formattedDate, 't', StrToTimeDef( NXLista.Cells[6, NXLista.SelectedRow], StrToTime( '00:00' ) ));
    NXLista.Cells[6, NXLista.SelectedRow]:= formattedDate;
end;

procedure TfrmListadeAsistencia.NXListaHeaderClick(Sender: TObject;
  ACol: Integer);
Var
  i, o: Integer;
begin
  o:=TNextGrid(Sender).RowCount;
  if ACol = 3 then begin
    if todos then begin//si esta habilitado
      for i := 0 to o - 1 do begin///checkea los check
        TNextGrid(Sender).Cells[3,i] := 'False';
      end;
      todos := False;
    end else begin//si no estan habilitados
      for I := 0 to o - 1 do begin//deschekea los check
        TNextGrid(Sender).Cells[3,i] := 'True';
      end;
      todos := True;
    end;
  end;
end;

procedure TfrmListadeAsistencia.NXListaSelectCell(Sender: TObject; ACol,
  ARow: Integer);
begin
//ShortDateFormat := 'hh:nn:ss';
lbmuestranombre.Caption:=NXLista.Cells[1, NXLista.SelectedRow];

end;

procedure TfrmListadeAsistencia.pmNominasPopup(Sender: TObject);
begin
   if QNominas.FieldByName('ID_PeriodoGuardia').AsInteger<>-1 then
    mniAddCompleta.Enabled:=True
   else
    mniAddCompleta.Enabled:=False;
end;

procedure TfrmListadeAsistencia.QNominasAfterScroll(DataSet: TDataSet);
var
  myYear, myMonth, myDay : Word;
begin
  if IsOpen then
  begin

    if QNominas.FieldByName('ID_PeriodoGuardia').AsInteger<>-1 then
    begin
     // ShortDateFormat := 'yyyy-mm-dd';
      tdFechaI.Date:=QNominas.FieldByName('dFechaInicial').AsDateTime;
      tdFechaF.Date:=QNominas.FieldByName('dFechaFinal').AsDateTime;
    end
    else
    begin
      DecodeDate(Now, myYear, myMonth, myDay);
      if myDay<15 then
      begin
        tdFechaI.Date:=EncodeDate(myYear, myMonth, 1);
        tdFechaF.Date:=EncodeDate(myYear, myMonth, 15);
      end
      else
      begin
        tdFechaI.Date:=EncodeDate(myYear, myMonth, 15);
        tdFechaF.Date:=  dxGetEndDateOfMonth(Now,true);
      end;
    end;
  end;
end;

procedure TfrmListadeAsistencia.qryDetNominaAfterInsert(DataSet: TDataSet);
begin
    qryDetNomina.FieldByName('sNombreLista').AsString     := folior ;
    qryDetNomina.FieldByName('sContrato').AsString        := global_contrato ;
    qryDetNomina.FieldByName('iTotalPersonal').AsInteger  := 0 ;
    qryDetNomina.FieldByName('dMontoMN').AsFloat          := 0 ;

    qryDetNomina.FieldByName('dFechaInicio').AsDateTime := date()- 15 ;
    qryDetNomina.FieldByName('dFechaFinal').AsDateTime  := date ;
    qryDetNomina.FieldByName('sNumeroOrden').AsString   := qryOrdenes.FieldByName('sNumeroOrden').AsString ;
end;

procedure TfrmListadeAsistencia.qryDetNominaAfterPost(DataSet: TDataSet);
begin
    connection.configuracionRecHum.Edit ;
    connection.configuracionRecHum.FieldByName('iConsecutivoListaNominal').AsInteger := Connection.configuracionRecHum.FieldByName('iConsecutivoListaNominal').AsInteger + 1 ;
    connection.configuracionRecHum.Post ;
end;

Procedure TfrmListadeAsistencia.qryDetNominaBeforeInsert(DataSet: TDataSet);
begin
    Aux2   := Connection.configuracionRecHum.FieldByName('iConsecutivoListaNominal').AsInteger + 1 ;
    folior := Connection.configuracionRecHum.FieldByName('sTextoListaNominal').AsString +'0' + InttoStr(Aux2) ;

end;

procedure TfrmListadeAsistencia.rDiarioGetValue(const VarName: string;
  var Value: Variant);
  var
  campo1, campo2 : string ;
begin

  DateTimeToString(campo1, 'dd/mm/yy', tdfechai.Date) ;
  DateTimeToString(campo2, 'dd/mm/yy', tdFechaf.Date) ;
 if CompareText( VarName, 'TITULO' ) = 0 then
     Value := 'LISTADO DE CATEGORIAS DE LA FECHA   ' + campo1 + '  AL DIA   ' + campo2 ;

  If CompareText(VarName, 'FECHAI') = 0 then
      Value := tdFechaI.Date ;

  If CompareText(VarName, 'FECHAF') = 0 then
      Value := tdFechaF.Date ;

    If CompareText(VarName, 'comentario') = 0 then
      Value := tsComentario.Text ;
end;

procedure TfrmListadeAsistencia.tdFechaChange(Sender: TObject);
var
Efecha: tdatetime;
begin

    ShortDateFormat := 'yyyy-mm-dd';
    Efecha:=tdFecha.Date;
    zqLista.Active:=false;
    zqLista.ParamByName('Contrato').AsString          :=global_contrato ;
    zqLista.ParamByName('fecha').AsDate               :=Efecha;
    zqLista.ParamByName('iIdEstatusDiario').AsInteger := -1;
    zqLista.ParamByName('sAsistencia').AsString       := '-1';

    zqLista.Open;
    llenaGrid(zqLista);

end;

procedure TfrmListadeAsistencia.ImportarDatosdelDiaAnterior1Click(
  Sender: TObject);
  var
  Efecha: tdatetime;
begin
  try

    ShortDateFormat := 'yyyy-mm-dd';
    Efecha:=IncDay(tdFecha.Date, -1);
    ZQImpDatosAnt.Active:=false;

    ZQImpDatosAnt.ParamByName('fecha').AsDate           :=Efecha;
    ZQImpDatosAnt.ParamByName('Contrato').AsString      :=Global_Contrato;
    ZQImpDatosAnt.ParamByName('sAsistencia').AsString   := 'Si' ;
    ZQImpDatosAnt.ParamByName('sIdEmpleado').AsString   := '-1' ;
    ZQImpDatosAnt.ParamByName('Lista').AsInteger        := qryDetNomina.FieldByName('iId').AsInteger ;
    ZQImpDatosAnt.Open;

    llenaGrid(ZQImpDatosAnt);
  except
    on e:exception do
    begin
      MessageDlg('Ha Ocurrido un error en el sistema, Error: '+#10+#10+e.Message, mterror, [mbok], 0);
    end;
  end;
end;

function TfrmListadeAsistencia.Imprime_Reporte_Listas_X_Rango() : Boolean;
var
  fecha, fecharx, Fecha_Inicio, Fecha_Fin, FechaIniAs, FechaFinAs : TDate;
  Asistencia, hora,query_alternativo,query_alternativo_2,lista_empleados_x : String;
  bandera, distinto_mes, flag : boolean;
  mes, anio, mesI, mesF, anioI, anioF, diarx, faltas, color, cantidadDias : Integer;
  i: Integer;
  FechaDia : tDateTime;
  zqafectados: TZReadOnlyQuery;
  contador_empleados,contador_seleccionados,d: Integer;
begin
  if Edit1.Text <> '' then
    begin
      cantidadDias := StrToInt(Edit1.Text);
      if cantidadDias > 31 then
      begin
        MessageDlg('Error los dias de guardia son menores a 31 dias', mterror, [mbok], 0);
        exit;
      end;

       if imprimir_global then
        begin
          query_alternativo:= 'HAVING SUM(sAsistencia) >= ' + InttoStr(cantidadDias);
        end
       else
        begin
          query_alternativo:= 'HAVING SUM(sAsistencia) < ' + InttoStr(cantidadDias);
        end;
    end
  else
    begin

      cantidadDias := 0;
      query_alternativo:= '';
    end;
  lista_empleados_x := '';
  contador_empleados := NXLista.RowCount;
  for I := 0 to NXLista.RowCount -1 do
    begin
          contador_seleccionados := contador_seleccionados + 1;
          lista_empleados_x := Concat(lista_empleados_x,'"',NXLista.Cell[0,I].AsString,'"');
    end;
    lista_empleados_x := Copy(lista_empleados_x,0,length(lista_empleados_x) -1);
  if lista_empleados_x <> '' then
  begin
    query_alternativo_2 := ' AND sIdEmpleado IN (' + lista_empleados_x + ') ';
  end;
  if contador_seleccionados = contador_empleados then
    query_alternativo_2 := '';

  zqAfectados := TZReadOnlyQuery.Create(Nil);
  zqAfectados.Connection := connection.ZConnection ;

  zqAfectados.Active:=false;
  zqAfectados.Sql.Clear;
  zqAfectados.Sql.Add('select sIdEmpleado, dFecha, sAsistencia, sEntrada from rh_asistencia where ' +
                      'dFecha BETWEEN :FechaI AND :FechaF and sAsistencia="Si" and idLista =:Lista ' + query_alternativo_2 + ' group by sIdempleado ' + query_alternativo) ;
  zqafectados.ParamByName('fechai').AsDate   := tdFechaI.Date;
  zqafectados.ParamByName('fechaf').AsDate   := tdFechaF.Date;
  zqafectados.ParamByName('lista').AsInteger := qryDetNomina.FieldByName('iId').AsInteger ;
  zqAfectados.Open;


  if zqafectados.RecordCount > 0 then
  begin
    if DaysBetween(tdFechaI.Date, tdFechaF.Date) > 31 then begin
      MessageDlg('El N�mero de D�as del Rango de Fechas Seleccionado es Mayor a 31.',mtInformation,[mbOk],0);
      tdFechaF.SetFocus;
      Result := False;
      exit;
    end;

    mesI         := MonthOf(tdFechaI.Date);
    mesF         := MonthOf(tdFechaF.Date);
    anioI        := YearOf(tdFechaI.Date);
    anioF        := YearOf(tdFechaF.Date);
    distinto_mes := True;//bandera para controlar cuando los meses son distintos
    flag         := true;//bandera para controlar cuando los meses son distintos
    zQListaXRango.Open;

    zQListaXRango.EmptyTable;
    while distinto_mes do begin
      /////si los meses del rango de fechas son distintos deben aparecer 2 hojas, una hoja por mes
      if mesI <> mesF then begin
        ////corrobora que sean distintos los meses para que aga el recorrido por mes
        if flag then begin
          ////aki colocamos la fecha final con el ultimo dia del mes de tdFechaI.date
          ///hoja 1 con mesI
          Fecha_Inicio := tdFechaI.Date;
          Fecha_Fin    := EncodeDate(anioI, mesI, DaysInMonth(tdFechaI.Date));
          ////flag - para que solo entre una vez pues no puede haber mas de 2 meses distintos ya que solo son dos fechas
          flag := False;
        end
        else
        begin
          ////aki colocamos la fecha inicial con el primer dia del mes de tdFechaF.date para la hoja dos
          ///hoja 2 con mesF
          Fecha_Inicio := EncodeDate(anioF, mesF ,1);
          Fecha_Fin    := tdFechaF.Date;

          /////rompemos el while para que ya no aga otro recorrido pues esta seria la segunda hoja con la fecha del mes 2
          distinto_mes := False;
        end;
        mes  := MonthOf(Fecha_Inicio);
        anio := YearOf(Fecha_Inicio);
      end
      else
      begin
        ///estraria de forma normal pues los meses del rango de fechas son los mismos
        ///solo imprimiria una hoja
        Fecha_Inicio := tdFechaI.Date;
        Fecha_Fin    := tdFechaF.Date;
        distinto_mes := False;
        mes          := mesI;
        anio         := anioI;
      end;
//      zqLista.First;
      connection.QryBusca.Active := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('SELECT em.sIdEmpleado, '+
      'em.sNombreCompleto, em.sApellidoPaterno,em.sApellidoMaterno, rs.titulosalario,'+
      'ra.dFecha, dayofweek(ra.dFecha) as dia, ra.sAsistencia, rs.salario, ra.sEntrada, nc.titulocargo, dp.titulodepartamento, '+
      'ra.sSalida, ra.iIdEstatusDiario, re.iColor, re.iColorTexto, '+
      '((DAY(ra.dFecha)-DAY(:FechaI))+1) AS dia, '+
      'MONTH(ra.dFecha) AS mes, '+
      'YEAR(ra.dFecha) AS anio '+
      'FROM '+
      'rh_asistencia AS ra '+
      'RIGHT JOIN empleados AS em ON (em.sIdEmpleado = ra.sIdEmpleado AND ra.dFecha BETWEEN :FechaI AND :FechaF ) '+
      'inner join rh_estatusdiarioempleados as re on (re.iIdEstatusDiario = ra.iIdEstatusDiario) '+
      'INNER JOIN nuc_cargo nc On (nc.IdCargo=em.iId_Puesto) ' +
      'INNER JOIN rhu_salario rs On (rs.idSalario=nc.IdSalario) ' +
      'inner join nuc_departamento dp on (dp.idDepartamento = em.idDepartamento) '+
      'WHERE em.sContrato = :Contrato and '+
      'em.sIdEmpleado = :Empleado and sAsistencia="SI" And ra.idLista=:Lista '+
      'GROUP BY ra.dFecha '+
      'ORDER BY ra.dFecha ASC');
      while not zqAfectados.Eof do
      begin
          connection.QryBusca.Params.ParamByName('Contrato').AsString := Global_Contrato ;
          connection.QryBusca.Params.ParamByName('Empleado').AsString := zqafectados.FieldByName('sIdEmpleado').AsString;
          connection.QryBusca.Params.ParamByName('FechaI').AsDate     := Fecha_Inicio;
          connection.QryBusca.Params.ParamByName('FechaF').AsDate     := Fecha_Fin;
          connection.QryBusca.Params.ParamByName('Lista').asInteger   := qryDetNomina.FieldByName('iId').AsInteger;

          connection.QryBusca.Open;
          if connection.QryBusca.RecordCount > 0 then
          begin

            connection.QryBusca.First;
            FechaIniAs := connection.QryBusca.FieldByName('DFecha').AsDateTime;
            zQListaXRango.Append;
            zQListaXRango.FieldByName('IdEmpleado').AsString         := connection.QryBusca.FieldByName('sIdEmpleado').AsString;
            zQListaXRango.FieldByName('Nombre').AsString             := connection.QryBusca.FieldByName('sNombreCompleto').AsString;
            zQListaXRango.FieldByName('Apellido').AsString           := connection.QryBusca.FieldByName('sApellidoPaterno').AsString + ' ' +  connection.QryBusca.FieldByName('sApellidoMaterno').AsString;
            zQListaXRango.FieldByName('titulocargo').AsString        := connection.QryBusca.FieldByName('titulocargo').AsString;
            zQListaXRango.FieldByName('titulodepartamento').AsString := connection.QryBusca.FieldByName('titulodepartamento').AsString;

            zQListaXRango.FieldByName('mes').AsInteger       := mes;
            zQListaXRango.FieldByName('anio').AsInteger      := anio;
            zQListaXRango.FieldByName('asistencias').AsInteger    := connection.QryBusca.RecordCount;
            connection.QryBusca.First;
            while not connection.QryBusca.Eof do
            begin
              if connection.QryBusca.FieldByName('sAsistencia').AsString = 'No' then
                zQListaXRango.FieldByName('faltas').AsInteger := zQListaXRango.FieldByName('faltas').AsInteger-1;

              if RbGenAsistencia.Checked then
                 zQListaXRango.FieldByName('dia'+connection.QryBusca.FieldByName('dia_1').AsString).AsFloat := connection.QryBusca.FieldByName('salario').AsFloat
              else
                 zQListaXRango.FieldByName('dia'+connection.QryBusca.FieldByName('dia_1').AsString).AsString := '0' ;

              if RbAsistencia.Checked then
              begin
                 if (connection.QryBusca.FieldByName('sAsistencia').AsString = 'No') or (connection.QryBusca.FieldByName('sAsistencia').AsString = 'FALTA') then
                  zQListaXRango.FieldByName('dia'+connection.QryBusca.FieldByName('dia_1').AsString).AsString:= '0'
                 else
                  zQListaXRango.FieldByName('dia'+connection.QryBusca.FieldByName('dia_1').AsString).AsString:= '1';
              end;

              zQListaXRango.FieldByName('diaest'+connection.QryBusca.FieldByName('dia_1').AsString).AsVariant :=escolor(connection.QryBusca.FieldByName('IColor').asinteger);
              zQListaXRango.FieldByName('diact'+connection.QryBusca.FieldByName('dia_1').AsString).AsVariant :=escolor(connection.QryBusca.FieldByName('iColorTexto').asinteger);

              zQListaXRango.FieldByName('aux'+connection.QryBusca.FieldByName('dia').AsString).AsString := 'Registrado';
              zQListaXRango.FieldByName('categoria').AsString := connection.QryBusca.FieldByName('titulosalario').AsString ;

              connection.QryBusca.Next;
            end;
          FechaFinAs := connection.QryBusca.FieldByName('DFecha').AsDateTime;
          zQListaXRango.FieldByName('Faltas').AsInteger:= DaysBetween(FechaIniAs, FechaFinAs)+1;
          zQListaXRango.FieldByName('Faltas').AsInteger:= zQListaXRango.FieldByName('Faltas').AsInteger - zQListaXRango.FieldByName('asistencias').AsInteger;
          zQListaXRango.Post;

         //estos son los dias del titulo
          FechaDia := tdFechaI.Date;
          for i := 1 to DaysBetween(tdFechaI.Date, tdFechaF.Date) + 1 do
          begin
              if i<= 16 then
              begin
                  zQListaXRango.Edit;
                  zQListaXRango.FieldByName('Fecha'+IntTostr(i)).AsDateTime := FechaDia;
                  zQListaXRango.Post;
              end;
              FechaDia := FechaDia + 1;
          end;

        end;
        zqafectados.Next;
        connection.QryBusca.Active := False;
      end;///fin de while zqLista.Eof
    end;///fin de while distinto_mes
    zQListaXRango.First;
    Result := True;
  end////fin de if RecordCount
  else
  begin
    MessageDlg('No existen Registros para Esa LISTA los Empleados en �ste Rango de Fechas.',mtInformation, [mbOk],0);
    Result := False;
  end;
  zqafectados.Destroy;


  connection.QryBusca.Active := False;
  connection.QryBusca.SQL.Clear ;
  Connection.QryBusca.SQL.Add('select COUNT(DISTINCT(sIdEmpleado)) as x from rh_asistencia ' +
                              'Where dfecha >=:Fechai  and dfecha <=:Fechafinal and idLista=:lista') ;
  connection.QryBusca.Params.ParamByName('fechai').AsDate     := fecha_Inicio ;
  connection.QryBusca.Params.ParamByName('fechafinal').AsDate := fecha_fin ;
  connection.QryBusca.Params.ParamByName('lista').AsInteger   := qryDetNomina.FieldByName('iId').AsInteger ;
  connection.QryBusca.Open ;
  qryDetNomina.Edit ;
  qryDetNomina.FieldByName('iTotalPersonal').AsInteger := connection.QryBusca.FieldByName('x').AsInteger ;
  qryDetNomina.Post ;

  zqImp.Active := False ;
  zqImp.Params.ParamByName('lista').AsInteger   := qryDetNomina.FieldByName('iId').AsInteger ;
  zqImp.Open ;


end;

procedure TfrmListadeAsistencia.llenaGrid (Zaux : Tzquery);
var
    formattedDate, auxiliar: string;
    contar : Integer ;
begin
  NXLista.ClearRows;
  if Zaux.RecordCount>0 then
  begin
    todos := True;
    Zaux.First;
    contar := 0 ;
    while not Zaux.Eof do
    begin
     if auxiliar <> Zaux.FieldByName('sIdEmpleado').AsString then
      begin
       NXLista.AddRow;
       NXLista.Cells[0, NXLista.LastAddedRow] := Zaux.FieldByName('sIdEmpleado').AsString;
       NXLista.Cells[1, NXLista.LastAddedRow] := Zaux.FieldByName('sNombreCompleto').AsString + ' ' + Zaux.FieldByName('sApellidoPaterno').AsString + ' ' +  Zaux.FieldByName('sApellidoMaterno').AsString;

       if (Zaux.FieldByName('sAsistencia').AsString = 'Si') and (Zaux.FieldByName('idLista').AsInteger =qryDetNomina.FieldByName('iId').AsInteger)  then
                 NXLista.Cells[2, NXLista.LastAddedRow] := 'True'
       else begin
          NXLista.Cells[2, NXLista.LastAddedRow] := 'False';
          todos := False;
      end;


      NXLista.Cells[3, NXLista.LastAddedRow] := Zaux.FieldByName('dFecha').AsString;

      if Zaux.FieldByName('sEntrada').AsString<>'' then
      begin
          NXLista.Cells[4, NXLista.LastAddedRow]:= Zaux.FieldByName('sEntrada').AsString;
          NXLista.Cells[5, NXLista.LastAddedRow]:= Zaux.FieldByName('sSalida').AsString;

          DateTimeToString(formattedDate, 't', StrToTimeDef( NXLista.Cells[5, NXLista.LastAddedRow], StrToTime( '00:00' ) ));
          NXLista.Cells[4, NXLista.LastAddedRow]:= formattedDate;

          DateTimeToString(formattedDate, 't', StrToTimeDef( NXLista.Cells[6, NXLista.LastAddedRow], StrToTime( '00:00' ) ));
          NXLista.Cells[5, NXLista.LastAddedRow]:= formattedDate;
      end
      else
      begin
        NXLista.Cells[4, NXLista.LastAddedRow] := '08:00 a.m.' ;
        NXLista.Cells[5, NXLista.LastAddedRow] := '07:00 p.m.' ;
      end;
        nxLista.Cells[6, NXLista.LastAddedRow] := zAux.FieldByName('titulosalario').asString ;
        nxLista.Cells[7, NxLista.LastAddedRow] := zAux.FieldByName('salario').AsString ;
        auxiliar := Zaux.FieldByName('sIdEmpleado').AsString;
      end;
      Zaux.Next;
    end;
  end;
  NXLista.SelectedRow:=0;
  NXLista.setfocus;

end;

procedure TfrmListadeAsistencia.mniAddCompletaClick(Sender: TObject);
var
  QrDatos:TZReadOnlyQuery;
  QUpdate:TZQuery;
  pfecha:TDate;
begin
  QrDatos:=TZReadOnlyQuery.Create(nil);
  QUpdate:=TZQuery.Create(nil);
  try
    QrDatos.Connection:=connection.zConnection;
    QUpdate.Connection:=connection.zConnection;

    QUpdate.SQL.Text:='select * from rh_asistencia where sIdEmpleado=:Empleado and dFecha=:Fecha';


    if QNominas.RecordCount>0 then
    begin
      if QNominas.FieldByName('ID_PeriodoGuardia').AsInteger<>-1 then
      begin
        //for pfecha := QNominas.FieldByName('dFechaInicial').AsDateTime to QNominas.FieldByName('dFechaFinal').AsDateTime do
        pfecha := QNominas.FieldByName('dFechaInicial').AsDateTime ;
        while pfecha <= QNominas.FieldByName('dFechaFinal').AsDateTime do
        begin
          QrDatos.Active:=False;
          QrDatos.SQL.Text:='SELECT' + #13#10 +
                             'em.sIdEmpleado,' + #13#10 +
                             'em.sNombreCompleto,' + #13#10 +
                             'em.sApellidoPaterno,' + #13#10 +
                             'em.sApellidoMaterno, pims.salariodiario as salario, rs.titulosalario,' + #13#10 +
                             'ra.*,' + #13#10 +
                             'IF(IFNULL(dFecha, ''True''), ''Si'' , ''No'') AS Existe' + #13#10 +
                            'FROM rh_asistencia AS ra' + #13#10 +
                            'RIGHT JOIN empleados AS em ON (em.sIdEmpleado = ra.sIdEmpleado AND ra.dFecha =:fecha )' + #13#10 +
                            '' + #13#10 +
                            '' + #13#10 +
                            'inner join guardiasmovtos gm' + #13#10 +
                            'on(gm.sIdEmpleado=em.sIdEmpleado)' + #13#10 +
                            'INNER JOIN nuc_cargo nc On (nc.IdCargo=gm.iId_Puesto)' + #13#10 +
                            'INNER JOIN rhu_salario rs On (rs.idSalario=nc.IdSalario)' + #13#10 +
                            'inner join nuc_personal np' + #13#10 +
                            'on(em.sIdEMpleado=np.codigopersonal)' + #13#10 +
                            'inner join nuc_personalimss pims on (pims.idPersonal = np.IdPersonal ' + #13#10 +
                            'and pims.IdPeriodosGuardia = gm.id_GuardiaPeriodo and pims.TipoMovimiento = "reingreso"  )' + #13#10 +
                            'WHERE' + #13#10 +
                            'em.sContrato= :Contrato and' + #13#10 +
                            'em.lLabora = ''Si'' and' + #13#10 +
                            '(:iIdEstatusDiario = -1 or ( :iIdEstatusDiario <> -1 and ra.iIdEstatusDiario = :iIdEstatusDiario)) and' + #13#10 +
                            '(:sAsistencia = -1 or ( :sAsistencia <> -1 and ra.sAsistencia Like :sAsistencia)) and' + #13#10 +
                            '(:sSalida = -1 or ( :sSalida <> -1 and time(ra.sSalida) <= time(:sSalida))) and' + #13#10 +
                            '(:sEntrada = -1 or ( :sEntrada <> -1 and time(ra.sEntrada) >= time(:sEntrada))) and' + #13#10 +
                            '(:sIdEmpleado = -1 or ( :sIdEmpleado <> -1 and em.sIdEmpleado Like CONCAT("%"+:sIdEmpleado+"%"))) and' + #13#10 +
                            '(:sNombreCompleto = -1 or ( :sNombreCompleto <> -1 and em.sNombreCompleto Like concat("%", :sNombreCompleto, "%")))' + #13#10 +
                            'and gm.dFechaSubida<=:fecha and gm.dFechaBajada>=:fecha and gm.iIdGuardia=:Guardia and gm.id_GuardiaPeriodo=:Periodo' + #13#10 +
                            '' + #13#10 +
                            'ORDER BY  em.sNombreCompleto';

          QrDatos.ParamByName('Guardia').AsInteger:=QNominas.FieldByName('IdGuardia').AsInteger;
          QrDatos.ParamByName('Periodo').AsInteger:=QNominas.FieldByName('ID_PeriodoGuardia').AsInteger;
          QrDatos.ParamByName('Contrato').Value := Global_Contrato ;
          QrDatos.ParamByName('fecha').AsDate   := pfecha   ;
          QrDatos.ParamByName('iIdEstatusDiario').AsInteger:= -1;
          QrDatos.ParamByName('sAsistencia').AsString:= '-1';
          QrDatos.ParamByName('sSalida').AsString:= '-1';
          QrDatos.ParamByName('sEntrada').AsString:= '-1';
          QrDatos.ParamByName('sIdEmpleado').AsString:= '-1';
          QrDatos.ParamByName('sNombreCompleto').AsString:= '-1';
          QrDatos.Open;
          while not QrDatos.Eof do
          begin
            QUpdate.Active:=False;
            QUpdate.ParamByName('Empleado').AsString:=QrDatos.FieldByName('sIdEMpleado').AsString;
            QUpdate.ParamByName('Fecha').AsDate:=pfecha;
            QUpdate.Open;
            if QUpdate.RecordCount=0 then
            begin
              QUpdate.Append;
              QUpdate.FieldByName('iIdListaAsistencia').AsInteger:=0;
              QUpdate.FieldByName('sIdEmpleado').AsString:=QrDatos.FieldByName('sIdEMpleado').AsString;
              QUpdate.FieldByName('dFecha').AsDateTime:=pfecha;
              QUpdate.FieldByName('sAsistencia').AsString:='Si';
              QUpdate.FieldByName('sEntrada').AsString:='08:00 a.m.' ;
              QUpdate.FieldByName('sSalida').AsString:='07:00 p.m.' ;
              QUpdate.FieldByName('iIdEstatusDiario').AsInteger:=1;
            end
            else
            begin
              QUpdate.Edit;
              QUpdate.FieldByName('sAsistencia').AsString:='Si';
            end;
            QUpdate.Post;


            QrDatos.Next;
          end;

          pfecha:=IncDay(pfecha);
        end;
      end;

    end;
  finally
    QrDatos.Destroy;
    QUpdate.Destroy;
  end;
end;

procedure TfrmListadeAsistencia.mniImprimirListadeldia1Click(Sender: TObject);
begin
    rDiario.PreviewOptions.MDIChild := False ;
    rDiario.PreviewOptions.Modal := True ;
    rDiario.PreviewOptions.Maximized := lCheckMaximized () ;
    rDiario.PreviewOptions.ShowCaptions := False ;
    rDiario.Previewoptions.ZoomMode := zmPageWidth ;

    if not FileExists(Global_Files + global_miReporte +'_listadeasistencia.fr3') then
     begin
        showmessage('El archivo de reporte '+global_Mireporte+'_listadeasistencia.fr3 no existe, notifique al administrador del sistema');
        exit;
     end
     else
     begin
        rDiario.LoadFromFile(Global_Files+global_miReporte +'_listadeasistencia.fr3') ;
        rDiario.ShowReport;  //(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
     end;

end;


procedure TfrmListadeAsistencia.llenarfechas;
begin
   if not VarIsNull(qryDetNomina.FieldByName('dFechaInicio').AsDateTime) Then
  begin
    tdFechaI.Date  := qryDetNomina.FieldByName('dFechaInicio').AsDateTime ;
    tdFechaF.Date  := qryDetNomina.FieldByName('dFechaFinal').AsDateTime ;
   end;
end;

procedure TfrmListadeAsistencia.cxgGrid1DBTableView1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  llenarFechas;
end;

procedure TfrmListadeAsistencia.cxgGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  llenarFechas;
end;



End.