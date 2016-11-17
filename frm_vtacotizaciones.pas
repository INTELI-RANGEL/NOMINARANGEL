unit frm_vtacotizaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, DB, cxDBData, frm_barra,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, NxCollection, ComCtrls, sPageControl,
  AdvSmoothStepControl, RxMemDS, ZAbstractDataset, ZDataset, global,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxContainer, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxDBEdit, StdCtrls, Menus, cxButtons, dxSkinsdxStatusBarPainter, cxLabel,
  dxStatusBar, AdvMemo, cxDBNavigator, cxMemo, Func_Genericas, ExtCtrls,
  AdvSmoothPopup, cxCalc, ImgList, cxGroupBox, cxDBLabel, OleServer, WordXP, ComObj, jpeg,
  JvComponentBase, DateUtils, UnitExcel, ExcelXP, frxClass, frxDBSet, ExtDlgs,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, cxCalendar, Buttons, unt_ventas, cxListView,
  dxSkinsdxBarPainter, dxBar, dxRibbon, AdvSmoothPageSlider, AdvMetroButton,
  cxCheckBox, cxImage, dxGDIPlusClasses, frxExportPDF, WinInet, UFunctionsGHH,
  cxSpinEdit, cxCurrencyEdit, Utilerias, frm_connection, ZAbstractRODataset;

type
  TfrmVtaCotizaciones = class(TForm)
    pnlContenedor: TNxHeaderPanel;
    Grid_Cotizaciones: TcxGrid;
    GridCotizaciones: TcxGridDBTableView;
    GridCotizacionessIdCotizacion1: TcxGridDBColumn;
    GridCotizacionessIdCompania1: TcxGridDBColumn;
    GridCotizacionessNombre1: TcxGridDBColumn;
    GridCotizacionessPuesto1: TcxGridDBColumn;
    GridCotizacionessCuidad1: TcxGridDBColumn;
    GridCotizacionessAsunto1: TcxGridDBColumn;
    GridCotNiv: TcxGridLevel;
    frmBarra1: TfrmBarra;
    Paginas: TPageControl;
    sTabSheet1: TTabSheet;
    tabAddInf: TTabSheet;
    Progreso: TAdvSmoothStepControl;
    qrCotizaciones: TZQuery;
    dsCotizaciones: TDataSource;
    dsCompanias: TDataSource;
    qrCompanias: TZQuery;
    qrCompaniassIdCompania: TStringField;
    qrCompaniassRFC: TStringField;
    qrCompaniassRazonSocial: TStringField;
    qrCompaniassDomicilio: TStringField;
    qrCompaniassNumeroInterior: TStringField;
    qrCompaniassNumeroExterior: TStringField;
    qrCompaniassCiudad: TStringField;
    qrCompaniassLocalidad: TStringField;
    qrCompaniassMunicipio: TStringField;
    qrCompaniassColonia: TStringField;
    qrCompaniassMail: TStringField;
    qrCompaniassCP: TStringField;
    qrCompaniassEstado: TStringField;
    qrCompaniassTelefono: TStringField;
    qrCompaniasdMontoCredito: TFloatField;
    qrCompaniaslStatus: TStringField;
    qrCompaniassNumeroProveedor: TStringField;
    qrCompaniassTelefono2: TStringField;
    qrCompaniassContacto: TStringField;
    qrCompaniaslTipo: TStringField;
    qrCompaniassIdCompaniaConf: TStringField;
    qrCompaniassRegistroPatronal: TStringField;
    Grid_Companias: TcxGrid;
    gridCompanias: TcxGridDBTableView;
    grdCompNiv: TcxGridLevel;
    gridCompaniasColumn1: TcxGridDBColumn;
    Label1: TLabel;
    dbFolio: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    dbNombre: TcxDBTextEdit;
    Label4: TLabel;
    dbPuesto: TcxDBTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    dbAsunto: TcxDBTextEdit;
    qrCompaniassPuesto: TStringField;
    btnNext1: TcxButton;
    cxButton2: TcxButton;
    TabConceptos: TTabSheet;
    tabCont: TTabSheet;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    TabImpresion: TTabSheet;
    dbCompania: TcxDBLookupComboBox;
    dsConceptos: TDataSource;
    btnSeleccionarConcepto: TcxButton;
    pnlConceptos: TPanel;
    pnl1: TNxHeaderPanel;
    GridBuscaConceptos: TcxGrid;
    Grid_BuscaConceptos: TcxGridDBTableView;
    Grid_BuscaConceptossidinsumo1: TcxGridDBColumn;
    Grid_BuscaConceptosmDescripcion1: TcxGridDBColumn;
    Grid_BuscaConceptossMedida1: TcxGridDBColumn;
    GridBusConNiv: TcxGridLevel;
    btnAceptConcepto: TcxButton;
    ToolTip: TAdvSmoothPopup;
    pnlToolTip: TNxHeaderPanel;
    lblToolTip: TcxLabel;
    btnCerrarPopUp: TcxButton;
    Label11: TLabel;
    dbParrafo1: TcxDBMemo;
    Label12: TLabel;
    dbParrafo2: TcxDBMemo;
    qrConceptosxCot: TZQuery;
    qrConceptosxCotsIdCotizacion: TStringField;
    qrConceptosxCotsIdCompaniaConf: TStringField;
    qrConceptosxCotsIdCompania: TStringField;
    qrConceptosxCotsDescripcion: TMemoField;
    qrConceptosxCotsIdConcepto: TStringField;
    qrConceptosxCotdCantidad: TFloatField;
    qrConceptosxCotsUnidad: TStringField;
    qrConceptosxCotdPU: TFloatField;
    NxHeaderPanel1: TNxHeaderPanel;
    iconos: TcxImageList;
    btnBack: TcxButton;
    btnBack3: TcxButton;
    btnBack2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    gridConceptos2: TcxGridDBTableView;
    grid_conceptos2Level1: TcxGridLevel;
    grid_conceptos2: TcxGrid;
    gridConceptos2sDescripcion1: TcxGridDBColumn;
    gridConceptos2sIdConcepto1: TcxGridDBColumn;
    gridConceptos2dCantidad1: TcxGridDBColumn;
    gridConceptos2sUnidad1: TcxGridDBColumn;
    gridConceptos2dImporte1: TcxGridDBColumn;
    gridConceptos2dPU1: TcxGridDBColumn;
    NxHeaderPanel3: TNxHeaderPanel;
    btnCorreo: TcxButton;
    btnImprimirExcel: TcxButton;
    btnImprimirPdf: TcxButton;
    SaveDlg: TFileSaveDialog;
    Label13: TLabel;
    dbFirmante: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxButton8: TcxButton;
    frxCotizacion: TfrxReport;
    frxDBCotizacion: TfrxDBDataset;
    DataSource1: TDataSource;
    ZQuery1: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    FloatField1: TFloatField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    dbCiudad: TcxDBComboBox;
    Grid_BuscaConceptosColumn1: TcxGridDBColumn;
    qrConceptosxCotdImporte: TFloatField;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    btnBuscarFirmante: TcxButton;
    pnlFirmantes: TPanel;
    cxGridFirmantes: TcxGrid;
    GridFirmantes: TcxGridDBTableView;
    GridFirmantessFirmante1: TcxGridDBColumn;
    GridFirmantesColumn1: TcxGridDBColumn;
    grdFirLvl: TcxGridLevel;
    grpImgFirmante: TcxGroupBox;
    bImagen: TImage;
    dsFirmante: TDataSource;
    qrFirmante: TZQuery;
    qrFirmantesIdNombre: TStringField;
    qrFirmantesPuesto: TStringField;
    qrFirmantebFirma: TBlobField;
    btnSeleccionarFirmante: TcxButton;
    frxDBFirmante: TfrxDBDataset;
    cxGroupBox3: TcxGroupBox;
    imgFirmante: TImage;
    cxGroupBox1: TcxGroupBox;
    dblblCotizacion: TcxDBLabel;
    dblblNombre: TcxDBLabel;
    dblblPuesto: TcxDBLabel;
    dblblCiudad: TcxDBLabel;
    dblblAsunto: TcxDBLabel;
    cxGroupBox4: TcxGroupBox;
    lblFirmante: TcxDBLabel;
    lblCompania: TcxDBLabel;
    iconos2: TcxImageList;
    Label14: TLabel;
    dbFecha: TcxDBDateEdit;
    GridCotizacionesColumn1: TcxGridDBColumn;
    GridCotizacionesColumn2: TcxGridDBColumn;
    popCerrar: TPopupMenu;
    Cerrarestacotizacion1: TMenuItem;
    REabrir1: TMenuItem;
    GridCotizacionesColumn3: TcxGridDBColumn;
    qrCotizacionessIdCotizacion: TStringField;
    qrCotizacionessIdCompaniaConf: TStringField;
    qrCotizacionessIdCompania: TStringField;
    qrCotizacionessNombre: TStringField;
    qrCotizacionessPuesto: TStringField;
    qrCotizacionessCiudad: TStringField;
    qrCotizacionessAsunto: TStringField;
    qrCotizacionesmParte1: TMemoField;
    qrCotizacionesmParte2: TMemoField;
    qrCotizacionessFirmante: TStringField;
    qrCotizacionesdFecha: TDateField;
    qrCotizacionessUsuario: TStringField;
    qrCotizacioneseEstado: TStringField;
    lblCreo: TLabel;
    grpNotificaMail: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxImgMail: TcxImageList;
    dxBarManager1: TdxBarManager;
    dxPopupMail: TdxRibbonPopupMenu;
    dxBarButton1: TdxBarButton;
    cxImg32: TcxImageList;
    frxPDFExport: TfrxPDFExport;
    cxdCreo: TcxDBTextEdit;
    cxgrdGrdCotiza: TcxGrid;
    cxgGridCotiza: TcxGridDBTableView;
    ColIdConcepto: TcxGridDBColumn;
    ColInsumo: TcxGridDBColumn;
    ColMin: TcxGridDBColumn;
    ColProm: TcxGridDBColumn;
    ColMax: TcxGridDBColumn;
    ColUtilidad: TcxGridDBColumn;
    ColCantidad: TcxGridDBColumn;
    ColUnidad: TcxGridDBColumn;
    ColcantPres: TcxGridDBColumn;
    ColPresentacion: TcxGridDBColumn;
    ColIva: TcxGridDBColumn;
    ColIeps: TcxGridDBColumn;
    ColPU: TcxGridDBColumn;
    ColImporte: TcxGridDBColumn;
    cxgGrid1Lvl1: TcxGridLevel;
    zCotizacion: TZQuery;
    dsCotizacion: TDataSource;
    dsInsumos: TDataSource;
    zInsumos: TZQuery;
    dsMedidas: TDataSource;
    zMedidas: TZQuery;
    qryReporte: TZReadOnlyQuery;
    frxDBTletras: TfrxDBDataset;
    rxmletras: TRxMemoryData;
    fltfldrxmletrascantidad: TFloatField;
    wdstrngfldrxmletrasletras: TWideStringField;
    lbl1: TLabel;
    cbbFrentes: TcxDBLookupComboBox;
    strngfldCotizacionessNumeroOrden: TStringField;
    dsFrentes: TDataSource;
    zqryFrentes: TZQuery;
    strngfldFrentessNumeroOrden: TStringField;
    strngfldFrentessIdCompania: TStringField;
    strngfldFrentessContrato: TStringField;
    col_ImporteCosto: TcxGridDBColumn;
    col_Costo: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  
    procedure btnAddClick(Sender: TObject);
    procedure btnNext1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure dbFolioEnter(Sender: TObject);
    procedure dbFolioExit(Sender: TObject);
    procedure dbFolioKeyPress(Sender: TObject; var Key: Char);
    procedure dbCompaniaKeyPress(Sender: TObject; var Key: Char);
    procedure dbNombreKeyPress(Sender: TObject; var Key: Char);
    procedure dbPuestoKeyPress(Sender: TObject; var Key: Char);
    procedure dbCiudadKeyPress(Sender: TObject; var Key: Char);
    procedure dbAsuntoKeyPress(Sender: TObject; var Key: Char);

    procedure Grid_BuscaConceptosCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnAceptConceptoClick(Sender: TObject);

    procedure btnEditClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);

    procedure btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnCerrarPopUpClick(Sender: TObject);

    procedure btnBack2Click(Sender: TObject);
    procedure btnBack3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnPrinterClick(Sender: TObject);
    procedure btnImprimirExcelClick(Sender: TObject);
    procedure btnImprimirPdfClick(Sender: TObject);

    procedure dbCompaniaPropertiesChange(Sender: TObject);
    procedure qrConceptosxCotdCantidadChange(Sender: TField);
  
    procedure ProgresoStepClick(Sender: TObject; StepIndex: Integer;
      StepMode: TStepMode);
    procedure qrFirmanteAfterScroll(DataSet: TDataSet);
    procedure btnBuscarFirmanteClick(Sender: TObject);
    procedure btnSeleccionarFirmanteClick(Sender: TObject);
    procedure dbFechaKeyPress(Sender: TObject; var Key: Char);
    procedure PaginasChange(Sender: TObject);
    procedure Cerrarestacotizacion1Click(Sender: TObject);
    procedure REabrir1Click(Sender: TObject);

    procedure btnAddMailClick(Sender: TObject);
    procedure txtCopiaMailKeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnConfirmPasswordClick(Sender: TObject);
    procedure txtPasswordMailKeyPress(Sender: TObject; var Key: Char);
    procedure pgSlidersChange(Sender: TObject);

    procedure btnConfiguracionMailClick(Sender: TObject);
    procedure llenarcias() ;
    procedure llenarconceptos() ;
    procedure grabarmax() ;

    procedure cotizacionExcel;
    procedure cotizacionPdf( Show : Boolean );
    procedure TextoTip(Control : TWinControl);

    function ValidarCampos():Boolean;
    function AgregarCopiaMail( Valor : string ):Boolean;
    function ValidaMail( eMail : string ):Boolean;
    function HayInternet(): Boolean;

    procedure Grid_BuscaConceptosKeyPress(Sender: TObject; var Key: Char);
    procedure AdvMetroButton1Click(Sender: TObject);
    procedure cxdCreoEnter(Sender: TObject);
    procedure cxdCreoExit(Sender: TObject);
    procedure zCotizacionAfterInsert(DataSet: TDataSet);

    procedure actualizaDatos;
    procedure actualizaimporte;
    procedure inicializarRegistro;
    procedure ColIdConceptoPropertiesChange(Sender: TObject);
    procedure ColInsumoPropertiesChange(Sender: TObject);

    procedure cxgGridCotizaEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure cxgGridCotizaEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure btnCorreoClick(Sender: TObject);
    procedure gridCompaniasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridCompaniasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridCompaniasCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure GridCotizacionesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridCotizacionesKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridCotizacionesCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure zCotizacionBeforePost(DataSet: TDataSet);
    procedure zCotizacionAfterEdit(DataSet: TDataSet);

  private
    { Private declarations }
    sEstado : string;
    sMenuP : string ;
  public
    { Public declarations }
    oldConcepto : string;
    meses: array[1..12] of string;
    Folio : string;

    Nuevo : Boolean;
    Next : Boolean;
  end;

var
  frmVtaCotizaciones: TfrmVtaCotizaciones;
  sTipoPersonal : String ;

implementation
uses
  Frm_inteligent,
  frm_configuracionVta;
{Martin Samuel Esteban Diaz}
{$R *.dfm}


procedure TfrmVtaCotizaciones.actualizaDatos;
begin
    try
    zInsumos.Locate('sIdInsumo', zInsumos.FieldByName('sidInsumo').AsString,[]);
    with zCotizacion do
    begin
      FieldByName('clave').AsString          := zInsumos.FieldByName('sidinsumo').AsString;
      FieldByName('insumo').AsString         := zInsumos.FieldByName('mdescripcion').AsString;
      FieldByName('max').AsFloat             := zInsumos.FieldByName('dmaximo').AsFloat;
      FieldByName('min').AsFloat             := zInsumos.FieldByName('dMinimo').AsFloat;
      FieldByName('prom').AsFloat            := zInsumos.FieldByName('dPromedio').AsFloat;;
      FieldByName('Ieps').AsFloat            := zInsumos.FieldByName('dIeps').AsFloat;
      FieldByName('Iva').AsFloat             := zInsumos.FieldByName('dIva').AsFloat;
      FieldByName('pu').AsFloat              := zInsumos.FieldByName('dVentaMN').AsFloat;
      FieldByName('Unidad').AsString         := zInsumos.FieldByName('sMedida').AsString;
      FieldByName('Presentacion').AsString   := zInsumos.FieldByName('sMedida').AsString;
      FieldByName('Util').AsInteger          := zInsumos.FieldByName('dUtilidad').AsInteger;
      FieldByName('dCosto').AsFloat          := zInsumos.FieldByName('dCostoMN').AsFloat;

      FieldByName('CantPres').AsInteger   := 0;

      actualizaimporte;
    end;
  except
    on e: exception do
      MessageDlg('Ha ocurrido el siguiente error' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TfrmVtaCotizaciones.actualizaimporte;
var
  subtotal: Double;
  cantPres: Double;

begin

    try

      with zCotizacion do
      begin
        cantPres := FieldByName('cantPres').AsFloat;
        if FieldByName('cantpres').AsFloat = 0 then
          cantpres := 1;

        subtotal := (FieldByName('pu').asFloat*(FieldByName('cant').AsFloat));


        zInsumos.Locate('sidInsumo', FieldByName('clave').AsString,[]);
        begin
          FieldByName('Importe').asFloat := subtotal
                                          {Aqui el calculo de los impuestos}
                                          +((subtotal)
                                          *(((FieldByName('Ieps').asFloat)+
                                          (FieldByName('Iva').asFloat))/100));

          FieldByName('dImporteCosto').AsFloat := subtotal ;


        end;

      end;
    except
      on e: exception do
        MessageDlg('Ha ocurrido el siguiente error' + e.Message, mtError, [mbOK], 0);
    end;


end;

procedure TfrmVtaCotizaciones.inicializarRegistro;
begin
     try
    //zCotizacion.Append;
    zCotizacion.FieldByName('sIdCotizacion').AsString   := qrCotizaciones.FieldByName('sIdCotizacion').AsString;
    zCotizacion.FieldByName('sidCompaniaConf').AsString := global_contrato;
    zCotizacion.FieldByName('sIdCompania').AsString     := qrCotizaciones.FieldByName('sIdCompania').AsString;
  except
    raise;
  end;
end;


procedure TfrmVtaCotizaciones.btn1Click(Sender: TObject);
begin
  //pgSliders.NextPage;
{  lblMailUser.Caption := connection.configuracionVta.FieldByName( FIELD_MAIL_USER_MAIL ).AsString;
  txtPasswordMail.Properties.ReadOnly := False;
  btnConfirmPassword.Enabled := True;}
end;

procedure TfrmVtaCotizaciones.btnAceptConceptoClick(Sender: TObject);
begin
  qrConceptosxCot.FieldByName('sIdConcepto').AsString  := zInsumos.FieldByName('sIdInsumo').AsString;
  qrConceptosxCot.FieldByName('sDescripcion').AsString := zInsumos.FieldByName('mDescripcion').AsString;

  qrConceptosxCot.FieldByName('sUnidad').AsString      := zInsumos.FieldByName('sMedida').AsString;

  pnlConceptos.Visible := False;
  pnlConceptos.Parent := frmVtaCotizaciones;
end;

procedure TfrmVtaCotizaciones.btnAddClick(Sender: TObject);
var
  folioConsecutivo : Integer;
  zqryConsecutivoMayor, actualizarConsecutivo : TZQuery;
begin
  try
    if qrCompanias.RecordCount > 0 then
    begin
      frminteligent.mInteligent.ShowTabGroups := False;
      frmBarra1.btnAddClick(Sender);
      Application.ProcessMessages;
      qrCotizaciones.Append;

      //Traer el siguiente numero consecutivo del Folio
      folioConsecutivo := connection.configuracionVta.FieldByName('iConsecutivo').AsInteger + 1;

      if folioConsecutivo < 10 then
      begin
        qrCotizaciones.FieldByName('sIdCotizacion').AsString := connection.configuracionVta.FieldByName('sFolio').AsString + '000' + IntToStr(folioConsecutivo);
        folio := '000' + IntToStr(folioConsecutivo);
      end
      else if (folioConsecutivo >= 10) and (folioConsecutivo < 100) then
      begin
        qrCotizaciones.FieldByName('sIdCotizacion').AsString := connection.configuracionVta.FieldByName('sFolio').AsString + '00' + IntToStr(folioConsecutivo);
        folio := '00' + IntToStr(folioConsecutivo);
      end
      else if (folioConsecutivo >= 100) and (folioConsecutivo < 1000) then
      begin
        qrCotizaciones.FieldByName('sIdCotizacion').AsString := connection.configuracionVta.FieldByName('sFolio').AsString + '0' + IntToStr(folioConsecutivo);
        folio := '0' + IntToStr(folioConsecutivo);
      end
      else if (folioConsecutivo >= 1000) and (folioConsecutivo < 10000) then
      begin
        qrCotizaciones.FieldByName('sIdCotizacion').AsString := connection.configuracionVta.FieldByName('sFolio').AsString + IntToStr(folioConsecutivo);
        folio := IntToStr(folioConsecutivo);
      end;

      qrCotizaciones.FieldByName('sIdCompaniaConf').AsString := global_contrato;
      qrCotizaciones.FieldByName('sIdCompania').AsString     := qrCompanias.FieldByName('sIdCompania').AsString;
      qrCotizaciones.FieldByName('sNombre').AsString         := qrCompanias.FieldByName('sContacto').AsString;
      qrCotizaciones.FieldByName('sCiudad').AsString         := qrCompanias.FieldByName('sCiudad').AsString;
      qrCotizaciones.FieldByName('sPuesto').AsString         := qrCompanias.FieldByName('sPuesto').AsString;
      qrCotizaciones.FieldByName('sUsuario').AsString        := Global_Nombre ;
      qrCotizaciones.FieldByName('sFirmante').AsString       := global_usuario ;
      qrCotizaciones.FieldByName('mParte1').AsString         := '*' ;
      qrCotizaciones.FieldByName('mParte2').AsString         := '*' ;


      qrConceptosxCot.Active := False;
      qrConceptosxCot.ParamByName('cotizacion').AsString := qrCotizaciones.FieldByName('sIdCotizacion').AsString;
      qrConceptosxCot.ParamByName('compania').AsString := qrCompanias.FieldByName('sIdCompania').AsString;
      qrConceptosxCot.ParamByName('contrato').AsString := global_contrato;

      qrConceptosxCot.Open;

      Progreso.Visible := True;
      Progreso.ActiveStep := 0;
      Paginas.ActivePageIndex := 1;
      dbCompania.SetFocus;

      sEstado := 'nuevo';

      Nuevo := True;
    end;
  except
    frmBarra1.btnCancel.Click;
  end;
end;

procedure TfrmVtaCotizaciones.btnAddMailClick(Sender: TObject);
begin
{  if Length( Trim( txtCopiaMail.Text ) ) > 0 then
  begin
    if not ValidaMail( Trim( txtCopiaMail.Text ) ) then
    begin
      if AgregarCopiaMail( Trim( txtCopiaMail.Text ) ) then
        MessageDlg( 'Ya esta agregado el correo: ' + txtParaMail.Text, mtInformation, [mbok], 0 );
    end;

    txtCopiaMail.Text := '';
  end;}
end;

procedure TfrmVtaCotizaciones.btnBack2Click(Sender: TObject);
begin
  if qrConceptosxCot.State in [dsBrowse] then
  begin
    qrCotizaciones.Edit;
    Progreso.ActiveStep := 0;
    Paginas.ActivePageIndex := 1;
  end
  else
  begin
    if global_mostrartips then
    begin
      lblToolTip.Caption := 'Para poder continuar con el proceso ' + #13 + 'debe guardar o cancelar sus cambios';

    end;
  end;
end;

procedure TfrmVtaCotizaciones.btnBack3Click(Sender: TObject);
begin
  if (qrCotizaciones.State in [dsEdit]) or (qrCotizaciones.State in [dsInsert])  then
    qrCotizaciones.Cancel;

   Progreso.ActiveStep := 1;
   Paginas.ActivePageIndex := 2;

   zCotizacion.Active := False ;
   zCotizacion.ParamByName('sIdCotizacion').AsString := qrCotizaciones.FieldByName('sIdCotizacion').AsString ;
   zCotizacion.ParamByName('Contrato').AsString      := global_contrato ;
   zCotizacion.Open;

end;

procedure TfrmVtaCotizaciones.btnBuscarFirmanteClick(Sender: TObject);
begin

  qrFirmante.Active := False;
  qrFirmante.SQl.Clear;
  qrFirmante.SQl.Add('select * from firmantesdigital');
  qrFirmante.Open;

  if qrFirmante.RecordCount = 0 then
    raise Exception.Create( 'No se encontraron firmantes registrados' );

  pnlFirmantes.Visible := True;
  pnlFirmantes.Width := 500;
  pnlFirmantes.Height := 1200;
  Crear_Form(pnlFirmantes, frmVtaCotizaciones, 'Seleccione un firmante para la cotización', 100,100, 500, 1200, [biSystemMenu]);
  pnlFirmantes.Width := 10;
  pnlFirmantes.Height := 10;
  pnlFirmantes.Visible := False;
  pnlFirmantes.Parent := frmVtaCotizaciones;
end;

procedure TfrmVtaCotizaciones.btnCancelClick(Sender: TObject);
begin
  Progreso.Visible := False;
  Progreso.ActiveStep := 0;
  Paginas.ActivePageIndex := 0;
  frmBarra1.btnCancelClick(Sender);
  if qrCotizaciones.State in [dsEdit, dsInsert] then
    qrCotizaciones.Cancel;

  qrCotizaciones.Active := False;
  qrCotizaciones.ParamByName('contrato').AsString := global_contrato;
  qrCotizaciones.ParamByName('compania').AsString := qrCompanias.FieldByName('sIdCompania').AsString;
  qrCotizaciones.Open;
end;

procedure TfrmVtaCotizaciones.btnCerrarPopUpClick(Sender: TObject);
begin
  ToolTip.ClosePopup;
end;

procedure TfrmVtaCotizaciones.btnDeleteClick(Sender: TObject);
begin
  qrConceptosxCot.Delete;
end;

procedure TfrmVtaCotizaciones.btnEditClick(Sender: TObject);
var
  lDes, aux, x, z : Integer;
  xAnt : Integer;
  Titulo, Concepto : String;
  Cantidad, Pu, Importe : string;
  Texto : String;
begin
  if qrCotizaciones.RecordCount > 0 then
  begin
    if LowerCase( qrCotizaciones.FieldByName('eEstado').AsString ) = 'cerrada' then
      raise Exception.Create('La cotización ya esta cerrada');

    qrConceptosxCot.Active := False;
    qrConceptosxCot.ParamByName('cotizacion').AsString := qrCotizaciones.FieldByName('sIdCotizacion').AsString;
    qrConceptosxCot.ParamByName('compania').AsString := qrCompanias.FieldByName('sIdCompania').AsString;
    qrConceptosxCot.ParamByName('contrato').AsString := global_contrato;
    qrConceptosxCot.Open;

    qrCotizaciones.Edit;

    Progreso.Visible := True;
    Progreso.ActiveStep := 0;
    Paginas.ActivePageIndex := 1;
    dbCompania.SetFocus;

    lblCreo.Visible := True;
  end;
end;

procedure TfrmVtaCotizaciones.btnExitClick(Sender: TObject);
begin
  frmBarra1.btnExitClick(Sender);
  Close;
end;



procedure TfrmVtaCotizaciones.btnImprimirExcelClick(Sender: TObject);
begin
  cotizacionExcel
end;

procedure TfrmVtaCotizaciones.btnImprimirPdfClick(Sender: TObject);
begin
  cotizacionPdf( True );
end;

procedure TfrmVtaCotizaciones.btnCorreoClick(Sender: TObject);
Var
  Form : TForm;
begin
if ( Paginas.ActivePageIndex = 4 )  and ( HayInternet ) then
    begin
      Form := TForm.Create( nil );
      Form.BorderStyle := bsDialog;
      Form.BorderIcons := [ biSystemMenu ];
      Form.Width := 400;
      Form.Height := 550;
      Form.Position := poScreenCenter;

      grpNotificaMail.Parent := Form;
      grpNotificaMail.Align := alClient;
      grpNotificaMail.Visible := True;
      {pgSliders.ActivePageIndex := 0;
      txtParaMail.Text := connection.configuracionVta.FieldByName( FIELD_MAIL_USER_TO ).AsString;}

      Form.ShowModal;
      grpNotificaMail.Parent := Self;
      grpNotificaMail.Align := alNone;
      grpNotificaMail.Left := 0;
      grpNotificaMail.Top := 0;
      grpNotificaMail.Width := 0;
      grpNotificaMail.Height := 0;
    end;
end;


procedure TfrmVtaCotizaciones.btnNext1Click(Sender: TObject);

  var
  vacios, x : Integer;
  zqryActualizarConsecutivo : TZQuery;
begin


///aqui consulto la cotizacion
   zCotizacion.Active := False ;
   zCotizacion.ParamByName('sIdCotizacion').AsString := qrCotizaciones.FieldByName('sIdCotizacion').AsString ;
   zCotizacion.ParamByName('Contrato').AsString      := global_contrato ;
   zCotizacion.Open;

   //inicializarRegistro;

  vacios := 0;
  for x := 0 to Paginas.Pages[1].ControlCount - 1 do
  begin
    if (Paginas.Pages[1].Controls[x] is TcxDBTextEdit) then
    begin
      if not (Trim((Paginas.Pages[1].Controls[x] as TcxDBTextEdit).Text) <> '')   then
      begin
        Inc(vacios);
        (Paginas.Pages[1].Controls[x] as TcxDBTextEdit).Style.Color := $008080FF;
      end
      else
        (Paginas.Pages[1].Controls[x] as TcxDBTextEdit).Style.Color := clWindow;
    end;
    if (Paginas.Pages[1].Controls[x] is TcxDBLookupComboBox) then
    begin
      if not (Trim((Paginas.Pages[1].Controls[x] as TcxDBLookupComboBox).Text) <> '') then
      begin
        Inc(vacios);
        (Paginas.Pages[1].Controls[x] as TcxDBLookupComboBox).Style.Color := $008080FF;
      end
      else
        (Paginas.Pages[1].Controls[x] as TcxDBLookupComboBox).Style.Color := clWindow;
    end;
  end;

  if vacios = 0 then
  begin
    //Actualizar el numero consecutivo de la configuracion de ventas
    zqryActualizarConsecutivo := TZQuery.Create(Self);
    zqryActualizarConsecutivo.Connection := connection.zConnection;

    Progreso.ActiveStep := 1;
    Paginas.ActivePageIndex := 2;
    if qrCotizaciones.State in [dsInsert] then
      qrCotizaciones.FieldByName('sUsuario').AsString := global_nombre;
    qrCotizaciones.Post;
    qrCotizaciones.Edit;

    zqryActualizarConsecutivo.Active := False;
    zqryActualizarConsecutivo.SQL.Add('update vta_configuracion SET iConsecutivo = iConsecutivo + 1 ' +
                                  'where sNombreCorto = :sNombreCorto');
    zqryActualizarConsecutivo.Params.ParamByName('sNombreCorto').AsString := connection.configuracionVta.FieldByName('sNombreCorto').AsString;
    zqryActualizarConsecutivo.ExecSQL;

    connection.configuracionVta.Refresh;
  end
  else
    MessageDlg('Existen ' + IntToStr(vacios) + 'campos vacios', mtWarning, [mbOK], 0);
end;


procedure TfrmVtaCotizaciones.btnPostClick(Sender: TObject);
var
  count : integer;
begin

  try

      if ((qrConceptosxCot.State in [dsEdit]) and (oldConcepto <> qrConceptosxCot.FieldByName('sIdConcepto').AsString)) or (qrConceptosxCot.State in [dsInsert]) then
      begin
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('select sIdConcepto '+
                                    'from vta_conceptosxcotizacion '+
                                    'where sIdCotizacion = :cotizacion '+
                                    'and sIdCompaniaConf = :contrato '+
                                    'and sIdCompania = :compania '+
                                    'and sIdConcepto = :concepto');
        connection.QryBusca.ParamByName('cotizacion').AsString := qrCotizaciones.FieldByName('sIdCotizacion').AsString;
        connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('compania').AsString := qrCompanias.FieldByName('sIdCompania').AsString;
        connection.QryBusca.ParamByName('concepto').AsString := qrConceptosxCot.FieldByName('sIdConcepto').AsString;
        connection.QryBusca.Open;

        count := connection.QryBusca.RecordCount;
      end  ;


        if global_mostrartips then
        begin
          lblToolTip.Caption := 'Ya esta resgistrado el concepto '+ #13 + qrConceptosxCot.FieldByName('sIdConcepto').AsString + #13 +'en esta cotización.' + #13 + 'Busque otro concepto';
          ToolTip.PopupAtControl(btnSeleccionarConcepto, pdBottomCenter);
        end;


      raise Exception.Create( 'Especifique un concepto' );
  except
    on e:Exception do
      MessageDlg( e.Message, mtInformation, [ mbOK ], 0 );

  end;
end;

procedure TfrmVtaCotizaciones.btnPrinterClick(Sender: TObject);
begin
  qrConceptosxCot.Active := False;
  qrConceptosxCot.ParamByName('cotizacion').AsString := qrCotizaciones.FieldByName('sIdCotizacion').AsString;
  qrConceptosxCot.ParamByName('compania').AsString := qrCompanias.FieldByName('sIdCompania').AsString;
  qrConceptosxCot.ParamByName('contrato').AsString := global_contrato;
  qrConceptosxCot.Open;

  Progreso.Visible := True;
  Progreso.ActiveStep := 3;
  Paginas.ActivePageIndex := 4;
end;

procedure TfrmVtaCotizaciones.btnRefreshClick(Sender: TObject);
var
  after : TDataSetNotifyEvent;
begin
  after := qrCompanias.AfterScroll;
  qrCompanias.AfterScroll := nil;
  qrCompanias.Active := False;
  qrCompanias.Open;
  qrCompanias.AfterScroll := after;
end;


procedure TfrmVtaCotizaciones.btnSeleccionarFirmanteClick(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  qrCotizaciones.FieldByName('sFirmante').AsString := qrFirmante.FieldByName('sIdNombre').AsString;
  
  qrFirmante.Active := False;
  qrFirmante.SQl.Clear;
  qrFirmante.SQl.Add('select * from firmantesdigital where sIdNombre = :firmante');
  qrFirmante.ParamByName('firmante').AsString := qrCotizaciones.FieldByName('sFirmante').AsString;
  qrFirmante.Open;

  BlobField := qrFirmante.FieldByName('bFirma');
  bS := qrFirmante.CreateBlobStream(BlobField, bmRead);

  if bS.Size > 1 then
  begin
    try
      Pic := TJPEGImage.Create;
      try
        Pic.LoadFromStream(bS);
        imgFirmante.Picture.Graphic := Pic;
      finally
        Pic.Free;
      end;
    finally
      bS.Free;
    end;
  end
  else
    bImagen.Picture.LoadFromFile('');
end;

procedure TfrmVtaCotizaciones.Cerrarestacotizacion1Click(Sender: TObject);
begin
  if MessageDlg('¿Confirma el cierre de la cotizacion?', mtConfirmation,[ mbYes, mbCancel ], 0 ) = mrYes then
  begin
    qrCotizaciones.Edit;
    qrCotizaciones.FieldByName('eEstado').AsString := 'Cerrada';
    qrCotizaciones.Post;
  end;
end;

procedure TfrmVtaCotizaciones.ColIdConceptoPropertiesChange(Sender: TObject);
begin
  actualizaDatos;
end;

procedure TfrmVtaCotizaciones.ColInsumoPropertiesChange(Sender: TObject);
begin
  actualizaDatos;
end;

procedure TfrmVtaCotizaciones.cxButton1Click(Sender: TObject);
begin
  qrCotizaciones.Edit;

  Progreso.ActiveStep := 2;
  Paginas.ActivePageIndex := 3;
end;

procedure TfrmVtaCotizaciones.cxButton3Click(Sender: TObject);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin


  if qrConceptosxCot.State in [dsBrowse] then
  begin
    qrCotizaciones.Edit;
    if sEstado = 'nuevo' then
    begin
    qrCotizaciones.FieldByName('mParte1').AsString := connection.configuracionVta.FieldByName('mParrafo1Cot').AsString ;
    qrCotizaciones.FieldByName('mParte2').AsString := connection.configuracionVta.FieldByName('mParrafo2Cot').AsString ;
    end;
    Progreso.ActiveStep := 2;
    Paginas.ActivePageIndex := 3;

    qrFirmante.Active := False;
    qrFirmante.SQl.Clear;
    qrFirmante.SQl.Add('select * from firmantesdigital where sIdNombre = :firmante');
    qrFirmante.ParamByName('firmante').AsString := qrCotizaciones.FieldByName('sFirmante').AsString;
    qrFirmante.Open;

    BlobField := qrFirmante.FieldByName('bFirma');
    bS := qrFirmante.CreateBlobStream(BlobField, bmRead);

    if bS.Size > 1 then
    begin
      try
        Pic := TJPEGImage.Create;
        try
          Pic.LoadFromStream(bS);
          imgFirmante.Picture.Graphic := Pic;
        finally
          Pic.Free;
        end;
      finally
        bS.Free;
      end;
    end
    else
      bImagen.Picture.LoadFromFile('');
  end
  else
  begin
    if global_mostrartips then
    begin
      lblToolTip.Caption := 'Para poder continuar con el proceso ' + #13 + 'debe guardar o cancelar sus cambios';
    end;
  end;
end;

procedure TfrmVtaCotizaciones.cxButton5Click(Sender: TObject);
var
  Cotizacion : TCotizacionMail;

begin
  if (Trim(dbParrafo1.Text) <> '') and (Trim(dbParrafo2.Text) <> '') then
   begin
    if (qrCotizaciones.State in [dsEdit]) or (qrCotizaciones.State in [dsInsert]) then
      qrCotizaciones.Post;

     sEstado := '';

     Progreso.ActiveStep := 3;
     Paginas.ActivePageIndex := 4;

     Application.ProcessMessages;
   end
  else
    begin
     if global_mostrartips then
       begin
         lblToolTip.Caption := 'Existen campos vacios';
         ToolTip.PopupAtControl(dbParrafo1, pdBottomRight);
       end;
    end;

    qrConceptosxCot.Active := False ;
    qrConceptosxCot.Params.ParamByName('Cotizacion').AsString := qrCotizaciones.FieldByName('sIdCotizacion').AsString ;
    qrConceptosxCot.Params.ParamByName('Contrato').AsString   := global_contrato ;
    qrConceptosxCot.Params.ParamByName('Compania').AsString   := qrCotizaciones.FieldByName('sIdCompania').AsString ;
    qrConceptosxCot.Open ;

end;

procedure TfrmVtaCotizaciones.cxdCreoEnter(Sender: TObject);
begin
  if (Sender is TcxDBTextEdit) then
    (Sender as TcxDBTextEdit).Style.Color := global_color_entradaERP;
  if (Sender is TcxDBLookupComboBox) then
    (Sender as TcxDBLookupComboBox).Style.Color := global_color_entradaERP;
  if (Sender is TcxDBMemo) then
    (Sender as TcxDBMemo).Style.Color := global_color_entradaERP;
  if (Sender is TcxDBCalcEdit) then
    (Sender as TcxDBCalcEdit).Style.Color := global_color_entradaERP;

  if global_mostrartips then
  begin
    pnlToolTip.Visible := True;
    TextoTip(Sender as TWinControl);
    if (Sender as TWinControl).Name = 'dbConcepto' then
      ToolTip.PopupAtControl((Sender as TWinControl), pdBottomCenter)
    else
      ToolTip.PopupAtControl((Sender as TWinControl), pdRightCenter);
  end;  

end;

procedure TfrmVtaCotizaciones.cxdCreoExit(Sender: TObject);
begin
  if (Sender is TcxDBTextEdit) then
    (Sender as TcxDBTextEdit).Style.Color := $00F0F0F0;
  if (Sender is TcxDBLookupComboBox) then
    (Sender as TcxDBLookupComboBox).Style.Color := $00F0F0F0;
  if (Sender is TcxDBMemo) then
    (Sender as TcxDBMemo).Style.Color := $00F0F0F0;
  if (Sender is TcxDBCalcEdit) then
    (Sender as TcxDBCalcEdit).Style.Color := $00F0F0F0;

end;

procedure TfrmVtaCotizaciones.cxgGridCotizaEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if (key = VK_RETURN) and (zcotizacion.state in [dsEdit, dsInsert])then
    zCotizacion.Post;

  if key = VK_ESCAPE then
    if not zCotizacion.Eof then
      zCotizacion.cancel;
end;



procedure TfrmVtaCotizaciones.cxgGridCotizaEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
 actualizaimporte;
end;

procedure TfrmVtaCotizaciones.btnConfiguracionMailClick(Sender: TObject);
begin
  Application.CreateForm( TfrmConfiguracionVTA, frmConfiguracionVTA );
  frmConfiguracionVTA.ShowModal;
  //txtParaMail.Text := connection.configuracionVta.FieldByName( FIELD_MAIL_USER_TO ).AsString;
end;

procedure TfrmVtaCotizaciones.btnConfirmPasswordClick(Sender: TObject);
var
  NotificarCotizacion : TCotizacionMail;
  NombreArchivo : string;
  zReplace : TZReadOnlyQuery;
begin
  zReplace := TZReadOnlyQuery.Create( nil );
  zReplace.Connection := connection.zConnection;
  zReplace.Active := False;
  zReplace.SQL.Text := 'select replace(:valor, "-", "_") as Resultado';
  zReplace.ParamByName( 'valor' ).AsString := qrCotizaciones.FieldByName( 'sIdCotizacion' ).AsString;
  zReplace.Open;
  NombreArchivo := zReplace.FieldByName( 'Resultado' ).AsString;
(*
  MAIL_SMTP_PASSWORD := txtPasswordMail.Text;

  if Length( Trim( MAIL_SMTP_PASSWORD ) ) > 0 then
  begin
    try
      NotificarCotizacion := TCotizacionMail.Create( lstCCPMail.Items );
      NotificarCotizacion.Connect;

      if NotificarCotizacion.Conectado then
      begin
        if chkAdjuntarPDF.Checked then
        begin
          cotizacionPdf( False );
          frxCotizacion.PrepareReport( True );
          frxPDFExport.DefaultPath := ExtractFilePath( Application.ExeName );
          frxPDFExport.ShowProgress := True;
          frxPDFExport.ShowDialog := False;
          frxPDFExport.FileName := NombreArchivo + '.pdf';
          frxCotizacion.Export( frxPDFExport );
          btnConfirmPassword.ModalResult := mrOk;
        end;

        NotificarCotizacion.Enviar( qrCotizaciones.FieldByName( 'sIdCompania' ).AsString, qrCotizaciones.FieldByName( 'sIdCotizacion' ).AsString, frxPDFExport.DefaultPath + NombreArchivo + '.pdf' );
        NotificarCotizacion.Desconectar;
        MessageDlg( 'Enviado', mtInformation, [ mbOK ], 0 ) ;
        txtPasswordMail.Properties.ReadOnly := True;
        btnConfirmPassword.Enabled := False;
      end;
    except
      on e:Exception do
      begin
        if not ( NotificarCotizacion = nil ) then
          NotificarCotizacion.Desconectar;

        MAIL_SMTP_PASSWORD := '';
        MessageDlg( 'El proceso de ha detenido.' + #13 + e.Message, mtInformation, [ mbOK ], 0 );
      end;
    end;

  end;
*)
end;

procedure TfrmVtaCotizaciones.dbAsuntoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbFecha.SetFocus;
end;


procedure TfrmVtaCotizaciones.dbCiudadKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbAsunto.SetFocus;
end;

procedure TfrmVtaCotizaciones.dbCompaniaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    dbNombre.SetFocus;
end;

procedure TfrmVtaCotizaciones.dbCompaniaPropertiesChange(Sender: TObject);
begin
  if ZQuery1.Locate('sIdCompania',dbCompania.Text, []) then
  begin
    dbNombre.Text := ZQuery1.FieldByName('sContacto').AsString;
    dbPuesto.Text := ZQuery1.FieldByName('sPuesto').AsString;
  end;

end;


procedure TfrmVtaCotizaciones.dbFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnNext1.SetFocus;
end;

procedure TfrmVtaCotizaciones.dbFolioEnter(Sender: TObject);
begin
  if (Sender is TcxDBTextEdit) then
    (Sender as TcxDBTextEdit).Style.Color := global_color_entradaERP;
  if (Sender is TcxDBLookupComboBox) then
    (Sender as TcxDBLookupComboBox).Style.Color := global_color_entradaERP;
  if (Sender is TcxDBMemo) then
    (Sender as TcxDBMemo).Style.Color := global_color_entradaERP;
  if (Sender is TcxDBCalcEdit) then
    (Sender as TcxDBCalcEdit).Style.Color := global_color_entradaERP;

  if global_mostrartips then
  begin
    pnlToolTip.Visible := True;
    TextoTip(Sender as TWinControl);
    if (Sender as TWinControl).Name = 'dbConcepto' then
      ToolTip.PopupAtControl((Sender as TWinControl), pdBottomCenter)
    else
      ToolTip.PopupAtControl((Sender as TWinControl), pdRightCenter);
  end;
//  btnCerrarPopUp.SetFocus;
end;

procedure TfrmVtaCotizaciones.dbFolioExit(Sender: TObject);
begin
  if (Sender is TcxDBTextEdit) then
    (Sender as TcxDBTextEdit).Style.Color := $00F0F0F0;
  if (Sender is TcxDBLookupComboBox) then
    (Sender as TcxDBLookupComboBox).Style.Color := $00F0F0F0;
  if (Sender is TcxDBMemo) then
    (Sender as TcxDBMemo).Style.Color := $00F0F0F0;
  if (Sender is TcxDBCalcEdit) then
    (Sender as TcxDBCalcEdit).Style.Color := $00F0F0F0;

   zqryFrentes.Active := False;
   zqryFrentes.ParamByName('contrato').AsString := global_contrato;
   zqryFrentes.ParamByName('compania').AsString := ZQuery1.FieldByName('sIdCompania').AsString;
   zqryFrentes.Open;
   zqryFrentes.First;
end;
                                
procedure TfrmVtaCotizaciones.dbFolioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    connection.QryBusca.Active := False;
    connection.QryBusca.SQl.Clear;
    connection.QryBusca.SQl.Add('select * from vta_cotizaciones '+
                                'where sIdCompaniaConf = :contrato '+
                                'and sIdCompania = :compania '+
                                'and sIdCotizacion = :cotizacion');
    connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
    connection.QryBusca.ParamByName('compania').AsString := qrCotizaciones.FieldbyName('sIdCompania').AsString;
    connection.QryBusca.ParamByName('cotizacion').AsString := dbFolio.Text;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount = 0 then
      dbCompania.SetFocus
    else
      MessageDlg('Ya existe una cotizacion con el folio: ' + dbFolio.Text, mtInformation, [mbOk], 0);
  end;

end;

procedure TfrmVtaCotizaciones.dbNombreKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbPuesto.SetFocus;
end;

procedure TfrmVtaCotizaciones.dbPuestoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    dbCiudad.SetFocus;
end;


procedure TfrmVtaCotizaciones.dxBarButton1Click(Sender: TObject);
begin
{  if lstCCPMail.SelCount = 1 then
    lstCCPMail.Selected.Delete;}
end;

procedure TfrmVtaCotizaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmVtaCotizaciones.FormShow(Sender: TObject);
var
  afterConceptos, after : TDataSetNotifyEvent;
begin
  sMenuP := 'btnCotizaciones' ;
  after := qrCompanias.AfterScroll;
  qrCompanias.AfterScroll := nil;
  //lstCCPMail.Items.Clear;

  connection.configuracionVta.Active := False;
  connection.configuracionVta.SQL.Text := 'select * from vta_configuracion where sNombreCorto = :contrato';
  connection.configuracionVta.ParamByName('contrato').AsString := global_contrato;
  connection.configuracionVta.Open;

  if connection.configuracionVta.FieldByName('eCotMuestraTip').AsString = 'Si' then
    global_mostrartips := True
  else
    global_mostrartips := False;

   ZQuery1.Active := False;
   ZQuery1.ParamByName('compania').AsString := global_contrato;
   ZQuery1.Open;

   qrCompanias.Active := False;
   qrCompanias.ParamByName('compania').AsString := global_contrato;
   qrCompanias.Open;
   qrCompanias.First;

   qrCotizaciones.Active := False;
   qrCotizaciones.ParamByName('contrato').AsString := global_contrato;
   qrCotizaciones.ParamByName('compania').AsString := qrCompanias.FieldByName('sIdCompania').AsString;
   qrCotizaciones.Open;

   zInsumos.ParamByName('sIdInsumo').AsString := '-1';
   zInsumos.Open;

   zMedidas.Open;

   meses[1] := 'Enero';
   meses[2] := 'Febrero';
   meses[3] := 'Marzo';
   meses[4] := 'Abril';
   meses[5] := 'Mayo';
   meses[6] := 'Junio';
   meses[7] := 'Julio';
   meses[8] := 'Agosto';
   meses[9] := 'Septiembre';
   meses[10] := 'Octubre';
   meses[11] := 'Noviembre';
   meses[12] := 'Diciembre';

   llenarcias ;

   Paginas.ActivePageIndex := 0;
end;

procedure TfrmVtaCotizaciones.frmBarra1btnDeleteClick(Sender: TObject);
begin
  if qrCotizaciones.RecordCount > 0 then
  begin
     if MessageDlg('¿Desea eliminar la cotización?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
       connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('delete from vta_conceptosxcotizacion '+
                                  'where sIdCotizacion = :cotizacion '+
                                  'and sIdCompaniaConf = :contrato '+
                                  'and sIdCompania = :compania');
      connection.zCommand.ParamByName('cotizacion').AsString := qrCotizaciones.FieldByName('sIdCotizacion').AsString;
      connection.zCommand.ParamByName('contrato').AsString   := global_contrato;
      connection.zCommand.ParamByName('compania').AsString   := qrCotizaciones.FieldByName('sIdCompania').AsString;
      connection.zCommand.ExecSQL;
      qrCotizaciones.Delete;
    end;
  end;
end;


procedure TfrmVtaCotizaciones.gridCompaniasCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 llenarcias ;
end;

procedure TfrmVtaCotizaciones.gridCompaniasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 llenarcias ;
end;

procedure TfrmVtaCotizaciones.gridCompaniasKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 llenarcias ;
end;

procedure TfrmVtaCotizaciones.GridCotizacionesCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  llenarconceptos ;
end;

procedure TfrmVtaCotizaciones.GridCotizacionesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 llenarconceptos ;
end;

procedure TfrmVtaCotizaciones.GridCotizacionesKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  llenarconceptos ;
end;

procedure TfrmVtaCotizaciones.Grid_BuscaConceptosCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnAceptConcepto.Click;
end;

procedure TfrmVtaCotizaciones.Grid_BuscaConceptosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnAceptConcepto.Click;
end;

procedure TfrmVtaCotizaciones.PaginasChange(Sender: TObject);
begin
  if Paginas.ActivePageIndex = 0 then
    frminteligent.mInteligent.ShowTabGroups := True;
end;

procedure TfrmVtaCotizaciones.pgSlidersChange(Sender: TObject);
begin
{  if pgSliders.ActivePageIndex = 1 then
  begin
    txtPasswordMail.SetFocus;
  end;}
end;

procedure TfrmVtaCotizaciones.ProgresoStepClick(Sender: TObject;
  StepIndex: Integer; StepMode: TStepMode);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
    if StepIndex = 0 then
  begin
     if (qrCotizaciones.State in [dsEdit]) or (qrCotizaciones.State in [dsInsert]) then
      qrCotizaciones.Post;
     qrCotizaciones.Edit;

     Paginas.ActivePageIndex := 1;
  end;

  if StepIndex = 1 then
  begin
    if validarCampos then
    begin
      if (qrCotizaciones.State in [dsEdit]) or (qrCotizaciones.State in [dsInsert]) then
        qrCotizaciones.Post;

      Paginas.ActivePageIndex := 2;
    end
    else
      Paginas.ActivePageIndex := 1;

  end;

  if StepIndex = 2 then
  begin
    if (qrConceptosxCot.State in [dsInsert]) or (qrConceptosxCot.State in [dsEdit]) then
    begin
     // qrConceptosxCot.FieldByName('dImporte').AsFloat := dbImporte.Value;
      qrConceptosxCot.Post;
    end;

    qrFirmante.Active := False;
    qrFirmante.SQl.Clear;
    qrFirmante.SQl.Add('select * from firmantesdigital where sIdNombre = :firmante');
    qrFirmante.ParamByName('firmante').AsString := qrCotizaciones.FieldByName('sFirmante').AsString;
    qrFirmante.Open;

    BlobField := qrFirmante.FieldByName('bFirma');
    bS := qrFirmante.CreateBlobStream(BlobField, bmRead);

    if bS.Size > 1 then
    begin
      try
        Pic := TJPEGImage.Create;
        try
          Pic.LoadFromStream(bS);
          imgFirmante.Picture.Graphic := Pic;
        finally
          Pic.Free;
        end;
      finally
        bS.Free;
      end;
    end
    else
      bImagen.Picture.LoadFromFile('');


     if (qrCotizaciones.State in [dsEdit]) or (qrCotizaciones.State in [dsInsert]) then
      qrCotizaciones.Post;
     qrCotizaciones.Edit;
    Paginas.ActivePageIndex := 3;
  end;

  if StepIndex = 3 then
  begin
    if (qrConceptosxCot.State in [dsInsert]) or (qrConceptosxCot.State in [dsEdit]) then
      qrConceptosxCot.Post;

    if (qrCotizaciones.State in [dsEdit]) or (qrCotizaciones.State in [dsInsert]) then
      qrCotizaciones.Post;

    Paginas.ActivePageIndex := 4;
  end;

end;



procedure TfrmVtaCotizaciones.qrConceptosxCotdCantidadChange(Sender: TField);
begin
  if (qrConceptosxCot.State in [dsInsert]) or (qrConceptosxCot.State in [dsEdit]) then  
    qrConceptosxCotdImporte.Value := qrConceptosxCot.FieldByName('dCantidad').AsFloat * qrConceptosxCot.FieldByName('dPU').AsFloat;
end;



procedure TfrmVtaCotizaciones.qrFirmanteAfterScroll(DataSet: TDataSet);
var
  bS: TStream;
  Pic: TJpegImage;
  BlobField: tField;
begin
  BlobField := qrFirmante.FieldByName('bFirma');
  bS := qrFirmante.CreateBlobStream(BlobField, bmRead);

  if bS.Size > 1 then
  begin
    try
      Pic := TJPEGImage.Create;
      try
        Pic.LoadFromStream(bS);
        bImagen.Picture.Graphic := Pic;
      finally
        Pic.Free;
      end;
    finally
      bS.Free;
    end;
  end
  else
    bImagen.Picture.LoadFromFile('');
end;

procedure TfrmVtaCotizaciones.REabrir1Click(Sender: TObject);
begin
  if MessageDlg('¿Confirma la apertura de la cotizacion?', mtConfirmation,[ mbYes, mbCancel ], 0 ) = mrYes then
  begin
    zCotizacion.Edit;
    zCotizacion.FieldByName('eEstado').AsString := 'Pendiente';
    zCotizacion.Post;
  end;
end;

procedure TfrmVtaCotizaciones.TextoTip(Control: TWinControl);
begin
  if Control.Name = 'dbFolio' then
    lblToolTip.Caption := 'Especifique aqui' + #13 + #10 + ' el folio de la cotización';
  if Control.Name = 'dbCompania' then
    lblToolTip.Caption := 'Especifique la compañia ' + #13 + #10 + ' a la que se dirigira la cotización';
  if Control.Name = 'dbNombre' then
    lblToolTip.Caption := 'Nombre de la persona ' + #13 + #10 + ' a la que se dirige la cotización';
  if Control.Name = 'dbPuesto' then
    lblToolTip.Caption := 'Puesto de la persona ' + #13 + #10 + ' a la que se dirige la cotización';
  if Control.Name = 'dbCiudad' then
    lblToolTip.Caption := 'Cuidad en la que está alojada la compañia';
  if Control.Name = 'dbAsunto' then
    lblToolTip.Caption := 'Asunto de la cotización';
  if Control.Name = 'dbConcepto' then
    lblToolTip.Caption := 'ID del concepto, de click en "Buscar concepto" ' + #13 + #10 +
                          'para seleccionar un concepto existente en el sistema';
  if Control.Name = 'dbConceptoDes' then
    lblToolTip.Caption := 'Descripción del concepto, aqui puede especifique' + #13 + #10 +
                          'todo lo relacionado con el concepto';
  if Control.Name = 'dbParrafo1' then
    lblToolTip.Caption := 'Aqui describa su introduccion para la cotización, ' + #13 + #10 +
                          'Esta parte es la que antecede a la tabla de conceptos';

  if Control.Name = 'dbParrafo2' then
    lblToolTip.Caption := 'Aqui especifique aspectos adicionales respecto a la cotización, ' + #13 + #10 +
                          'Esta parte es la que esta despues de la tabla de conceptos';

  if Control.Name = 'dbCantidad' then
    lblToolTip.Caption := 'Establesca la cantidad del concepto';

  if Control.Name = 'dbUnidad' then
    lblToolTip.Caption := 'Especifique la unidad de medida del concepto';

  if Control.Name = 'dbPU' then
    lblToolTip.Caption := 'Espefique el precio unitario';

  if Control.Name = 'dbImporte' then
    lblToolTip.Caption := 'Importe del concepto';   
end;

procedure TfrmVtaCotizaciones.txtCopiaMailKeyPress(Sender: TObject;
  var Key: Char);
begin
{  btnAddMail.Enabled := Length( Trim( txtParaMail.Text ) ) > 0;

  if Key = #13 then
  begin
    if Length( Trim( txtCopiaMail.Text ) ) > 0 then
    begin
      if not ValidaMail( Trim( txtCopiaMail.Text ) ) then
        btnAddMail.Click;
    end;

  end;
}
end;

procedure TfrmVtaCotizaciones.txtPasswordMailKeyPress(Sender: TObject;
  var Key: Char);
begin
{
  btnConfirmPassword.Enabled := Length( Trim( txtPasswordMail.Text ) ) > 0;

  if ( Key = #13 ) and ( btnConfirmPassword.Enabled ) then
    btnConfirmPassword.Click; }
end;




procedure TfrmVtaCotizaciones.cotizacionExcel;
var
  Excel, Libro, Hoja : Variant;

  //Necesarios para insertar el logo de la compañia...
  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;
  TmpName: String;

  iNum, iFila : Integer;

  continuar : Boolean;
  direccion : string;

  procedure Contornos;
  begin
    Excel.Selection.Borders[xlEdgeLeft].LineStyle   := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight      := xlThin;
    Excel.Selection.Borders[xlEdgeTop].LineStyle    := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight       := xlThin;
    Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight    := xlThin;
    Excel.Selection.Borders[xlEdgeRight].LineStyle  := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight     := xlThin;
  end;

begin

  {$REGION 'Guardar'}

  SaveDlg.FileTypes.Clear;
  SaveDlg.FileTypes.Add;
  SaveDlg.FileTypes.Items[0].DisplayName := 'Archivo de Excel' ;
  SaveDlg.FileTypes.Items[0].FileMask := '*.xlsx';
  SaveDlg.FileName := qrCotizaciones.FieldByName('sIdCotizacion').AsString;

  continuar := False;
  if SaveDlg.Execute then
  begin
    Direccion := SaveDlg.FileName;
    continuar := True;
  end;
  {$ENDREGION}

  if continuar then
  begin
    qrConceptosxCot.First;

    {$REGION 'Crear Excel'}

    Excel := CreateOleObject('Excel.Application');
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := True;
    Libro := Excel.Workbooks.Add;
    Hoja := Libro.Sheets[1];
    Hoja.PageSetup.Orientation := xlPortrait;
    Hoja.PageSetup.TopMargin := 0.0;
    Hoja.PageSetup.BottomMargin  := 0.0;
    Hoja.PageSetup.LeftMargin := 0.0;
    Hoja.PageSetup.RightMargin := 0.0;
    Hoja.PageSetup.CenterHorizontally := True;
    Hoja.PageSetup.CenterVertically := False;
    Hoja.PageSetup.Draft := False;
    Hoja.PageSetup.FitToPagesWide := 1;
    Hoja.PageSetup.Zoom := False;
    Excel.ActiveWindow.DisplayGridlines := False;
    Hoja.Name := qrCotizaciones.FieldByName('sIdCotizacion').AsString;

    {$ENDREGION}


    {$REGION 'Encabesado y Formato'}

    try
      TmpName := '';
      imgAux := TImage.Create(nil);
      if TmpName='' then
      begin
        TempPath := ExtractFilePath(Application.ExeName);
        TmpName:= ExtractFilePath(Application.ExeName) + 'logo.jpg';
        if FileExists(TmpName) then
            DeleteFile(TmpName);

        fs := Connection.configuracionVta.CreateBlobStream(Connection.configuracionVta.FieldByName('bImagen'), bmRead);
        If fs.Size > 1 Then
        Begin
          try
            Pic:=TJpegImage.Create;
            try
              Pic.LoadFromStream(fs);
              imgAux.Picture.Graphic := Pic;
            finally
              Pic.Free;
            end;
          finally
            fs.Free;
          End;
          if not FileExists(TmpName) then
            imgAux.Picture.SaveToFile(TmpName);
        End;
      end;
    Finally
        imgAux.Free;
    End;
    Excel.ActiveSheet.Shapes.AddPicture(TmpName, True, True, 10, 2, 90, 75);

    Excel.Range['D1:K2'].Select;
    Excel.Selection.MergeCells := True;
    Excel.Selection.Value := connection.configuracionVta.FieldByName('sSlogan').AsString;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.Font.Size := connection.configuracionVta.FieldByName('iTamanioFuenteHeader').AsString;
    Excel.Selection.Font.Name := connection.configuracionVta.FieldByName('sFuenteHeader').AsString;

    {$ENDREGION}

    Excel.Range['G5:L5'].Select;
    Excel.Selection.MergeCells := True;
    Excel.Selection.Value := connection.configuracionVta.FieldByName('sDireccion2').AsString + 'A '+ IntToStr(DayOf(Date)) + ' ' + UpperCase(meses[MonthOf(Date)]) + ' DEL '+ IntToStr(YearOf(Date));
    Excel.Selection.HorizontalAlignment := xlRight;

    Excel.Columns['A:A'].ColumnWidth := 4;
    Excel.Columns['M:M'].ColumnWidth := 4;
    Excel.Range['B7'].Select;
    Excel.Selection.Value := 'AT"N.:';
    Excel.Range['B8'].Select;
    Excel.Selection.Value := qrCotizaciones.FieldByName('sNombre').AsString;
    Excel.Range['B9'].Select;
    Excel.Selection.Value := qrCotizaciones.FieldByName('sPuesto').AsString;
    Excel.Range['B10'].Select;
    Excel.Selection.Value := qrCotizaciones.FieldByName('sIdCompania').AsString;
    Excel.Range['B7:B10'].Select;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.VerticalAlignment := xlCenter;

    Excel.Range['I12:I12'].Select;
    Excel.Selection.Value := 'ASUNTO: ';

    Excel.Range['J12:L12'].Select;
    Excel.Selection.MergeCells := True;
    Excel.Selection.Value := qrCotizaciones.FieldByName('sAsunto').AsString;

    Excel.Range['B15:L24'].Select;
    Excel.Selection.MergeCells := True;
    Excel.Selection.Value := qrCotizaciones.FieldByName('mParte1').AsString;
    Excel.Selection.WrapText := True;
    Excel.Selection.HorizontalAlignment := xlJustify;
    Excel.Selection.VerticalAlignment := xlCenter;

    Excel.Rows[26].RowHeight := 30;
    Excel.Columns['K:K'].ColumnWidth := 15;
    Excel.Range['B26'].Select;
    Contornos;
    Excel.Selection.Value := '#';
    Excel.Range['C26:H26'].Select;
    Excel.Selection.MergeCells := True;
    Excel.Selection.Value := 'DESCRIPCION / CONCEPTO';
    Contornos;
    Excel.Range['I26'].Select;
    Excel.Selection.Value := 'CANT.';
    Contornos;
    Excel.Range['J26'].Select;
    Excel.Selection.Value := 'UNIDAD';
    Contornos;
    Excel.Range['K26'].Select;
    Excel.Selection.Value := 'PRECIO ' + #13 + 'UNITARIO';
    Contornos;
    Excel.Selection.WrapText := True;
    Excel.Range['L26'].Select;
    Excel.Selection.Value := 'IMPORTE';
    Contornos;

    Excel.Range['B26:L26'].Select;
    Excel.Selection.Font.Bold := True;
    Excel.Selection.Font.Size := 12;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.HorizontalAlignment := xlCenter;

    if qrConceptosxCot.RecordCount > 0 then
    begin
      iFila := 27;
      iNum := 1;
      while not qrConceptosxCot.Eof do
      begin
        Excel.Range['B' + IntToStr(iFila)].Select;
        Excel.Selection.Value := iNum;
        Contornos;
        Excel.Range['C' + IntToStr(iFila) + ':H' + IntToStr(iFila)].Select;
        Excel.SelecTion.MergeCells := True;
        Excel.Selection.Value := qrConceptosxCot.FieldByName('sIdConcepto').AsString;
        Contornos;

        Excel.Range['C' + IntToStr(iFila + 1) + ':H' + IntToStr(iFila + 3)].Select;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Value := qrConceptosxCot.FieldByName('sDescripcion').AsString;
        Excel.Range['B' + IntToStr(iFila + 1) + ':L' + IntToStr(iFila + 3)].Select;
        Contornos;
        Excel.Range['I' + IntToStr(iFila)].Select;
        Excel.Selection.Value := qrConceptosxCot.FieldByName('dCantidad').AsFloat;

        Excel.Range['J' + IntToStr(iFila)].Select;
        Excel.Selection.Value := qrConceptosxCot.FieldByName('sUnidad').AsString;
        Contornos;
        Excel.Range['K' + IntToStr(iFila)].Select;
        Excel.Selection.Value := qrConceptosxCot.FieldByName('dPU').AsFloat;
        Contornos;
        Excel.Range['L' + IntToStr(iFila)].Select;
        Excel.Selection.Value := qrConceptosxCot.FieldByName('dImporte').AsFloat;
        Contornos;
        qrConceptosxCot.Next;
        Inc(iFila, 4);
        Inc(iNum);
      end;
    end;

    Excel.Range['B27:L' + IntToStr(iFila)].Select;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlCenter;

    Excel.Range['B' + IntToStr(iFila + 1) + ':L' + IntToStr(iFila + 10)].Select;
    Excel.Selection.MergeCells := True;
    Excel.Selection.Value := qrCotizaciones.FieldByName('mParte2').AsString;
    Excel.Selection.WrapText := True;

    Inc(iFila, 12);
    Excel.Range['E' + IntToStr(iFila) + ':I' + IntToStr(iFila)].Select;
    Excel.Selection.MergeCells := True;
    Excel.Selection.Value := 'ATENTAMENTE';
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlCenter;

    Inc(iFila);
    Excel.Range['E' + IntToStr(iFila) + ':I' + IntToStr(iFila)].Select;
    Excel.Selection.MergeCells := True;
    Excel.Selection.Value := '______________________________________';
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlTop;

    Inc(iFila);
    Excel.Range['E' + IntToStr(iFila) + ':I' + IntToStr(iFila)].Select;
    Excel.Selection.MergeCells := True;
    Excel.Selection.Value := qrCotizaciones.FieldByName('sFirmante').AsString;
    Excel.Selection.HorizontalAlignment := xlCenter;
    Excel.Selection.VerticalAlignment := xlCenter;

    Excel.Range['M1'].Select;
    Excel.Selection.Value := Char(39);

    Excel.ActiveWindow.View := xlPageBreakPreview;
  end;
end;

procedure TfrmVtaCotizaciones.cotizacionPdf( Show : Boolean );
var
   meses: array[1..12] of string;
  numletras, cadena : string  ;
  letras : TZReadOnlyQuery ;

begin

  letras := TZReadOnlyQuery.Create(Nil);
  letras.Connection := connection.ZConnection ;

   meses[1] := 'Enero';
   meses[2] := 'Febrero';
   meses[3] := 'Marzo';
   meses[4] := 'Abril';
   meses[5] := 'Mayo';
   meses[6] := 'Junio';
   meses[7] := 'Julio';
   meses[8] := 'Agosto';
   meses[9] := 'Septiembre';
   meses[10] := 'Octubre';
   meses[11] := 'Noviembre';
   meses[12] := 'Diciembre';

   cadena := 'select (SUM(v.dPu*v.dCantidad)+SUM(v.dCantidad * v.dPu*v.iva/100) ' +
             '+SUM(v.dCantidad*v.dPu*v.ieps/100)) as isis ' +
             'from vta_conceptosxcotizacion v  ' +
             'Where v.sIdCompaniaConf =:Contrato and v.sIdCompania =:Comp and v.sIdCotizacion =:Cotiza ' +
             'Group by v.sIdCotizacion ' ;

  letras.Active := False ;
  letras.SQL.Clear ;
  letras.SQL.Add(cadena) ;
  letras.Params.ParamByName('Contrato').AsString := global_contrato ;
  letras.Params.ParamByName('Comp').AsString     := qrCotizaciones.FieldByName('sIdCompania').AsString  ;
  letras.Params.ParamByName('Cotiza').AsString   := qrCotizaciones.FieldByName('sIdCotizacion').AsString ;
  letras.Open ;
  if letras.RecordCount > 0 then
      numletras := xNumerosToLletres(letras.FieldByName('isis').AsCurrency)
  else
      numletras := '0';

  if rxmLetras.RecordCount > 0 then
    rxmletras.EmptyTable;

  rxmletras.Active := True;

  rxmletras.Append;
  rxmletras.FieldByName('letras').AsString       := numLetras;
  rxmletras.Post;

  qryReporte.Active := False ;
  qryReporte.Params.ParamByName('Contrato').AsString   := global_contrato ;
  qryReporte.Params.ParamByName('Cotizacion').AsString := qrCotizaciones.FieldByName('sIdCotizacion').AsString ;
  qryReporte.Params.ParamByName('Comp').AsString       := qrCotizaciones.FieldByName('sIdCompania').AsString  ;
  qryReporte.Open ;

  frxCotizacion.DataSets.Clear;
  frxCotizacion.DataSets.Add(frxDBCotizacion);

  frxCotizacion.DataSets.Add(frxDBFirmante);

  if not FileExists(global_files + global_miReporte + '_VTAcotizacion.fr3') then
     begin
       showmessage('El archivo de reporte '+global_Mireporte+'_VTAcotizacion.fr3 no existe, notifique al administrador del sistema');
       exit;
     end
    else
     begin
         frxCotizacion.PreviewOptions.MDIChild := False ;
         frxCotizacion.PreviewOptions.Modal := True ;
      //   frxCotizacion.PreviewOptions.Maximized := lCheckMaximized () ;
         frxCotizacion.PreviewOptions.ShowCaptions := False ;
         frxCotizacion.Previewoptions.ZoomMode := zmPageWidth ;
         frxCotizacion.LoadFromFile(global_files + global_miReporte + '_VTAcotizacion.fr3') ;
         frxCotizacion.ShowReport;  //(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)) ;
     end;
     letras.Destroy ;
end;

function TfrmVtaCotizaciones.validarCampos() : Boolean;
var
  vacios, x : Integer;

begin
  vacios := 0;
  for x := 0 to Paginas.Pages[1].ControlCount - 1 do
  begin
    if (Paginas.Pages[1].Controls[x] is TcxDBTextEdit) then
    begin
      if not (Trim((Paginas.Pages[1].Controls[x] as TcxDBTextEdit).Text) <> '')   then
      begin
        Inc(vacios);
        (Paginas.Pages[1].Controls[x] as TcxDBTextEdit).Style.Color := $008080FF;
      end
      else
        (Paginas.Pages[1].Controls[x] as TcxDBTextEdit).Style.Color := clWindow;
    end;
    if (Paginas.Pages[1].Controls[x] is TcxDBLookupComboBox) then
    begin
      if not (Trim((Paginas.Pages[1].Controls[x] as TcxDBLookupComboBox).Text) <> '') then
      begin
        Inc(vacios);
        (Paginas.Pages[1].Controls[x] as TcxDBLookupComboBox).Style.Color := $008080FF;
      end
      else
        (Paginas.Pages[1].Controls[x] as TcxDBLookupComboBox).Style.Color := clWindow;
    end;
  end;

  Result := vacios = 0;

end;

procedure TfrmVtaCotizaciones.zCotizacionAfterEdit(DataSet: TDataSet);
begin
 grabarmax ;
end;

procedure TfrmVtaCotizaciones.zCotizacionAfterInsert(DataSet: TDataSet);
begin
  inicializarRegistro;
end;

procedure TfrmVtaCotizaciones.zCotizacionBeforePost(DataSet: TDataSet);
begin
 grabarmax ;
end;

procedure TfrmVtaCotizaciones.AdvMetroButton1Click(Sender: TObject);
begin
  //pgSliders.PreviousPage;
end;

function TfrmVtaCotizaciones.AgregarCopiaMail(Valor: string):Boolean;
var
  x : integer;
  Error : Boolean;
begin
  Error := False;
{
  for x := 0 to lstCCPMail.Items.Count - 1 do
  begin
    if lstCCPMail.Items[x].Caption = Valor then
    begin
      Error := True;
      Break;
    end;

  end;

  if not Error then
  begin
    with lstCCPMail.Items.Add do
    begin
      Caption := Valor;
      ImageIndex := 1;
    end;
  end;
}
  Result := Error;

end;

function TfrmVtaCotizaciones.ValidaMail(eMail: string):Boolean;
var
  c, dot : Integer;

  Error : Boolean;
begin
  c := 0;

  Error := True;
  if eMail[ Length( eMail ) ] = '.' then
    Error := True;

  while c < Length( eMail ) - 1 do
  begin
    if ( eMail[ c ] = '@' ) and ( eMail[ c + 1 ] <> '.' ) then
    begin
      Error := False;
      Break;
    end;

    Inc( c );    
  end;

  Result := Error;

end;


procedure TfrmVtaCotizaciones.llenarCias();
begin
  qrCotizaciones.Active := False;
  qrCotizaciones.ParamByName('contrato').AsString := global_contrato;
  qrCotizaciones.ParamByName('compania').AsString := qrCompanias.FieldByName('sIdCompania').AsString;
  qrCotizaciones.Open;
  if qrCotizaciones.RecordCount > 0 Then
      llenarconceptos
  else
      qrConceptosxCot.Active := False;
end ;

procedure TfrmVtaCotizaciones.llenarconceptos ();
begin
   qrConceptosxCot.Active := False;
   qrConceptosxCot.ParamByName('cotizacion').AsString := qrCotizaciones.FieldByName('sIdCotizacion').AsString;
   qrConceptosxCot.ParamByName('compania').AsString   := qrCompanias.FieldByName('sIdCompania').AsString;
   qrConceptosxCot.ParamByName('contrato').AsString   := global_contrato;
   qrConceptosxCot.Open;
end;

procedure TfrmVtaCotizaciones.grabarmax ();
var
  mensaje: string;

  tReg:Integer;
  puOld,PuNew,pu:Double;
begin

    mensaje := 'no puede estar vacio.';
    {segun la reglas que vi en la base de datos}


     zInsumos.Locate('sidInsumo', zCotizacion.FieldByName('clave').AsString,[]);

    if zCotizacion.FieldByName('Clave').IsNull then
      raise Exception.Create('Código de Insumo ' + mensaje);

    if zInsumos.fieldByName('dUtilidad').asFloat <> zCotizacion.FieldByName('util').asFloat then
            zCotizacion.FieldByName('pu').asFloat := zCotizacion.FieldByName('pu').asFloat +
                                            (zCotizacion.FieldByName('pu').asFloat *zCotizacion.FieldByName('Util').AsInteger/100)  ;

            Connection.qryBusca.SQL.Clear ;
            Connection.qryBusca.SQL.Text:= 'select min(dPu) as minimo , avg(dPu) as Promedio, max(dPu) as maximo from vta_conceptosxcotizacion ' +
                              'where sidConcepto=:Concepto' ;
            Connection.qryBusca.ParamByName('concepto').AsString:=zCotizacion.FieldByName('clave').AsString;
            Connection.qryBusca.Open;

            begin
              zInsumos.Edit;
              zInsumos.FieldByName('dMaximo').AsFloat   := connection.QryBusca.FieldByName('maximo').asFloat;
              zInsumos.FieldByName('dPromedio').AsFloat := connection.QryBusca.FieldByName('promedio').asFloat;
              zInsumos.FieldByName('dMInimo').AsFloat   := connection.QryBusca.FieldByName('minimo').asFloat ;
              zInsumos.FieldByName('dVentaMn').AsFloat  := zCotizacion.FieldByName('pu').asFloat ;
              zInsumos.FieldByName('dutilidad').AsFloat := zCotizacion.FieldByName('util').asFloat ;
              zInsumos.Post;
              zInsumos.Refresh ;
       end;

   actualizaimporte;
end;






function TfrmVtaCotizaciones.HayInternet(): Boolean;
var
  Estado: Cardinal;
begin
  Estado := INTERNET_CONNECTION_MODEM or INTERNET_CONNECTION_LAN or INTERNET_CONNECTION_PROXY;
  Result := InternetGetConnectedState(@Estado, 0);
end;

end.
