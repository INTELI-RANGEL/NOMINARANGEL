unit Unit2;

interface

uses ImgList, Controls, ExtCtrls, AdvMenus, AdvMenuStylers, Classes, ActnList,
  Menus, StdCtrls, pngimage, ButtonGroup, AdvGlowButton, Forms, JvExStdCtrls,
  JvButton, JvStartMenuButton, Graphics, Windows, CategoryButtons, SysUtils,
  DBClient, Dialogs, Messages, DB, jpeg, DBCtrls, JvDBImage, ClientClassesUnit1,
  TypInfo, NxDbgrid, NxGrid, NxPageControl, URegistro, ComCtrls, UInteliDialog,
  frxClass, frxDBSet, Buttons, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, Grids, DBGrids, DSHTTPCommon, NxCollection, JvExControls,
  JvLabel, DBXJSON, DSService, Variants, DSProxy, AdvSmoothPanel, AdvToolBar,
  AdvShapeButton, ToolWin, ClientModuleUnit1, AdvGroupBox, AdvPanel,
  Generics.Collections, DBXCommon, Sockets, ToolPanels, AdvSmoothDock,
  AdvTabSet, AdvSmoothTabPager, UTFrmSuite, ParamListbox, StrUtils, ShellAPI,
  ExtDlgs, JvBackgrounds, CommCtrl, UTComunicationProtocol, UTProgreso,
  UTCallbacksItems, UTChat, JvComponentBase, JvBalloonHint, AdvCircularProgress,
  TLHelp32, ActnMan, ActnCtrls, Ribbon, RibbonLunaStyleActnCtrls,
  JvMemoryDataset, InterClases, AdvPreviewMenu, Mask, AdvDropDown,
  AdvControlDropDown, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  UTFrmCatalogo, IdBaseComponent, IdComponent, IdUDPBase, IdUDPServer,
  IdContext, IdCustomTCPServer, IdTCPServer, OverbyteIcsWndControl,
  OverbyteIcsWSocket, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxControls, dxRibbonSkins, dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, cxPC,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, dxTabbedMDI, dxBar, cxClasses,
  dxRibbon, cxButtons, dxRibbonForm, UtFrmCatalogoSalarios2, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, dxScreenTip, dxCustomHint, dxGallery,
  dxGalleryControl, dxBarBuiltInMenu, cxHint, WinSock,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView,
  cxFontNameComboBox, cxBarEditItem, cxRadioGroup, cxDBLookupComboBox,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxRibbonCustomizationForm, dxSkinsForm,
  cxContainer, cxEdit, cxLabel, cxCalendar, cxCheckBox, cxStyles,
  dxGDIPlusClasses;
  //, UTFrmSelPersonal, UHiloProgreso;

Const
  WM_SEHACERRADO = WM_APP + 2;
  WM_INFORMACIERRE_MSG = WM_APP + 1;

Type ProcedureParameter = procedure(formulario: TForm);

Type
  TMyCallback = class(TDBXCallback)
    function Execute(const Arg: TJSONValue): TJSONValue; override;
  end;

  TVentanasModo = class
    Titulo: String;
    Indice: Integer;
    Constructor Create;
  end;

  TPosicion = Class
    Left: Integer;
    Top: Integer;
    Constructor Create;
  End;

  TOpciones = Class
    myParent: TMenuItem;
    myCaption: String;
    myHandle: TMenuItem;
  End;

  TCopyDataStruct = packed record
    dwData: DWORD;
    cbData: DWORD;
    lpData: Pointer;
  end;

  TForm2 = class(TdxRibbonForm)
    PopupVentanas: TPopupMenu;
    Timer1: TTimer;
    erminarSesin1: TMenuItem;
    Ventanas1: TMenuItem;
    N1: TMenuItem;
    cdImagen: TClientDataSet;
    dsImagen: TDataSource;
    pmImagenes: TPopupMenu;
    ModificarImagen1: TMenuItem;
    ModificarinformacindelaEmpresa1: TMenuItem;
    N2: TMenuItem;
    Horientacin1: TMenuItem;
    Izquierda1: TMenuItem;
    Derecha1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    cdOrganizaciones: TClientDataSet;
    DsOrganizacion: TDataSource;
    FrxImagen: TfrxDBDataset;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Btn_Send: TButton;
    AlertSrv: TNxAlertWindow;
    DSClientCallbackChannelManager1: TDSClientCallbackChannelManager;
    Timer2: TTimer;
    Panel1: TPanel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    btntrash: TImage;
    tbMain: TAdvToolBarPager;
    DSTCPIPClientCallbackChannelManager1: TDSClientCallbackChannelManager;
    tcpIpCliente: TTcpClient;
    DSHTTPClientCallbackChannelManager1: TDSClientCallbackChannelManager;
    btnConectar: TButton;
    ImageList2: TImageList;
    Btn_Suite: TAdvShapeButton;
    FondoInvisible1: TMenuItem;
    ipodeMenu1: TMenuItem;
    Menu1: TPopupMenu;
    alm_: TMenuItem;
    Catlogos1: TMenuItem;
    Almacenes1: TMenuItem;
    Artculos1: TMenuItem;
    Proveedores1: TMenuItem;
    tiposdetransportes1: TMenuItem;
    Catalogo21: TMenuItem;
    EspecificacionesSubgrupos1: TMenuItem;
    Almacn1: TMenuItem;
    Solicitudesdemateriales1: TMenuItem;
    Compras1: TMenuItem;
    Cotizaciones1: TMenuItem;
    Creardesderequisicin1: TMenuItem;
    Cotizaciones2: TMenuItem;
    Analisisdecotizaciones1: TMenuItem;
    Ordenesdecompra1: TMenuItem;
    Configuracin1: TMenuItem;
    Usuarios2: TMenuItem;
    Roles1: TMenuItem;
    Departamentos1: TMenuItem;
    Cargos1: TMenuItem;
    Usuarios1: TMenuItem;
    Firmantes1: TMenuItem;
    Firmantes2: TMenuItem;
    Periodos1: TMenuItem;
    Configuracin3: TMenuItem;
    Localidad1: TMenuItem;
    Pais1: TMenuItem;
    Estado1: TMenuItem;
    Ciudad1: TMenuItem;
    Niveles1: TMenuItem;
    Unidades1: TMenuItem;
    Monedas1: TMenuItem;
    Formasdepago1: TMenuItem;
    iposdemovimientos1: TMenuItem;
    Configuracin2: TMenuItem;
    GDP_: TMenuItem;
    Obras1: TMenuItem;
    iposdeConvenios1: TMenuItem;
    Convenios1: TMenuItem;
    Cat1: TMenuItem;
    Estimaciones1: TMenuItem;
    iposdeEstimaciones1: TMenuItem;
    Estimaciones2: TMenuItem;
    IC1: TMenuItem;
    alMain: TActionList;
    EstDetInsumos: TAction;
    DetEntInsumos: TAction;
    MainMenu1: TMainMenu;
    Fondo1: TMenuItem;
    Cambiar1: TMenuItem;
    Estirado1: TMenuItem;
    Centrado1: TMenuItem;
    Mosaico1: TMenuItem;
    N3: TMenuItem;
    Fondo: TJvBackground;
    DlgDireccion: TOpenPictureDialog;
    N4: TMenuItem;
    Impuestos1: TMenuItem;
    Viasdeembarque1: TMenuItem;
    Inventario1: TMenuItem;
    Entradas2: TMenuItem;
    Salidas1: TMenuItem;
    Salidas2: TMenuItem;
    Conmanifiesto1: TMenuItem;
    Valores1: TMenuItem;
    advpnlstylr1: TAdvPanelStyler;
    NxAwMensajes: TNxAlertWindow;
    RHH1: TMenuItem;
    RHH2: TMenuItem;
    CONTABILIDAD1: TMenuItem;
    Personal1: TMenuItem;
    Salarios1: TMenuItem;
    HintBallon: TJvBalloonHint;
    Reiniciar1: TMenuItem;
    Configuracin4: TMenuItem;
    Parmetros1: TMenuItem;
    Viasdeembarque2: TMenuItem;
    iposdemovimientos2: TMenuItem;
    Unidades2: TMenuItem;
    Nivelorganizacional1: TMenuItem;
    Valores2: TMenuItem;
    Formasdepago2: TMenuItem;
    Impuestos2: TMenuItem;
    Monedas2: TMenuItem;
    Localidad2: TMenuItem;
    Ciudad2: TMenuItem;
    Estado2: TMenuItem;
    Pais2: TMenuItem;
    Firmantes3: TMenuItem;
    Configuracin5: TMenuItem;
    Periodos2: TMenuItem;
    Firmantes4: TMenuItem;
    Usuarios3: TMenuItem;
    Usuarios4: TMenuItem;
    Cargos3: TMenuItem;
    Departamentos2: TMenuItem;
    Roles2: TMenuItem;
    Configuracin6: TMenuItem;
    Parmetros2: TMenuItem;
    Viasdeembarque3: TMenuItem;
    iposdemovimientos3: TMenuItem;
    Unidades3: TMenuItem;
    Nivelorganizacional2: TMenuItem;
    Valores3: TMenuItem;
    Formasdepago3: TMenuItem;
    Impuestos3: TMenuItem;
    Monedas3: TMenuItem;
    Localidad3: TMenuItem;
    Ciudad3: TMenuItem;
    Estado3: TMenuItem;
    Pais3: TMenuItem;
    Firmantes5: TMenuItem;
    Configuracin7: TMenuItem;
    Periodos3: TMenuItem;
    Firmantes6: TMenuItem;
    Usuarios5: TMenuItem;
    Usuarios6: TMenuItem;
    Cargos4: TMenuItem;
    Departamentos3: TMenuItem;
    Roles3: TMenuItem;
    Configuracin8: TMenuItem;
    Nivelorganizacional3: TMenuItem;
    Localidad4: TMenuItem;
    Ciudad4: TMenuItem;
    Estado4: TMenuItem;
    Pais4: TMenuItem;
    Cargos5: TMenuItem;
    Departamentos4: TMenuItem;
    Roles4: TMenuItem;
    Solicitudesdemateriales2: TMenuItem;
    Validacindesolicitudes1: TMenuItem;
    Verificaciondesolicitudes1: TMenuItem;
    Reportes1: TMenuItem;
    Materialesnovalidados1: TMenuItem;
    Materialesnocotizados1: TMenuItem;
    MaterialessinOC1: TMenuItem;
    Materialessinentradas1: TMenuItem;
    Solicitudesdematerial1: TMenuItem;
    Asignacindecompradores1: TMenuItem;
    Reportes2: TMenuItem;
    CotizacionessinOC1: TMenuItem;
    Cotizacionessinentrada1: TMenuItem;
    ORdenesdecompra2: TMenuItem;
    Reportes3: TMenuItem;
    OCSinentrada1: TMenuItem;
    Reportesgenerales1: TMenuItem;
    Seguimientodesolicitud1: TMenuItem;
    Doctos1: TMenuItem;
    VentanaPrincipal1: TMenuItem;
    Catalogos1: TMenuItem;
    DetalledeInsumosporentradaalalmacn1: TMenuItem;
    AsignacionesDevoluciones1: TMenuItem;
    Mantenimientos1: TMenuItem;
    EstructuradedetalledeInsumos1: TMenuItem;
    Articulos1: TMenuItem;
    DetalledeInsumosporEntrada1: TMenuItem;
    AsignarConsumibles1: TMenuItem;
    AsignaciondeInsumo1: TMenuItem;
    DevoluciondeInsumo1: TMenuItem;
    dsNodo: TDataSource;
    mdNodo: TJvMemoryData;
    Diagramasorganizacionales1: TMenuItem;
    pageInicio: TAdvPage;
    tlbr2: TAdvToolBar;
    btnAlta: TAdvGlowButton;
    btnEditar: TAdvGlowButton;
    frxReport1: TfrxReport;
    Catlogo1: TMenuItem;
    tbDepartamentos: TAdvToolBar;
    qtbGrafica: TAdvQuickAccessToolBar;
    pmGrafica: TPopupMenu;
    Abrir1: TMenuItem;
    Cerrar1: TMenuItem;
    N5: TMenuItem;
    Guardar1: TMenuItem;
    Btn_GrabarGrafica: TAdvToolBarButton;
    Btn_AbrirGrafica: TAdvToolBarButton;
    AdvToolBarContainer1: TAdvToolBarContainer;
    DeptoEditar: TAdvGlowButton;
    DeptoEliminar: TAdvGlowButton;
    AdvToolBarContainer2: TAdvToolBarContainer;
    DeptoNuevo: TAdvGlowButton;
    AdvToolBarContainer3: TAdvToolBarContainer;
    Btn_ImprimeDetalle: TAdvGlowButton;
    PageDisenio: TAdvPage;
    tbVista: TAdvToolBar;
    AdvToolBarContainer4: TAdvToolBarContainer;
    cmbZoom: TComboBox;
    lbl1: TJvLabel;
    lbl2: TJvLabel;
    cmbNiveles: TComboBox;
    AdvToolBar1: TAdvToolBar;
    AdvToolBarContainer7: TAdvToolBarContainer;
    cbMostrarPanel: TCheckBox;
    pmMostrarVentana: TPopupMenu;
    tbVentanas: TAdvToolBar;
    AdvToolBarContainer5: TAdvToolBarContainer;
    AdvGlowButton2: TAdvGlowButton;
    AdvToolBarContainer6: TAdvToolBarContainer;
    gbOrganizarVentanas: TAdvGlowButton;
    pmOrganizarVentanas: TPopupMenu;
    Horizontal1: TMenuItem;
    Vertical1: TMenuItem;
    Cascada1: TMenuItem;
    AdvToolBar2: TAdvToolBar;
    BtnCargosxConvenio: TAdvGlowButton;
    BolsadeTrabajo1: TMenuItem;
    Solicitante1: TMenuItem;
    SolicitudesdePlazas1: TMenuItem;
    StatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    ProgressBar1: TProgressBar;
    DetalleporEntradaalAlmacn1: TMenuItem;
    Mantenimientos2: TMenuItem;
    DiagramaOrganizacional1: TMenuItem;
    Catlogos3: TMenuItem;
    Catlogos4: TMenuItem;
    Monedas4: TMenuItem;
    ProcesodeNminas1: TMenuItem;
    Nominas1: TMenuItem;
    CatlogodeNminas1: TMenuItem;
    iposdeNminas1: TMenuItem;
    ISPT1: TMenuItem;
    ablaISPT1: TMenuItem;
    ablaSubsidioISPT1: TMenuItem;
    IMSS1: TMenuItem;
    abladeIMSS1: TMenuItem;
    ConceptosdeInasistencia1: TMenuItem;
    ablas1: TMenuItem;
    Prestaciones1: TMenuItem;
    Guardias1: TMenuItem;
    Catalogo1: TMenuItem;
    Porempleado1: TMenuItem;
    Personal2: TMenuItem;
    DasFestivos1: TMenuItem;
    Aguinaldo1: TMenuItem;
    Vacaciones1: TMenuItem;
    RangodeSalarios1: TMenuItem;
    ConceptosdeNmina1: TMenuItem;
    Configuracin10: TMenuItem;
    cdPersonal: TClientDataSet;
    cdEmpresas: TClientDataSet;
    cdTipoNomina: TClientDataSet;
    cdDocumentos: TClientDataSet;
    cdDepartamento: TClientDataSet;
    cdDocxPostulante: TClientDataSet;
    cdExperiencia: TClientDataSet;
    Contratacin1: TMenuItem;
    N6: TMenuItem;
    ablaISPTArt1411: TMenuItem;
    ablaSubsidioISPTArt1411: TMenuItem;
    MsgServidor: TWSocket;
    cdEncabezado: TClientDataSet;
    Utileras1: TMenuItem;
    ConcentradodeNminas2: TMenuItem;
    cdKardex: TClientDataSet;
    btn1: TcxButton;
    cxImageResIconosBarra: TcxImageList;
    cxImageResIconosTodos16: TcxImageList;
    cxImageResIconosTodos24: TcxImageList;
    cxImageResIconosTodos32: TcxImageList;
    dxbrmngr1: TdxBarManager;
    tbdxbrmngr1Bar1: TdxBar;
    tbdxbrmngr1Bar2: TdxBar;
    btn2: TdxBarLargeButton;
    btn3: TdxBarLargeButton;
    btn4: TdxBarLargeButton;
    btn5: TdxBarLargeButton;
    tbdxbrmngr1Bar3: TdxBar;
    tbdxbrmngr1Bar4: TdxBar;
    tbdxbrmngr1Bar5: TdxBar;
    btn6: TdxBarLargeButton;
    btn7: TdxBarLargeButton;
    btn8: TdxBarLargeButton;
    tbdxbrmngr1Bar6: TdxBar;
    tbdxbrmngr1Bar7: TdxBar;
    tbdxbrmngr1Bar8: TdxBar;
    btn9: TdxBarLargeButton;
    btn10: TdxBarLargeButton;
    btn11: TdxBarLargeButton;
    btn13: TdxBarLargeButton;
    btn14: TdxBarLargeButton;
    btn15: TdxBarLargeButton;
    dxRibBtn1: TdxBarSubItem;
    dxRibBtn2: TdxBarSubItem;
    dxRibBtn3: TdxBarSubItem;
    tbdxbrmngr1Bar9: TdxBar;
    tbdxbrmngr1Bar10: TdxBar;
    tbdxbrmngr1Bar11: TdxBar;
    tbdxbrmngr1Bar12: TdxBar;
    tbdxbrmngr1Bar13: TdxBar;
    btn16: TdxBarLargeButton;
    btn17: TdxBarLargeButton;
    btn18: TdxBarLargeButton;
    btn19: TdxBarLargeButton;
    btn20: TdxBarLargeButton;
    btn21: TdxBarLargeButton;
    dxrbn1Tab1: TdxRibbonTab;
    dxrbn1: TdxRibbon;
    dxTabdxrbn1Tab2: TdxRibbonTab;
    dxTabdxrbn1Tab3: TdxRibbonTab;
    dxTabdxrbn1Tab4: TdxRibbonTab;
    dxTabdxrbn1Tab5: TdxRibbonTab;
    btn23: TdxBarLargeButton;
    dxRibBtn4: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    mdiManager1: TdxTabbedMDIManager;
    btn24: TdxBarButton;
    tbdxbrmngr1Bar14: TdxBar;
    btn26: TdxBarLargeButton;
    btnBtnKardex: TdxBarLargeButton;
    btn29: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    Btn_Monedas: TdxBarButton;
    Btn_TiposNomina: TdxBarButton;
    Btn_ConceptoNomina: TdxBarButton;
    Btn_ConceptosExtra: TdxBarButton;
    Btn_Kardex: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    cdConfiguracionAcceso: TClientDataSet;
    IdIOHandlerStack1: TIdIOHandlerStack;
    DxBLbuttonMaestroCuentas: TdxBarLargeButton;
    DxBLbuttonUsuarios: TdxBarLargeButton;
    DxBLbuttonBancos: TdxBarLargeButton;
    DxBLbuttonUtilidades: TdxBarLargeButton;
    DxBarBtnPlantillaCalculo: TdxBarLargeButton;
    DxBarQuickToolBar: TdxBar;
    DxBarBtnReiniciar: TdxBarButton;
    cxStyleHintmain: TcxHintStyleController;
    dxScreenTipMain: TdxBarScreenTipRepository;
    dxscrntpMainScreenTip: TdxScreenTip;
    dxBackStageMain: TdxRibbonBackstageView;
    DxBackStageTabOpciones: TdxRibbonBackstageViewTabSheet;
    DxViewGallerySistema: TdxRibbonBackstageViewGalleryControl;
    DxViewGalleryGroupSistema: TdxRibbonBackstageViewGalleryGroup;
    DxViewGalleryGroupItemReiniciar: TdxRibbonBackstageViewGalleryItem;
    CxBtnOraculo: TcxButton;
    DxBarBtnSueldosSalarios: TdxBarLargeButton;
    DxBarBtnBancos: TdxBarLargeButton;
    DxBarBtnCalculoSalario: TdxBarLargeButton;
    CxImageModal: TcxImageList;
    DxBarFormato: TdxBar;
    cxLookupCBFont: TcxBarEditItem;
    btnTimbres: TdxBarLargeButton;
    DxSkinCtrlMain: TdxSkinController;
    cxLabel1: TcxLabel;
    DxBarBtnConfigurarReportes: TdxBarLargeButton;
    CxImageMenuPrincipal: TcxImageList;
    DxBarBtnContradoPtu: TdxBarLargeButton;
    DxBarOpciones: TdxBar;
    DxBarBtnFactoresIntegracion: TdxBarLargeButton;
    btnGruposDeSalarios: TdxBarLargeButton;
    DxBarBtnConfigurarReporteExcel: TdxBarButton;
    DxBarBtnCalculoVacaciones: TdxBarLargeButton;
    DxBarBtnPTUConcentrado: TdxBarLargeButton;
    DxBarBtnDesacoplar: TdxBarButton;
    DxBarBtnCalculoVacAguin: TdxBarLargeButton;
    dxTabExtras: TdxRibbonTab;
    DxBarOpcionesExtras: TdxBar;
    DxBarBtnRegistrarGasto: TdxBarLargeButton;
    DxBarBtnComprobarGasto: TdxBarLargeButton;
    dxbrbtnpRUEBA: TdxBarButton;
    dxBtnRetardos: TdxBarLargeButton;
    btn27: TcxButton;
    dxBtnEmbarcados: TdxBarLargeButton;
    btn12: TdxBarLargeButton;
    btnFirmantesExcel: TdxBarButton;
    dxSubImprimir: TdxBarSubItem;
    DxBtnFormatoEmbarcados: TdxBarButton;
    DxBtnQuincenal: TdxBarButton;
    DxBtnAsimilados: TdxBarButton;
    DxBtnResumen: TdxBarButton;
    dxbrmngr1Bar2: TdxBar;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    btnConcentrado: TdxBarLargeButton;
    FDSOrganizacion: TfrxDBDataset;
    Panela: TPanel;
    Image1: TImage;
    Panelx: TPanel;
    btnAnalisisModificaciones: TdxBarLargeButton;
    procedure ScreenActiveControlChange(Sender: TObject) ;
    procedure EnterColor(Sender: TWinControl);
    procedure ExitColor(Sender: TWinControl);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OnClick(Sender: TObject);
    procedure OnMosaico(Sender: TObject);
    procedure OnHorizontal(Sender: TObject);
    procedure OnVertical(Sender: TObject);
    procedure OnCascada(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure erminarSesin1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Artculos1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Proveedores1Click(Sender: TObject);
    procedure Catalogo21Click(Sender: TObject);
    procedure Catalogo11Click(Sender: TObject);
    procedure Almacenes1Click(Sender: TObject);
    procedure Niveles1Click(Sender: TObject);
    procedure Departamentos1Click(Sender: TObject);
    procedure tiposdetransportes1Click(Sender: TObject);
    procedure Cargos1Click(Sender: TObject);
    procedure Recargapermisos1Click(Sender: TObject);
    procedure wizard1Click(Sender: TObject);
    procedure Configuracin2Click(Sender: TObject);
    procedure Pais1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Estado1Click(Sender: TObject);
    procedure Ciudad1Click(Sender: TObject);
    procedure Contactos1Click(Sender: TObject);
    procedure Firmantes2Click(Sender: TObject);
    procedure Periodos1Click(Sender: TObject);
    procedure Configuracin3Click(Sender: TObject);
    procedure Validacindesolicitudes1Click(Sender: TObject);
    procedure Verificaciondesolicitudes1Click(Sender: TObject);
    procedure Requisiciones1Click(Sender: TObject);
    procedure Nivelporusuario1Click(Sender: TObject);
    procedure Asignacindecompradores1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure AdvSmoothPanel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Cotizaciones2Click(Sender: TObject);
    procedure Creardesderequisicin1Click(Sender: TObject);
    procedure CambiarAvisoCierre(Alineacion: TAlign);
    procedure GenerarEstructura(CualMenu: Integer);
    procedure Roles1Click(Sender: TObject);
    procedure btntrashMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btntrashDblClick(Sender: TObject);
    procedure Analisisdecotizaciones1Click(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AsignarDireccionServidor;
    function BuscaListaChat(Nombre: String): Integer;
    procedure Btn_SuiteClick(Sender: TObject);
    procedure FondoInvisible1Click(Sender: TObject);
    procedure CancelarTransparencia(Cancelar: Boolean);
    procedure ModificarIconoAplicacion;
    procedure Obras1Click(Sender: TObject);
    procedure iposdeConvenios1Click(Sender: TObject);
    procedure Convenios1Click(Sender: TObject);
    procedure Cat1Click(Sender: TObject);
    procedure iposdeEstimaciones1Click(Sender: TObject);
    procedure Estimaciones2Click(Sender: TObject);
    procedure DetalledeEquipos1Click(Sender: TObject);
    procedure AsignacionesdeEquipo1Click(Sender: TObject);
    procedure EstDetInsumosExecute(Sender: TObject);
    procedure DetEntInsumosExecute(Sender: TObject);
    procedure btntrashMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btntrashMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseEnter(Sender: TObject);
    procedure FormMouseLeave(Sender: TObject);
    procedure Cambiar1Click(Sender: TObject);
    procedure Estirado1Click(Sender: TObject);
    procedure Centrado1Click(Sender: TObject);
    procedure Mosaico1Click(Sender: TObject);
    procedure Entradas2Click(Sender: TObject);
    procedure Salidas2Click(Sender: TObject);
    procedure Conmanifiesto1Click(Sender: TObject);
    procedure Inventario1Click(Sender: TObject);
    procedure VentanaPrincipal1Click(Sender: TObject);
    procedure AsignarConsumibles1Click(Sender: TObject);
    procedure EliminarPersonalRHH1Click(Sender: TObject);
    procedure Salarios1Click(Sender: TObject);
    procedure CuentasContables1Click(Sender: TObject);
    procedure Personal1Click(Sender: TObject);
    procedure Articulos1Click(Sender: TObject);
    procedure Reiniciar1Click(Sender: TObject);
    procedure Solicitudesdemateriales2Click(Sender: TObject);
    procedure ORdenesdecompra2Click(Sender: TObject);
    procedure Materialesnovalidados1Click(Sender: TObject);
    procedure Materialesnocotizados1Click(Sender: TObject);
    procedure MaterialessinOC1Click(Sender: TObject);
    procedure Materialessinentradas1Click(Sender: TObject);
    procedure CotizacionessinOC1Click(Sender: TObject);
    procedure Cotizacionessinentrada1Click(Sender: TObject);
    procedure OCSinentrada1Click(Sender: TObject);
    procedure Seguimientodesolicitud1Click(Sender: TObject);
    procedure ratamiento1Click(Sender: TObject);
    procedure Grado1Click(Sender: TObject);
    procedure Doctos1Click(Sender: TObject);
    procedure EstructuradedetalledeInsumos1Click(Sender: TObject);
    procedure DetalledeInsumosporEntrada1Click(Sender: TObject);
    procedure AsignaciondeInsumo1Click(Sender: TObject);
    procedure DevoluciondeInsumo1Click(Sender: TObject);
    procedure Mantenimientos1Click(Sender: TObject);
    procedure btnAltaClick(Sender: TObject);
    procedure btnEditar2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DeptoNuevoClick(Sender: TObject);
    procedure pmGraficaPopup(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Btn_AbrirGraficaClick(Sender: TObject);
    procedure DeptoEditarClick(Sender: TObject);
    procedure DeptoEliminarClick(Sender: TObject);
    procedure Btn_ImprimeDetalleClick(Sender: TObject);
    procedure gbOrganizarVentanasDropDown(Sender: TObject);
    procedure gbOrganizarVentanasClick(Sender: TObject);
    procedure cmbZoomChange(Sender: TObject);
    procedure cmbNivelesChange(Sender: TObject);
    procedure Btn_GrabarGraficaClick(Sender: TObject);
    procedure AdvGlowButton2DropDown(Sender: TObject);
    procedure MostrarVentanaOpcionClick(Sender: TObject);
    procedure pmOrganizarVentanasChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure Horizontal1Click(Sender: TObject);
    procedure Vertical1Click(Sender: TObject);
    procedure Cascada1Click(Sender: TObject);
    procedure Cerrar1Click(Sender: TObject);
    procedure BtnCargosxConvenioClick(Sender: TObject);
    procedure SolicitudesdePlazas1Click(Sender: TObject);
    procedure Btn_SendClick(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TAdvOfficeStatusBar;
      Panel: TAdvOfficeStatusPanel; const Rect: TRect);
    procedure DiagramaOrganizacional1Click(Sender: TObject);
    procedure MsgServidorDataAvailable(Sender: TObject; ErrCode: Word);
    procedure CatlogodeNminas1Click(Sender: TObject);
    procedure ablaISPT1Click(Sender: TObject);
    procedure ablaSubsidioISPT1Click(Sender: TObject);
    procedure abladeIMSS1Click(Sender: TObject);
    procedure ConceptosdeInasistencia1Click(Sender: TObject);
    procedure Guardias1Click(Sender: TObject);
    procedure Porempleado1Click(Sender: TObject);
    procedure DasFestivos1Click(Sender: TObject);
    procedure Vacaciones1Click(Sender: TObject);
    procedure Personal2Click(Sender: TObject);
    procedure RangodeSalarios1Click(Sender: TObject);
    procedure Configuracin10Click(Sender: TObject);
    procedure Aguinaldo1Click(Sender: TObject);
    procedure MaestrodePersonal2Click(Sender: TObject);
    procedure Contratacin1Click(Sender: TObject);
    procedure ablaISPTArt1411Click(Sender: TObject);
    procedure ablaSubsidioISPTArt1411Click(Sender: TObject);
    procedure ConcentradodeNminas2Click(Sender: TObject);
    procedure btn24Click(Sender: TObject);
    procedure btn27Click(Sender: TObject);
    procedure mdiManager1PageAdded(Sender: TdxTabbedMDIManager;
      APage: TdxTabbedMDIPage);
    procedure btn30Click(Sender: TObject);
    procedure Btn_MonedasClick(Sender: TObject);
    procedure Btn_TiposNominaClick(Sender: TObject);
    procedure Btn_KardexClick(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure DxBLbuttonMaestroCuentasClick(Sender: TObject);
    procedure DxBLbuttonUsuariosClick(Sender: TObject);
    procedure DxBLbuttonBancosClick(Sender: TObject);
    procedure DxBLbuttonUtilidadesClick(Sender: TObject);
    procedure DxBarBtnPlantillaCalculoClick(Sender: TObject);
    procedure DxBarBtnReiniciarClick(Sender: TObject);
    procedure DxViewGallerySistemaItemClick(Sender: TObject;
      AItem: TdxRibbonBackstageViewGalleryItem);
    procedure CxBtnOraculoClick(Sender: TObject);
    procedure DxBarBtnSueldosSalariosClick(Sender: TObject);
    procedure DxBarBtnBancosClick(Sender: TObject);
    procedure DxBarBtnCalculoSalarioClick(Sender: TObject);
    procedure btnTimbresClick(Sender: TObject);
    procedure DxBarBtnConfigurarReportesClick(Sender: TObject);
    procedure DxBarBtnListaNominasClick(Sender: TObject);
    procedure DxBarBtnContradoPtuClick(Sender: TObject);
    procedure DxBarBtnFactoresIntegracionClick(Sender: TObject);
    procedure btnGruposDeSalariosClick(Sender: TObject);
    procedure DxBarBtnConfigurarReporteExcelClick(Sender: TObject);
    procedure DxBarBtnCalculoVacacionesClick(Sender: TObject);
    procedure DxBarBtnPTUConcentradoClick(Sender: TObject);
    procedure DxBarBtnDesacoplarClick(Sender: TObject);
    procedure DxBarBtnCalculoVacAguinClick(Sender: TObject);
    procedure DxBarBtnRegistrarGastoClick(Sender: TObject);
    procedure dxbrbtnpRUEBAClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure dxBtnRetardosClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnFirmantesExcelClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure btnConcentradoClick(Sender: TObject);
    procedure btnAnalisisModificacionesClick(Sender: TObject);
  private
    Seleccionado:Boolean;
    PosDownClick: TPoint;
    MenuActual: TMenuItem;
    ListaOpciones: TStringList;
    SizeOriginal: Integer;
    HeightOriginal: Integer;
    FMyCallbackName: string;
    Providername: String;
    ForzarSalir: Boolean;
    NodoP:TTreeNode;
    ListaComa: String;
    Habil: Boolean;
    OldConfiguracion: String;
    PageAnt: TAdvPage;
    TituloAnt: String;
    cdOrganizacion: TClientDataSet;
    LlaveBuscar: Integer;
    VentanasModo: TVentanasModo;
    Timer3: TTimer;
    CursorMessage: TCursor;
    ListaPar: TStringList;
    OrigCaption: String;
    function NumItems(const cadena:string;const separador:char):integer;
    function TraerItem(const cadena:string;const separador:char;const posicion:integer):string;
    procedure TerminateAllClientChannels;
    function GetItemByName(Wnd : hWnd;  hItem : HTREEITEM;szItemName : LPCTSTR) : HTREEITEM ;
    procedure DownloadFile(FileRemote,FileLocal:TFileName);overload;
    Function SetWallpaper(Path:String ):Boolean;
    Function SetModoWallpaper(Modo:String):Boolean;
    Function ReadWallpaper(TBackground: TJvBackground):Boolean;
    Function ValidaExtencion(path:string):Boolean;
    procedure InicializarSistema(Reiniciar: boolean = false);
    function KillTask(FileName: String): integer;
    procedure CambiarAplicacion;
    procedure AbrirGrafica;
    procedure OnInformaCierreRequest(var Msg: TMessage); message WM_INFORMACIERRE_MSG;
    procedure PlazasCerradas(var Msg: TMessage); message WM_SEHACERRADO;
  public
    IdOrganizacionSel: Integer;
    PuertoMsgUtilizado: Boolean;
    ObligaCerrar: Boolean;
    FObjectsToFree: TList<TObject>;
    lsClientsConected:TStringList;
    GlobalColor1, GlobalColor2, GlobalColorPanel, GlobalColorGroupText, GlobalColorGroup,
    GlobalColorCampo, GlobalColorCaptura, GlobalColorTextBtn, focusColor: Tcolor;
    ZoomGraficaIndex: Integer;
    //Variable Incluida por gabo...............................................
    IdOrganizacionSeleccionada : integer;
    //.........................................................................
    procedure PrecargaColores(DatosConfig: TClientDataset);
    function IniciarForm(clase:TComponentClass; formulario:TForm; Multiple: Boolean; Inicializar: ProcedureParameter = nil): TModalResult;
    function GetNumber(Nombre: String): String;
    procedure ReconocerDiagrama(Diagrama: TForm);
    procedure IgnorarDiagrama;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure LogMsg(const s: string);
    procedure QueueLogMsg(const s: string);
    function Conectar: Boolean;
  end;

Const
  TipoBoton = 'TAdvGlowButton';
  NumPagesMain = 2;
  IconoIndice: Array[0..2] of Integer = (10, 12, 11);
  AltoProgressBar = 13;
  Version = 'Ver. 16.05';  //a�o mes dia

var
  Form2: TForm2;
  lastFocused : TWinControl;
  originalColor :Tcolor;
  TipodePermiso : String;
  iddelRol: integer;
  IddelUsuario: integer;
  ClassUser: TClassUser;

  LChannelPrincipal: TComunicationProtocol;
  nodoseleccionado: Integer;
  ListaChat: TStringList;
  UltimSelected:string;
  FObjectsToFree: TList<TObject>;

  procedure InitFormRequisicionCompradores(formulario: TForm);
  procedure InitFormRequisicionProveedores(formulario: TForm);
  Procedure Descargar(var Grid: TNextGrid; Renglon: Integer;PLinkItem:TLInkItem;const ListaHilos:TStringList);

implementation

Uses
  Frm_Conectando, Frm_Configuracion, frm_SelDatabase, frm_ModificaBase,
  UTFrmArticulo2, UTFrmSubGrupos, UTFrmGrupos, UTFrmDisciplinas,
  UTFrmProveedores, UTFrmTransportes, UTFrmLugares, UTFrmAlmacen, UTFrmRoles,
  UTFrmUsuarios, UTFrmPermisoRol, UTFrmUnidades, UTFrmMonedas,  UTFrmEsquema,
  UTFrmDepartamentos, UTFrmCargos, unit3, UTFrmOrganigrama, UTFrmSeleccion,
  UTFrmArbolAccesos, UTFrmNiveles, UTFrmTipoTransporte, UTFrmPermisoUsuario,
  UTFrmPais, UTFrmSolicitudes, UTFrmCiudad, UTFrmEstado, UTFrmContacto,
  UTFrmFirmantes, UTFrmDocumentos, UTFrmPeriodofirmante, UTfrmConfFirmantes,
  utfrmImportarexcel, UTFrmValidacionSolicitud, UTFrmVerificacionSolicitud,
  UTFrmRequisiciones, UTFrmNivelPorUsuario, UTFrmPapelera, UTFrmCotizaciones,
  UTFrmCotizador, UTFrmTipoMovimiento, UTFrmOrdenCompra, UTFrmFormaPago,
  UTFrmEntradas, UTFrmEspecificaciones, UTfrmDetalleXEntrada, UTFrmObras,
  UTFrmEstimaciones, UTFrmTiposReprogramaciones, UTFrmTiposestimacion,
  UTFrmReprogramaciones, UTFrmForm, UTFrmPrincipalTic, UTFrmTipoInasistencia,
  UTFrmAsignacionIndividualTIC, UTFrmAsignacionesPersonalTic, UTFrmSalidas,
  UTFrmSalidasMan, UTFrmInventariodetalle, UTFrmImpuestos,UTFrmViaEmbarque,
  UTFrmSolicitudesAC, UTFrmSolicitudesAP, UTFrmPersonal,
  UTFrmVentanaPrincipalTIC, UTFrmConsumoxArticulo, UTFrmCatalogoBancos,
  UTFrmPersonalRhh, UTFrmCatalogoSalarios, UTFrmCatalogoCuentasContables,
  UTFrmSelPersonal, UTfrmReporteMaterialSinEntrada, UTfrmReporteMaterialSinOC,
  UTfrmReporteMaterialNoCotizado, UTfrmReporteMaterialNoValidado,
  UTfrmReporteCotizacionSinEntrada, UTfrmReporteCotizacionSinOC,
  UTfrmReporteOCSinEntrada, UTFrmSeguimiento, UtfrmTratamiento, UTFrmGrado,
  UTFrmDocumento, UTFrmMantenimientosTIC, UTFrmDevolucionesGeneral,
  UTFrmDiagramaOrg, UTFrmPlazaRhuDetalle, UtFrmEspecificacionesDX,
  UTFrmPostulante, UTFrmCatalogoPostulantes, UTFrmTipoRecursos,
  UTFrmSalariosCatalogo, UTFrmHistorialSalario, UTFrmOrganizacion,
  UTFrmSeleccionaOrganizacion, UtFrmAsignacionDePostulantes,
  UTFrmCargosxConvenio, UTfrmConsultaPlazaDX,  UTFrmTablaISPT,
  UTFrmSubsidioTablaISPT, UTFrmRangoSalarios, UTFrmTablaIMSS, UTFrmNominas,
  UTFrmProyeccionNomina, UTFrmTipoNomina, UTFrmPrestaciones,
  UTFrmConceptosNomina, UTFrmGuardia, UTFrmDatosConceptoExtra,
  UTFrmDatosConExtrasXEmpleado, UTFrmConceptosExtras, UTFrmCatalogoPersonal,
  UTFrmReporteAcumuladoGlob, UTFrmVacaciones, UTFrmDiasFestivos,
  UTFrmCatalogoNominas, UTFrmMaestroPersonal, UTFrmPersonalContrato,
  UTFrmTablaSubsidioISPTAnual, UTFrmSubsidioTablaISPT_Anual,
  UtfrmCatalogoConceptosExtras, UTFrmTablaISPTAnual, UTFrmContratoPersonal,
  UTFrmConcentradoNomina, UtFrmfrmConceptoExtraEmpleado, UtfrmKardex, UtFrmContratacionPersonal,
  UtFrmConfiguracionAcceso, UtfrmOrganizaciones, UtFrmFichaGeneralPersonal,
  UTFrmReporteInsidencias, UTFrmMaestroCuentasContables, UtFrmUsuariosSistema,
  UTFrmUtilidades, UTFrmCuentasBanco, UTFrmMachotes, UTFrmSueldosSalarios, UTFrmDeptos,
  UTFrmCalculoSalario, UTFrmSU, utfrmdatoscontratacion, FrmEstadosDeTimbres, UTFrmCatalogoPersonalDEX,
  UTFrmReportesPersonalizados, UTFrmListaNominaExcel, UTFrmDisenoReporte, UTFrmDiasPTU,
  UtfrmTablaFactoresIntegracion,
  UTFrmGruposSalarios, UTFrmAntiguedadVacaciones, UTFrmConcentradoPTU, UTFrmCalculoVacAguin,
  UtfrmGastos, UTFrmRegistroGastos, UTFrmPlazaRhuDX, UTFrmCapturaRetardos,
  UTFrmFirmantesSolicitantes, UtfrmFormatoEmbarcados, UTFrmFirmantesExcel, UTFrmDoctosxCargo,
  UTFrmContratacionPersonalDX,UtfrmDimm, UTFrmConcentradoNominas,
  UFrmParamsConfig, frm_Login, UTFrmModificacionSalarioEmpleado;

Const
  EspaciadoAvisoCierre = 32;
  AltoAvisoCierre = 25;
  Separa = '!';
  MAXTEXTLEN=50;

Var
  DiagramaActual: TFrmDiagramaOrg;

{$R *.dfm}

function TForm2.Conectar: Boolean;
var
  cdErrores: TClientDataSet;
  Error: TErrores;
  Descripcion: TDescripcion;
  sNombre: String;
  Respuesta: Integer;
  DatosSocket: WSAData;
  BloqueIP: PHostEnt;
  DirIP: in_addr;
  Source,
  Destination: Pointer;
  IPNombre: String;
  Resp: Integer;
  Registrado: Boolean;
  Comentario: String;
begin
  Result := True;

  // Tratar de realizar la comunicaci�n con el servidor
  Panelx.Caption := 'Buscando servidor de datos...';
  Panelx.Refresh;
  Try
    Try
      if Not Inicializar(Self) then
      begin
        Application.MainForm.Close;
        exit;
      end;

      if Not ClientModule1.SQLConnection1.Connected then
        ClientModule1.SQLConnection1.Connected := True;
    Except
      on e:EFOpenError do
      begin
        Result := False;
        Application.MainForm.Close;
        Exit;
      end;

      on e:exception do
      begin
        Result := False;
        If InteliDialog.ShowModal('No ha sido posible establecer comunicaci�n con la base de datos.',
                                  'No se ha podido establecer comunicaci�n debido al siguiente error:' + chr(10) + chr(10) +
                                  e.message + chr(10) + chr(10) +
                                  '�Desea modificar los par�metros de conexi�n en este momento?', mtWarning, [mbYes, mbNo], 0) = mrYes then
          Try
            Application.CreateForm(TFrmParamsConfig, FrmParamsConfig);
            Resp := FrmParamsConfig.ShowModal;
            //if FrmParamsConfig.ShowModal = mrCancel then
            if Resp = mrCancel then
              Application.MainForm.Close
            else
              if Not Inicializar(Self) then
              begin
                Application.MainForm.Close;
                exit;
              end;
          Finally
            FreeAndNil(FrmParamsConfig);
          End
        else
        begin
          Form2.ObligaCerrar := True;
          Application.MainForm.Close;
        end;
      end;
    End;

    Try
      if ClientModule1.SQLConnection1.Connected then
      begin
        // Verificar si ya tenemos registrada la base de datos
        if VarRegistry('\Configuracion', '\Conexion', 'DATABASE') = '' then
        begin
          if InteliDialog.ShowModal('No se reconoce la configuraci�n del sistema.',
                                    'Parece que su sistema no ha sido correctamente instalado o bien uno o mas registros de sistema se han da�ado.' + chr(10) +
                                    'No he podido localizar el nombre de la base de datos con la cual debe trabajar el sistema.' + chr(10) + chr(10) +
                                    '�Desea indicar el nombre de la base de datos en este momento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
            Try
              Application.CreateForm(TFrmSelDatabase, FrmSelDatabase);
              if FrmSelDatabase.ShowModal = mrOk then
              begin
                Try
                  // Registrar la base de datos que se seleccion�
                  SetRegistry('\Configuracion', '\Conexion', 'DATABASE', FrmSelDataBase.ListBox1.Items.Strings[FrmSelDataBase.ListBox1.ItemIndex]);
                Except
                  on e:exception do
                    raise Exception.Create('No se ha podido registrar la base de datos debido al siguiente error:' + #10 + #10 + e.Message);
                End;
              end
              else
                raise Exception.Create('Proceso cancelado por el usuario');
                //PostMessage(Self.Handle, WM_CLOSE, 0, 0);
            Finally
              FrmSelDatabase.Free;
            End;
          end
          else
            PostMessage(Self.Handle, WM_CLOSE, 0, 0);
        end;

        // Realizar una reverificar de seguridad
        if VarRegistry('\Configuracion', '\Conexion', 'DATABASE') = '' then
        begin
          Raise InteligentException.Create('La base de datos solicitada parace ya no estar disponible en el servidor, verifique esto e intente de nuevo');
          {PostMessage(Self.Handle, WM_CLOSE, 0, 0);
          Exit;}
        end;

        // Verificar que tipo de sistema se est� ejecutando
  {      if Not ObtenerPrefijo(sNombre) then
          raise InteligentException.Create('No se ha podido reconocer la estructura de la base de datos' + #10 + #10 +
                                           'Es probable que la base de datos haya sido modificada �ltimamente lo cual ocasiona que el sistema no pueda funcionar');

        // Modificar las cadenas para que el cliente interact�e con el sistema adecuado
        cConfiguracionImagen := sNombre + 'configuracion_imagen1';
        cConfiguracion := sNombre + 'configuracion';
  }
        try
          FrmLogin := TFrmLogin.Create(Self);
          FrmLogin.ListaPar := ListaPar;
          //Self.Visible := Assigned(ListaPar);
          Registrado := True;

          // Obtener la direccion IP de este servidor
          WSAStartup($0101, DatosSocket);
          SetLength(IPNombre, 260);
          gethostname(PAnsiChar(IPNombre), 260);
          BloqueIP := gethostbyname(PAnsiChar(IPNombre));
          Destination := @DirIP;
          Source := (BloqueIP^).h_addr_list^;
          Move(Source^, Destination^, BloqueIP.h_length);
          IPNombre := inet_ntoa(DirIP);

          if Not Assigned(ClassUser) then
            ClassUser := TClassUser.Create;

          Repeat
            Panelx.Caption := 'Solicitando acceso a la base de datos...';
            Panelx.Refresh;

            Respuesta := FrmLogin.ShowModal;
            if (Respuesta = mrOK) then
            begin
              Panelx.Caption := 'Accesando a la base de datos, usuario: ' + ClientModule1.cdUsuario.FieldByName('NombreUsuario').AsString + '...';
              Panelx.Refresh;

              ClassUser.Usuario := ClientModule1.cdUsuario.FieldByName('Usuario').AsString;
              ClassUser.Nombre := ClientModule1.cdUsuario.FieldByName('NombreUsuario').AsString;
              ClassUser.IP := IPNombre;
              ClassUser.Cargo := ClientModule1.cdUsuario.FieldByName('TituloCargo').AsString;
              ClassUser.Departamento := ClientModule1.cdUsuario.FieldByName('NombreDepartamento').AsString;

              Try
                if Not EstablecerDatosUsuario(ClassUser, True, Comentario) then
                  raise InteligentWarning.Create(Comentario);

                // Traer a la memoria los c�digos de error del sistema
                ListaErrores := TStringList.Create;
                ListaErrores.Clear;
                cdErrores := TClientDataSet.Create(Nil);
                Try
                  cdErrores.RemoteServer := ClientModule1.DSProviderConnection1;
                  CrearConjunto(cdErrores, 'nuc_errores', sNombre, ccSelect);

                  if sNombre <> '' then
                  begin
                    cdErrores.Open;

                    while Not cdErrores.Eof do
                    begin
                      Try
                        Error := TErrores.Create;
                        Error.Codigo  := cdErrores.FieldByName('iCodigo').AsInteger;
                        Error.Usuario := cdErrores.FieldByName('sDescUsuario').AsString;
                        Error.Tecnico := cdErrores.FieldByName('sDescTecnico').AsString;

                        ListaErrores.AddObject(IntToStr(Error.Codigo), Error);
                      Except
                        InteliDialog.ShowModal('No se ha podido cargar completa la tabla de errores del sistema.','', mtInformation, [mbOk], 0);
                      End;

                      cdErrores.Next;
                    end;
                  end
                  else
                    InteliDialog.ShowModal('No ha sido posible localizar el cat�logo de errores del sistema.','', mtInformation, [mbOk], 0);
                Finally
                  EliminarConjunto(cdErrores.ProviderName);
                  cdErrores.Free;
                End;
              Except
                on e:InteligentWarning do
                begin
                  Registrado := False;
                  InteliDialog.ShowModal('La base de datos [' + FrmLogin.cbBase.Text + '] no ha podido ser conectada.', 'Debido a lo siguiente: ' + e.Message, mtInformation, [mbOk], 0);
                end;

                on e:Exception do
                  raise;
              End;
            end
            else
            begin
              ClientModule1.SQLConnection1.Connected := False;
              Raise InteligentConnection.Create('*');
            end;
          Until Registrado;
        finally
          Self.Visible := True;
          FreeAndNil(FrmLogin);
        end;
      end;

      //PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    Except
      on e:InteligentConnection do
        Result := False;

      on e:InteligentException do
      begin
        Result := False;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;

      on e:Exception do
      begin
        Result := False;
        InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      end;
    End;
  Finally
    StatusBar1.Panels[0].Text := '';
  End;
end;

function CadenaServidor(Cadena: String): Boolean;
begin
  Result := ClientModule1.FuncCadenaServidor(Cadena);
end;

function TMyCallback.Execute(const Arg: TJSONValue): TJSONValue;
begin
  Form2.QueueLogMsg(Arg.ToString);
  Result := TJSONTrue.Create;
end;

procedure TForm2.QueueLogMsg(const s: string);
begin
  TThread.Queue(nil,
    procedure
    begin
      LogMsg(s)
    end);
end;

procedure TForm2.RangodeSalarios1Click(Sender: TObject);
begin
  IniciarForm(TFrmRangoSalarios, FrmRangoSalarios, False);
end;

procedure TForm2.LogMsg(const s: string);
begin
  // Enviar cadena para que sea decodificada y ejecute la acci�n correspondiente
  CadenaServidor(s);
end;

Constructor TVentanasModo.Create;
begin
  Titulo := '';
  Indice := -1;
end;

function GetFileTimes(FileName : string;
 var Created : TDateTime;
 var Modified : TDateTime;
 var Accessed : TDateTime) : boolean;
var
  FileHandle : integer;
  Retvar : boolean;
  FTimeC,FTimeA,FTimeM : TFileTime;
  LTime : TFileTime;
  STime : TSystemTime;
begin
  // Abrir el archivo
  FileHandle := FileOpen(FileName,fmShareDenyNone);

  // inicializar
  Created := 0.0;
  Modified := 0.0;
  Accessed := 0.0;

  // Ha tenido acceso al fichero?
  if FileHandle < 0 then
    RetVar := false
  else
  begin
    // Obtener las fechas
    RetVar := true;
    GetFileTime(FileHandle,@FTimeC,@FTimeA,@FTimeM);
    // Cerrar
    FileClose(FileHandle);
    // Creado
    FileTimeToLocalFileTime(FTimeC,LTime);
    if FileTimeToSystemTime(LTime,STime) then
    begin
      Created := EncodeDate(STime.wYear,STime.wMonth,STime.wDay);
      Created := Created + EncodeTime(STime.wHour,STime.wMinute,STime.wSecond,STime.wMilliSeconds);
    end;

    // Accedido
    FileTimeToLocalFileTime(FTimeA,LTime);
    if FileTimeToSystemTime(LTime,STime) then
    begin
      Accessed := EncodeDate(STime.wYear,STime.wMonth,STime.wDay);
      Accessed := Accessed + EncodeTime(STime.wHour,STime.wMinute,STime.wSecond,STime.wMilliSeconds);
    end;

    // Modificado
    FileTimeToLocalFileTime(FTimeM,LTime);
    if FileTimeToSystemTime(LTime,STime) then
    begin
      Modified := EncodeDate(STime.wYear,STime.wMonth,STime.wDay);
      Modified := Modified + EncodeTime(STime.wHour,STime.wMinute,STime.wSecond,STime.wMilliSeconds);
    end;
  end;

  Result := RetVar;
end;

Procedure Descargar(var Grid: TNextGrid; Renglon: Integer;PLinkItem:TLInkItem;const ListaHilos:TStringList);
var
  HiloDescarga:TProgreso;
  proxy: TServerMethods1Client;
  RetStreamLocal: TStream;
  MemLocal: TMemoryStream;
  Size: Int64;
begin
     with Form2 do
     begin
         proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);

         Try
            try
               MemLocal := TMemoryStream.Create;

               try  // rangelito
                  //RetStreamLocal := proxy.DownloadFile(PLinkItem.FilenameOrigen,Size);
                  RetStreamLocal.Position := 0;
                  if ( Size <> 0 ) then
                  begin
                      HiloDescarga:=TProgreso.Create(False);
                      ListaHilos.AddOBject(IntToStr(PLinkItem.IControl),HiloDescarga);
                      HiloDescarga.GridNx:=@Grid;
                      HiloDescarga.FileOrigen:=PLinkItem.FilenameOrigen;
                      HiloDescarga.FileDestino:=PLinkItem.FilenameDestino;
                      HiloDescarga.Renglon:=Renglon;
                      HiloDescarga.Mem:= MemLocal;
                      HiloDescarga.RetStream:=RetStreamLocal;
                      HiloDescarga.size:=Size;
                      HiloDescarga.proxy:=proxy;
                      HiloDescarga.Start;
                  end;
               finally
                     // FreeMem( Buffer, BufSize );
                     // FreeAndNIl(MemLocal);
               end;
            except
                  on E: Exception do
                  begin
                         //lErrorMessage.Caption := PChar( E.ClassName + ': ' + E.Message );
                  end;
            end;
         Finally
                //proxy.Free;
         End;
     end;
end;
///////////////////////////////////////////

{ TPosicion }
Constructor TPosicion.Create;
begin
  Top := Form2.BtnTrash.Top;
  Left := Form2.BtnTrash.Left;
end;

//Gamael Hdez 1
function TForm2.GetItemByName(Wnd : hWnd;  hItem : HTREEITEM;szItemName : LPCTSTR) : HTREEITEM ;
var
  szBuffer: array [0..MAXTEXTLEN+1] of char;
  item : TTVItem;
  hItemFound, hItemChild : HTREEITEM;
begin
    if (hItem = nil) then
        hItem := HTREEITEM(SendMessage(Wnd, TVM_GETNEXTITEM, TVGN_ROOT, 0));
    while (hItem <> nil) do
    begin
        item.hItem := hItem;
        item.mask := TVIF_TEXT OR TVIF_CHILDREN;
        item.pszText := szBuffer;
        item.cchTextMax := MAXTEXTLEN;
        SendMessage(Wnd, TVM_GETITEM, 0, longint(@item));
        if (lstrcmp(szBuffer, szItemName) = 0) then
          begin
             Result := hItem;
             Exit;
          end;
        if (item.cChildren > 0) then
        begin
            hItemChild := HTREEITEM(SendMessage(Wnd, TVM_GETNEXTITEM,
                                                TVGN_CHILD, longint(hItem)));

            hItemFound := GetItemByName(Wnd, hItemChild, szItemName);
            if (hItemFound <> nil) then
             begin
                Result :=  hItemFound;
                Exit;
             end;
        end;
        hItem := HTREEITEM(SendMessage(Wnd, TVM_GETNEXTITEM,
                                       TVGN_NEXT, LPARAM(hItem)));
    end;
    Result := nil;
end;

procedure InitFormRequisicionCompradores(formulario: TForm);
begin
  TFrmSolicitudes(formulario).Caption := 'Requisiciones - Asignaci�n de compradores';
  TFrmSolicitudes(formulario).PanelAdd.Visible := false;
  TFrmSolicitudes(formulario).BtnEdit.caption := 'Ver';
  TFrmSolicitudes(formulario).PanelDelete.Visible := false;
  TFrmSolicitudes(formulario).PanelExport.Visible := false;
  TFrmSolicitudes(formulario).PanelSelect.Visible := false;
  TFrmSolicitudes(formulario).PantallaReq := true;
  TFrmSolicitudes(formulario).AlineaBotones(2);
  TFrmSolicitudes(formulario).cmbFiltroEstado.Clear;
  TFrmSolicitudes(formulario).cmbFiltroEstado.Items.Add('Verificado');
  TFrmSolicitudes(formulario).cmbFiltroEstado.Items.Add('Requisitado');
  TFrmSolicitudes(formulario).cmbFiltroEstado.Items.Add('Cancelado');
  TFrmSolicitudes(formulario).cmbFiltroEstado.Style := csDropDownList;
  TFrmSolicitudes(formulario).cmbFiltroEstado.ItemIndex := 0;
  TFrmSolicitudes(formulario).BtnSearch.Click;
end;

procedure InitFormRequisicionProveedores(formulario: TForm);
begin
  TFrmSolicitudes(formulario).Caption := 'Requisiciones - Generacion de cotizaciones';
  TFrmSolicitudes(formulario).PanelAdd.Visible := false;
//  TFrmSolicitudes(formulario).BtnEdit.Visible := false;
  TFrmSolicitudes(formulario).BtnEdit.caption := 'Ver';
  TFrmSolicitudes(formulario).PanelDelete.Visible := false;
  TFrmSolicitudes(formulario).PanelExport.Visible := false;
  TFrmSolicitudes(formulario).PanelSelect.Visible := false;
//  TFrmSolicitudes(formulario).BtnAssignBuyer.parent.Visible := false;
//  TFrmSolicitudes(formulario).BtnAssignSupplier.parent.Visible := true;
  TFrmSolicitudes(formulario).PantallaReq := true;
  TFrmSolicitudes(formulario).AlineaBotones(2);
  TFrmSolicitudes(formulario).cmbFiltroEstado.Clear;
  TFrmSolicitudes(formulario).cmbFiltroEstado.Items.Add('Requisitado');
  TFrmSolicitudes(formulario).cmbFiltroEstado.Items.Add('Cancelado');
  TFrmSolicitudes(formulario).cmbFiltroEstado.Style := csDropDownList;
  TFrmSolicitudes(formulario).cmbFiltroEstado.ItemIndex := 0;
  TFrmSolicitudes(formulario).BtnSearch.Click;
end;

procedure TForm2.ORdenesdecompra2Click(Sender: TObject);
begin
  IniciarForm(TFrmOrdenCompra, FrmOrdenCompra, True);
end;

procedure TForm2.Pais1Click(Sender: TObject);
begin
  IniciarForm(TFrmPais, FrmPais, True);
end;

procedure TForm2.Periodos1Click(Sender: TObject);
begin
  IniciarForm(TFrmPeriodoFirmante, FrmPeriodoFirmante, False);
end;

procedure TForm2.Personal1Click(Sender: TObject);
begin
  IniciarForm(TFrmPersonalRhh, FrmPersonalRhh, True);
//FrmPersonalRhh := TFrmPersonalRhh.Create(Form2);
//Application.CreateForm(TFrmTesteoHilos, FrmTesteoHilos);
//FrmPersonalRhh.ShowModal;
end;

procedure TForm2.Personal2Click(Sender: TObject);
begin
  IniciarForm(TFrmCatalogoPersonalDEX, FrmCatalogoPersonalDEX, False);
  //IniciarForm(TFrmCatalogoPersonal, FrmCatalogoPersonal, False);
end;

procedure TForm2.pmGraficaPopup(Sender: TObject);
begin
  Guardar1.Enabled := Assigned(DiagramaActual);
  Cerrar1.Enabled := Assigned(DiagramaActual);
end;

procedure TForm2.pmOrganizarVentanasChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  showmessage('Rangel');
end;

procedure TForm2.Porempleado1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmConceptoExtraEmpleado, frmConceptoExtraEmpleado);
  frmConceptoExtraEmpleado.Show;
  //IniciarForm(TfrmConceptoExtraEmpleado, frmConceptoExtraEmpleado,false);
end;

procedure TForm2.Proveedores1Click(Sender: TObject);
begin
  IniciarForm(TFrmProveedores, FrmProveedores, True);
end;

function TForm2.ReadWallpaper(TBackground: TJvBackground): Boolean;
var
  Tipo: string;
begin
  //dandole lectura al path del fondo
  if FileExists(VarRegistry('\Ambiente', '\Principal\Fondo', 'Path')) then
   if ValidaExtencion(VarRegistry('\Ambiente', '\Principal\Fondo', 'Path')) then
     try
       TBackground.Image.Picture.LoadFromFile(VarRegistry('\Ambiente', '\Principal\Fondo', 'Path'));
     except
       ;
     end;

  Tipo := LowerCase(Trim(VarRegistry('\Ambiente', '\Principal\Fondo', 'Tipo')));
  //establecer la propiedad de acuerdo a la cadena
  if Length(Tipo) < 1 then
  begin
    SetRegistry('\Ambiente', '\Principal\Fondo', 'Tipo', 'bmTile');
    TBackground.Image.Mode := bmTile
  end
  else
  begin

     Mosaico1.Checked := Tipo = 'bmtile';
     if Tipo = 'bmtile' then
       TBackground.Image.Mode := bmTile;

     Estirado1.Checked := Tipo = 'bmstretch';
     if Tipo = 'bmstretch' then
       TBackground.Image.Mode := bmStretch;

     Centrado1.Checked := Tipo = 'bmcenter';
     if Tipo = 'bmcenter' then
       TBackground.Image.Mode := bmCenter;

  end;

end;

procedure TForm2.Recargapermisos1Click(Sender: TObject);
begin
{  if AnsiCompareText(TipodePermiso, 'Rol') = 0 then
    ClientModule1.CargaPermisos(TipodePermiso,globales.Elemento('idrol').AsInteger);
  if (TipodePermiso = 'Usuario') or (TipodePermiso = 'usuario') then
    ClientModule1.CargaPermisos(TipodePermiso,globales.Elemento('idusuario').AsInteger);}
end;

procedure TForm2.Reiniciar1Click(Sender: TObject);
begin
  ShowWindow(Self.Handle, SW_HIDE);
  InicializarSistema(true);
end;

procedure TForm2.Requisiciones1Click(Sender: TObject);
begin
  IniciarForm(TFrmRequisiciones, FrmRequisiciones, False);
end;

procedure TForm2.Roles1Click(Sender: TObject);
begin
  IniciarForm(TFrmRoles, FrmRoles, False);
end;

procedure TForm2.Salarios1Click(Sender: TObject);
var
  i: Integer;
begin
  //IniciarForm(TFrmSalariosCatalogo, FrmSalariosCatalogo, False);
  for i:= Form2.MDIChildCount -1 downto 0 do
  if  form2.MDIChildren[i].Name = 'FrmRangoSalarios' then
  begin
    InteliDialog.ShowModal('Aviso', 'El sistema detect� que est� abierta la ventana de Rango de Salarios, para poder continuar con este proceso el sistema lo cerrar� en autom�tico.', mtInformation, [mbOK], 0);
    form2.MDIChildren[i].Close;
  end;

  IniciarForm(TFrmCatalogoSalarios2, FrmCatalogoSalarios2, False);
end;

procedure TForm2.Salidas2Click(Sender: TObject);
begin
  IniciarForm(TFrmSalidas, FrmSalidas, False);
end;

procedure TForm2.ScreenActiveControlChange(Sender: TObject);
var
  doEnter, doExit: boolean;
  previousActiveControl: TWinControl;
begin
  try
    if Screen.ActiveControl = nil then
    begin
      LastFocused := nil;
      Exit;
    end;

    try
      lastFocused.Enabled;
    except
      on e:exception do
        lastFocused := nil;
    end;

    doExit := LastFocused <> Nil;
    if doExit then
      PreviousActiveControl := LastFocused;

    if (Screen.ActiveControl <> nil) and (Screen.ActiveControl.Enabled) then
    begin
      if (Screen.ActiveControl.ClassType = TDBEdit) or (Screen.ActiveControl.ClassType = TEdit) or
         (Screen.ActiveControl.ClassType = TDBComboBox) or (Screen.ActiveControl.ClassType = TComboBox) or
         (Screen.ActiveControl.ClassType = TDBMemo) then
      begin
        doEnter := true;
        doExit := true;

        if Screen.ActiveControl is TButtonControl then doEnter := false;
        if Screen.ActiveControl is TNextDBGrid then doEnter := false;
        if Screen.ActiveControl is TForm then doEnter := false;
        if Screen.ActiveControl is TNextGrid then doEnter := false;
        if Screen.ActiveControl is TNxPageControl then doEnter := false;
        doEnter := (TComponent(Screen.ActiveControl).Tag and (1 shl 0)) = 0;
        doExit := (TComponent(Screen.ActiveControl).Tag and (1 shl 0)) = 0;

        PreviousActiveControl := LastFocused;

        if previousActiveControl <> nil then
        begin
          if previousActiveControl is TButtonControl then doExit := false;
          if previousActiveControl is TNextDBGrid then doExit := false;
          if previousActiveControl is TForm then doExit := false;
          if previousActiveControl is TNextGrid then doExit := false;
          if Screen.ActiveControl is TNxPageControl then doEnter := false;
          if Screen.ActiveControl is TTreeView then doEnter := false;
        end;

        LastFocused := Screen.ActiveControl;

        if doEnter then EnterColor(lastFocused);
      end;
    end;

    if doExit then  ExitColor(PreviousActiveControl);

  Except
    on e:Exception do
      ;
  end;
end;

{procedure TForm2.ScreenActiveControlChange(Sender: TObject);
var
  doEnter, doExit: boolean;
  previousActiveControl: TWinControl;
begin
  if Screen.ActiveControl = nil then
  begin
    LastFocused := nil;
    Exit;
  end;

  doExit := LastFocused <> Nil;
  if doExit then
    PreviousActiveControl := LastFocused;

  if (Screen.ActiveControl.ClassType = TDBEdit) or (Screen.ActiveControl.ClassType = TEdit) or
     (Screen.ActiveControl.ClassType = TDBComboBox) or (Screen.ActiveControl.ClassType = TComboBox) or
     (Screen.ActiveControl.ClassType = TDBMemo) then
  begin
    doEnter := true;
    doExit := true;

    if Screen.ActiveControl is TButtonControl then doEnter := false;
    if Screen.ActiveControl is TNextDBGrid then doEnter := false;
    if Screen.ActiveControl is TForm then doEnter := false;
    if Screen.ActiveControl is TNextGrid then doEnter := false;
    if Screen.ActiveControl is TNxPageControl then doEnter := false;
    doEnter := (TComponent(Screen.ActiveControl).Tag and (1 shl 0)) = 0;
    doExit := (TComponent(Screen.ActiveControl).Tag and (1 shl 0)) = 0;

    PreviousActiveControl := LastFocused;

    if previousActiveControl <> nil then
    begin
      if previousActiveControl is TButtonControl then doExit := false;
      if previousActiveControl is TNextDBGrid then doExit := false;
      if previousActiveControl is TForm then doExit := false;
      if previousActiveControl is TNextGrid then doExit := false;
      if Screen.ActiveControl is TNxPageControl then doEnter := false;
      if Screen.ActiveControl is TTreeView then doEnter := false;
    end;

    LastFocused := Screen.ActiveControl;

    if doEnter then EnterColor(lastFocused);
  end;

  if doExit then  ExitColor(PreviousActiveControl);
end;}

procedure TForm2.Seguimientodesolicitud1Click(Sender: TObject);
begin
  IniciarForm(TFrmSeguimiento,FrmSeguimiento , False);
end;

function TForm2.SetModoWallpaper(Modo: String): Boolean;
begin
  SetRegistry('\Ambiente', '\Principal\Fondo', 'Tipo', Modo);
end;

function TForm2.SetWallpaper(Path: String): Boolean;
begin
  try
    //guardando la path de imagen en el registro
    SetRegistry('\Ambiente', '\Principal\Fondo', 'Path', Path);

    //leer el modo de presentacion, si no se puede leer se establece uno por default
    if Length(Trim(VarRegistry('\Ambiente', '\Principal\Fondo', 'Tipo'))) < 1 then
    begin
      SetRegistry('\Ambiente', '\Principal\Fondo', 'Tipo', 'bmTile');
    end;

  except
    on e:Exception do
      raise Exception.Create('Al guardar direccion por la siguiente raz�n:'+e.Message);
  end;
end;

procedure TForm2.Solicitudesdemateriales2Click(Sender: TObject);
begin
  IniciarForm(TFrmSolicitudes, FrmSolicitudes, True);
end;

procedure TForm2.SolicitudesdePlazas1Click(Sender: TObject);
begin
  if Not Assigned(FrmConsultaPlazaDX) then
  begin
    Application.CreateForm(TFrmConsultaPlazaDX, FrmConsultaPlazaDX);
    FrmConsultaPlazaDX.FormStyle := fsMDIChild;
    if FrmConsultaPlazaDX.cdPlaza.ProviderName <> '' then
      FrmConsultaPlazaDX.AbreDatos;
  end;

  if FrmConsultaPlazaDX.cdPlaza.ProviderName <> '' then
    FrmConsultaPlazaDX.Show;
end;

procedure TForm2.StatusBar1DrawPanel(StatusBar: TAdvOfficeStatusBar;
  Panel: TAdvOfficeStatusPanel; const Rect: TRect);
var
  Arriba: Integer;
begin
  if (Panel = StatusBar1.Panels[0]) and (ProgressBar1.Position > 0) then
  with ProgressBar1 do
  begin
    Arriba := (StatusBar1.Height - AltoProgressBar) Div 2;

    Top := Rect.Top + Arriba;
    Left := Rect.Left + 1;
    Width := Rect.Right - Rect.Left - 2;
    Height := AltoProgressBar;
  end;
end;

procedure TForm2.erminarSesin1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.Estado1Click(Sender: TObject);
begin
  IniciarForm(TFrmEstado, FrmEstado, True);
end;

procedure TForm2.EstDetInsumosExecute(Sender: TObject);
begin
  IniciarForm(TFrmEspecificaciones, FrmEspecificaciones, False);
end;

procedure TForm2.Estimaciones2Click(Sender: TObject);
begin
  IniciarForm(TFrmEstimaciones, FrmEstimaciones, True);
end;

procedure TForm2.Estirado1Click(Sender: TObject);
begin
  if self.Color <> clFuchsia then
  begin
    SetModoWallpaper('bmStretch');
    ReadWallpaper(Fondo);
  end;
end;

procedure TForm2.EstructuradedetalledeInsumos1Click(Sender: TObject);
begin
  IniciarForm(TFrmEspecificaciones, FrmEspecificaciones, False);
end;

procedure TForm2.ExitColor(Sender: TWinControl);
begin
  if Sender <> nil then
  begin
    if  TComponent(sender).Tag <> 99 then
    begin
      if IsPublishedProp(Sender,'Color') then
      begin
        SetOrdProp(Sender, 'Color', Globales.Elemento('Color_salida').AsInteger);
      end ;
    end;
  end ;
end;

function TForm2.GetNumber(Nombre: String): String;
var
  i: Integer;
begin
  i := Length(Nombre);
  Result := '';
  while (i > 1) and (Nombre[i] <> '_') do
    if Nombre[i] <> '_' then
      Dec(i);

  if Nombre[i] = '_' then
    Result := ' [' + Copy(Nombre, i + 1, Length(Nombre)) + ']'
end;

procedure TForm2.Grado1Click(Sender: TObject);
begin
  IniciarForm(TFrmGrado,FrmGrado,false);
end;

procedure TForm2.Horizontal1Click(Sender: TObject);
begin
  TileMode := tbHorizontal;
  Tile;
  VentanasModo.Titulo := 'Organizar Horizontal';
  VentanasModo.Indice := 0;
  gbOrganizarVentanas.Caption := VentanasModo.Titulo;
  gbOrganizarVentanas.ImageIndex := IconoIndice[0];
end;

procedure TForm2.abladeIMSS1Click(Sender: TObject);
begin
  IniciarForm(TFrmTablaIMSS, FrmTablaIMSS, False);
end;

procedure TForm2.ablaISPT1Click(Sender: TObject);
begin
  IniciarForm(TFrmTablaISPT, FrmTablaISPT, False);
end;

procedure TForm2.ablaISPTArt1411Click(Sender: TObject);
begin
  IniciarForm(TFrmTablaISPTAnual, FrmTablaISPTAnual, False);
end;

procedure TForm2.ablaSubsidioISPT1Click(Sender: TObject);
begin
  IniciarForm(TFrmSubsidioTablaISPT, FrmSubsidioTablaISPT, False);
end;

procedure TForm2.ablaSubsidioISPTArt1411Click(Sender: TObject);
begin
  IniciarForm(TFrmTablaSubsidioISPTAnual, FrmTablaSubsidioISPTAnual, False);
end;

procedure TForm2.Abrir1Click(Sender: TObject);
begin
  AbrirGrafica;
end;

procedure TForm2.Btn_MonedasClick(Sender: TObject);
begin
  IniciarForm(TFrmMonedas, FrmMonedas, False);
end;

procedure TForm2.AdvGlowButton2DropDown(Sender: TObject);
var
  Punto: TPoint;
  i: Integer;
  MenuItem: TMenuItem;
begin
  // Llenar el popup con las ventanas existentes
  pmMostrarVentana.Items.Clear;

  for i := 0 to Self.MDIChildCount -1 do
  begin
    MenuItem := TMenuItem.Create(pmMostrarVentana);
    MenuItem.Caption := Self.MDIChildren[i].Caption;
    MenuItem.ImageIndex := 0;
    MenuItem.OnClick := MostrarVentanaOpcionClick;
    MenuItem.Tag := i;
    pmMostrarVentana.Items.Add(MenuItem);
  end;

  GetCursorPos(Punto);
  pmMostrarVentana.Popup(Punto.X, Punto.Y);
end;

procedure TForm2.BtnCargosxConvenioClick(Sender: TObject);
begin
  application.CreateForm(TFrmCargosxConvenio, FrmCargosxConvenio);
  FrmCargosxConvenio.idconvenio:=LlaveBuscar;
  FrmCargosxConvenio.ShowModal;
end;

procedure TForm2.gbOrganizarVentanasClick(Sender: TObject);
begin
  if VentanasModo.Titulo <> '' then
    Case VentanasModo.Indice of
      0: Horizontal1.Click;
      1: Vertical1.Click;
      2: Cascada1.Click;
    End;
end;

procedure TForm2.gbOrganizarVentanasDropDown(Sender: TObject);
var
  Punto: TPoint;
begin
  GetCursorPos(Punto);
  pmOrganizarVentanas.Popup(Punto.X, Punto.Y);
end;

procedure TForm2.Btn_AbrirGraficaClick(Sender: TObject);
begin
  AbrirGrafica;
end;

procedure TForm2.Btn_GrabarGraficaClick(Sender: TObject);
begin
  if (DiagramaActual <> Nil) then
    DiagramaActual.ProcedeGuardar;
end;

procedure TForm2.Btn_ImprimeDetalleClick(Sender: TObject);
begin
  if (DiagramaActual <> Nil) then
    DiagramaActual.Imprimirdetalle1.Click;
end;

procedure TForm2.Btn_SendClick(Sender: TObject);
begin
  IniciarForm(TFrmConsumoxArticulo, FrmConsumoxArticulo, False);
end;

procedure TForm2.Btn_SuiteClick(Sender: TObject);
begin
  try
    ShowWindow(Self.Handle, SW_HIDE);

  except
    on e:InteligentConnection do
    begin
      ForzarSalir := True;
      Globales.Free;
      if e.Message <> '***' then
        InteliDialog.ShowModal('No se ha podido iniciar el sistema', 'No se ha podido iniciar el sistema debido a lo siguiente:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    //se pulso el boton salir en la suite
    on e:InteligentWarning do
    begin
      if e.Message = '*' then
      begin
        ForzarSalir := True;
        Globales.Free;
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;

    on e:exception do
    begin
      ForzarSalir := True;
      Globales.Free;
      InteliDialog.ShowModal('No se ha podido iniciar el sistema', 'No se ha podido iniciar el sistema por la siguiente raz�n:' + #10 + #10 +
                             e.message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TForm2.Btn_TiposNominaClick(Sender: TObject);
begin
  IniciarForm(TFrmTipoNomina, FrmTipoNomina, True);
end;

procedure TForm2.AdvSmoothPanel1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if Y < Trunc(Panel1.Height / 2) then
  begin
    if Panel1.Top + (Panel1.Height * 2) + 2 > Self.Height then
      Panel1.Top := Panel1.Top - (Panel1.Height + 2)
    else
      Panel1.Top := Panel1.Top + (Panel1.Height + 2);
  end
  else
  begin
    if Panel1.Top - (Panel1.Height + 2) > 0 then
      Panel1.Top := Panel1.Top - (Panel1.Height + 2)
    else
      Panel1.Top := Panel1.Top + (Panel1.Height + 3);
  end;
end;

procedure TForm2.Aguinaldo1Click(Sender: TObject);
begin
  IniciarForm(TFrmPrestaciones, FrmPrestaciones, False);
end;

procedure TForm2.Almacenes1Click(Sender: TObject);
begin
  IniciarForm(TFrmAlmacen, FrmAlmacen, False);
end;

procedure TForm2.Analisisdecotizaciones1Click(Sender: TObject);
begin
  IniciarForm(TFrmCotizador, FrmCotizador, False);
end;

procedure TForm2.Artculos1Click(Sender: TObject);
begin
  IniciarForm(TFrmArticulo2, FrmArticulo2, False);
end;

procedure TForm2.Articulos1Click(Sender: TObject);
begin
   IniciarForm(TFrmArticulo2, FrmArticulo2, True);
end;

procedure TForm2.Asignacindecompradores1Click(Sender: TObject);
begin
  IniciarForm(TFrmSolicitudesAC, FrmSolicitudesAC, True);
end;

procedure TForm2.AsignaciondeInsumo1Click(Sender: TObject);
begin
  IniciarForm(TFrmAsignacionesPersonalTic, FrmAsignacionesPersonalTic, True);
end;

procedure TForm2.AsignacionesdeEquipo1Click(Sender: TObject);
begin
  IniciarForm(TFrmAsignacionesPersonalTic, FrmAsignacionesPersonalTic, True);
end;

procedure TForm2.Inventario1Click(Sender: TObject);
begin
  IniciarForm(TFrmInventariodetalle,FrmInventariodetalle,false);
end;

procedure TForm2.AbrirGrafica;
Var
  Frm: TFrmDiagramaOrg;
  i: Integer;
  Encontrado: Boolean;
  OldCursor: TCursor;
begin
  Try
    Try
      // Abrir los datos de organizaci�n
      if Not Assigned(cdOrganizacion) then
        cdOrganizacion := TClientDataSet.Create(Self);

      if Not cdOrganizacion.Active then
      begin
        if Not CrearConjunto(cdOrganizacion, 'nuc_organizacion_imagen', ccCatalog) then
          raise InteligentException.CreateByCode(5, ['Organizaci�n Empresarial']);
        cdOrganizacion.Open;
      end;

      // Abrir la ventana de selecci�n de nodo de inicio
      Application.CreateForm(TFrmSeleccionaOrganizacion, FrmSeleccionaOrganizacion);
      FrmSeleccionaOrganizacion.dsOrganizacion.DataSet := cdOrganizacion;
      if FrmSeleccionaOrganizacion.ShowModal <> mrOk then
        raise InteligentWarning.Create('***');

      LlaveBuscar := FrmSeleccionaOrganizacion.PubNodo;
      if Not cdOrganizacion.Locate('IdOrganizacion', LlaveBuscar, []) then
        raise InteligentWarning.Create('***')
      else
        IdOrganizacionSeleccionada:= LlaveBuscar;

      OldCursor := Screen.Cursor;
      Screen.Cursor := crAppStart;

      // Buscar si existe el diagrama abierto
      Encontrado := False;
      for i := 0 to Self.MDIChildCount - 1 do
        if (Self.MDIChildren[i].ClassNameIs('TFrmDiagramaOrg')) and (Self.MDIChildren[i].Caption = Format('Diagrama organizacional (%s)',[cdOrganizacion.FieldByName('TituloOrganizacion').AsString])) then
        begin
          Frm := TFrmDiagramaOrg(Self.MDIChildren[i]);
          Encontrado := true;
        end;
      if Encontrado then
      begin
        if Frm.WindowState = wsMinimized then
          Frm.WindowState := wsNormal;
        Frm.BringToFront;
      end
      else
      begin
        Frm := TFrmDiagramaOrg.Create(Self, LlaveBuscar, -1); //cdOrganizacion.FieldByName('IdOrganizacion').AsInteger);
        Frm.Caption := Format('Diagrama organizacional (%s)',[cdOrganizacion.FieldByName('TituloOrganizacion').AsString]);
        Frm.Show;
      end;
    Finally
      Screen.Cursor := OldCursor;
    End;
  Except
    on e:InteligentWarning do
      ;

    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);

    on e:Exception do
      InteliDialog.ShowModal('Ha ocurrido un error inesperado', 'Informe de lo siguiente al administrador del sistema:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
  End;
end;

procedure TForm2.btn24Click(Sender: TObject);
begin
  mdiManager1.Active := Not mdiManager1.Active;
end;

procedure TForm2.btn27Click(Sender: TObject);
begin
  Application.CreateForm(TFrmFormatosEmbarcados, FrmFormatosEmbarcados);
  FrmFormatosEmbarcados.show;
end;

procedure TForm2.btn30Click(Sender: TObject);
begin
  IniciarForm(TFrmConfiguracionAcceso, FrmConfiguracionAcceso, False);
end;

procedure TForm2.btnAltaClick(Sender: TObject);
begin
  try
    if IdOrganizacionSeleccionada < 0 then
      raise InteligentException.Create('Para poder generar plazas, primero debera de ingresar al diragrama organizacional de algun convenio');

    Application.CreateForm(TFrmPlazaRhuDetalle, FrmPlazaRhuDetalle);
    FrmPlazaRhuDetalle.idPlaza := 0;
    FrmPlazaRhuDetalle.IdOrganizacion:= IdOrganizacionSeleccionada;
    FrmPlazaRhuDetalle.ShowModal;
  except
    on e:inteligentexception do
    begin
      InteliDialog.ShowModal('Aviso: ', e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TForm2.btnAnalisisModificacionesClick(Sender: TObject);
begin
  IniciarForm(TFrmModificacionSalarioEmpleado, FrmModificacionSalarioEmpleado, False);
end;

procedure TForm2.btnConcentradoClick(Sender: TObject);
begin
  IniciarForm(TFrmConcentradoNominas, FrmConcentradoNominas, False);
end;

procedure TForm2.btnEditar2Click(Sender: TObject);
begin
  if DiagramaActual <> Nil then
    DiagramaActual.EditarPlazas;
end;

procedure TForm2.BtnExitClick(Sender: TObject);
begin
  close;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  Cliente: TClientDataSet;
  Nombre: String;
begin
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  Cursor: TCursor;
  FechaHora: TDateTime;
begin

//  IniciarForm(TFrmSolicitudes, FrmSolicitudes, True);
//  IniciarForm(TFrmEspecificaciones_MadosaDX, FrmEspecificaciones_MadosaDX, False);
//  Button2.Visible := False;
  //IniciarForm(TFrmPersonalRhh, FrmPersonalRhh, True);
  //IniciarForm(TFrmTipoRecursos, FrmTipoRecursos, False);
  //IniciarForm(TFrmSalariosCatalogo, FrmSalariosCatalogo, True);

  //IniciarForm(TFrmConceptosNomina, FrmConceptosNomina, True);

  {Cliente := TClientDataSet.Create(Self);
  Try
    CrearConjunto(Cliente, 'nom_tablaispt', ccCatalog);
    CargarDatosFiltrados(Cliente, 'IdTipoTablaISPT,FechaAplicacion', [1, '2013-05-01']);
    Cliente.Open;
    ShowMessage(IntToStr(Cliente.RecordCount));
  Finally
    EliminarConjunto(Cliente);
  End;}

{  Application.CreateForm(TFrmAsignacionDePostulantes, FrmAsignacionDePostulantes);
  FrmAsignacionDePostulantes.Show;}
  //IniciarForm(TFrmPostulante, FrmPostulante, False);
//  showmessage(Globales.Elemento('IdAcceso').AsString + ' - ' + Globales.Elemento('IdOrganizacion').AsString);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  IniciarForm(TFrmPlazaRhuDX, FrmPlazaRhuDX, False);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  //IniciarForm(TFrmPlazaRhuDX, FrmPlazaRhuDX, False);
  //IniciarForm(UTFrm_RhuDocumentos, Frm_RhuDocumentos, False);

end;

procedure TForm2.Guardias1Click(Sender: TObject);
begin
  IniciarForm(TFrmGuardia, FrmGuardia, False);
end;

procedure TForm2.OnMosaico(Sender: TObject);
Const
  EstadoVentana: Array [False..True] of TWindowState = (wsMinimized, wsNormal);

var
  i: Integer;
  Tipo: TWindowState;
  Cta1, Cta2: Integer;
  Lista: TStringList;
begin
  Lista := TStringList.Create;
  Lista.Clear;
  Cta1 := 0;
  Cta2 := 0;
  for i := 0 to Self.MDIChildCount - 1 do
  begin
    if Self.MDIChildren[i].WindowState = wsMinimized then
      Inc(Cta1)
    else
      Inc(Cta2);

    Lista.AddObject(Self.MDIChildren[i].Name, Self.MDIChildren[i]);
  end;

  Tipo := EstadoVentana[Cta1 > Cta2];

  for i := 0 to Lista.Count - 1 do
    TForm(Lista.Objects[i]).WindowState := Tipo;
end;

procedure TForm2.OnHorizontal(Sender: TObject);
begin
  Self.TileMode := tbHorizontal;
  Self.Tile;
end;

procedure TForm2.OnVertical(Sender: TObject);
begin
  Self.TileMode := tbVertical;
  Self.Tile;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;
  Close;
  //Application.Terminate;
end;

procedure TForm2.Timer3Timer(Sender: TObject);
begin
  Timer3.Enabled := False;
  Screen.Cursor := CursorMessage;

  InteliDialog.ShowModal('Aviso del servidor', 'Tiempo m�ximo de bloqueo de registro alcanzado', 'Debido a que Usted ha dejado esta ventana desatendida por m�s de ' + Minutos(ClientModule1.vEspera) + ', el servidor de datos ha tenido que cerrarla para liberar el registro que estaba siendo bloqueado.' + #10 + #10 +
                         'Disculpe las molestias que esto pudiera haberle ocasionado; recuerde que el servidor no puede mantener bloqueado un registro durante mucho tiempo ya que otros usuarios en la red pudieran estar necesitando utilizarlo.', mtWarning, [mbOk], 0);
end;

procedure TForm2.Vacaciones1Click(Sender: TObject);
begin
  IniciarForm(TFrmVacaciones, FrmVacaciones, True);
end;

procedure TForm2.Validacindesolicitudes1Click(Sender: TObject);
begin
  IniciarForm(TFrmValidacionSolicitud, FrmValidacionSolicitud, False);
end;

function TForm2.ValidaExtencion(path: string): Boolean;
var
  Resultado: Boolean;
begin
  Resultado := False;
  if (AnsiEndsText( '.gif', path )) or
     (AnsiEndsText( '.png', path )) or
     (AnsiEndsText( '.jpg', path )) or
     (AnsiEndsText( '.jpeg', path )) or
     (AnsiEndsText( '.bmp', path ))
  then
    Resultado := True;
  result := Resultado;
end;


procedure TForm2.VentanaPrincipal1Click(Sender: TObject);
begin
  IniciarForm(TFrmVentanaPrincipalTIC, FrmVentanaPrincipalTIC, False);
end;

procedure TForm2.Verificaciondesolicitudes1Click(Sender: TObject);
begin
  IniciarForm(TFrmVerificacionSolicitud, FrmVerificacionSolicitud, False);
end;

procedure TForm2.Vertical1Click(Sender: TObject);
begin
  TileMode := tbVertical;
  Tile;
  VentanasModo.Titulo := 'Organizar Vertical';
  VentanasModo.Indice := 1;
  gbOrganizarVentanas.Caption := VentanasModo.Titulo;
  gbOrganizarVentanas.ImageIndex := IconoIndice[1];
end;

procedure TForm2.wizard1Click(Sender: TObject);
begin
  IniciarForm(TFrmEsquema, FrmEsquema, False);
end;

procedure TForm2.MsgServidorDataAvailable(Sender: TObject; ErrCode: Word);
var
  sMensaje: String;
begin
  sMensaje := '"' + MsgServidor.Text + '"';
  ClientModule1.FuncCadenaServidor(sMensaje);
end;

procedure TForm2.Obras1Click(Sender: TObject);
var
  PaqModulo: HModule;
  PerClase: TPersistentClass;
begin
  IniciarForm(TFrmObras, FrmObras, False);
end;

procedure TForm2.OCSinentrada1Click(Sender: TObject);
begin
  IniciarForm(TFrmReporteOCSinEnt,FrmReporteOCSinEnt,false);
end;

procedure TForm2.OnCascada(Sender: TObject);
begin
  Self.Cascade;
end;

procedure TForm2.OnClick(Sender: TObject);
var
  i: Integer;
  Found: Boolean;
  Formulario: TForm;
begin
  if Sender.ClassType = TMenuItem then
  begin
    i := 0;
    Found := False;
    while (i < Self.MDIChildCount) and Not Found do
    begin
      Found := AnsiCompareText(Self.MDIChildren[i].Name, TMenuItem(Sender).Name) = 0;
      if not Found then
        Inc(i);
    end;

    if Found then
    begin
      Formulario := Self.MDIChildren[i];
      if Formulario.WindowState = wsMinimized then
        Formulario.WindowState := wsNormal
      else
        Formulario.BringToFront;
    end;
  end;
end;

procedure TForm2.Firmantes2Click(Sender: TObject);
begin
  IniciarForm(TFrmFirmantes, FrmFirmantes, False);
end;

procedure TForm2.FondoInvisible1Click(Sender: TObject);
begin
  FondoInvisible1.Checked := Not FondoInvisible1.Checked;
  CancelarTransparencia(FondoInvisible1.Checked);
  Fondo1.Enabled := not FondoInvisible1.Checked;
  if not FondoInvisible1.Checked then
    ReadWallpaper(Fondo)
  else
    Fondo.Image.Picture.Bitmap.FreeImage;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
Const
  LabelAlign: Array [alLeft..AlRight] Of String = ('Left', 'Right');
var
  ii: Integer;
begin
  MsgServidor.Close;

  Try
    // Verificar las ventanas hijas que pudieras estar abiertas
    //for ii := 0 to Self.MDIChildCount - 1 do
      //Self.MDIChildren[ii].OnClose(Sender, Action);

    // Guardar la ceja actual
    SetRegistry('\Ambiente', '\Principal', 'ActiveTabIndex', IntToStr(dxrbn1.ActiveTab.Index));

    // Guardar los datos de la ventana
    SetRegistry('\Ambiente', '\Principal', 'MaximoRegistros', IntToStr(MaxCuantos));

    // Guardar la posici�n del bote de basura
    SetRegistry('\Ambiente', '\Principal', 'PosBote', IntToStr(BtnTrash.Left) + ':' + IntToStr(BtnTrash.Top));
  Except
    ;
  End;

  Action := caFree;

  KillTask(Application.ExeName);
  Application.Terminate;
end;

function TForm2.KillTask(FileName:String):integer;
var
  ContinueLoop:BOOL;
  FSnapshotHandle:THandle;
  FProcessEntry32:TProcessEntry32;

const
  PROCESS_TERMINATE=$0001;
begin
  FSnapshotHandle:=CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS,0);
  FProcessEntry32.dwSize:=Sizeof(FProcessEntry32);
  ContinueLoop:=Process32First(FSnapshotHandle,FProcessEntry32);
  while integer(ContinueLoop)<>0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile))=UpperCase(FileName))
      or (UpperCase(FProcessEntry32.szExeFile)=UpperCase(FileName)))
    then
      Result:=Integer(TerminateProcess(OpenProcess(PROCESS_TERMINATE,BOOL(0),

    FProcessEntry32.th32ProcessID),0));
    ContinueLoop:=Process32Next(FSnapshotHandle,FProcessEntry32);
  end;
end;

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ObligaCerrar then
    CanClose := True
  else
  begin
    // Checar si estoy en el modo de diagrama
    if pageInicio.TabVisible then
    begin
      CambiarAplicacion;
      CanClose := False;
    end
    else
      CanClose := ForzarSalir or ((Not ForzarSalir and (InteliDialog.ShowModal('Seguridad','�Est� seguro que desea salir de la aplicaci�n?', mtConfirmation, [ mbYes, mbNo ], 0) = mrYes)));
  end;
end;

procedure TForm2.Cambiar1Click(Sender: TObject);
begin
  if self.Color <> clFuchsia then
    if DlgDireccion.Execute() then
    begin
      SetWallpaper(DlgDireccion.FileName);
      ReadWallpaper(Fondo);
    end;
end;

procedure TForm2.CambiarAvisoCierre(Alineacion: TAlign);
begin
  Panel1.Top := AltoAvisoCierre;

  case Alineacion of
    alLeft: Panel1.Left := EspaciadoAvisoCierre;
    alRight: Panel1.Left := Application.MainForm.Width - (Panel1.Width + EspaciadoAvisoCierre);
  end;
end;

procedure TForm2.CancelarTransparencia(Cancelar: Boolean);
Const
  Estado: Array[False..True] of Integer = (clSilver, clFuchsia);
begin
  Self.Color := Estado[Cancelar];  //clGray; //cl3DLight;
  Self.TransparentColor := Cancelar;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  x1, Count: Integer;
  AlMenu: TAlign;
  Lista: TStringList;
  Cadena: String;
  Posicion: TPosicion;
  ProgressBarStyle: Integer;
begin
  PageInicio.TabVisible := False;
  ObligaCerrar := False;
  MsgServidor.Proto := 'udp';
  MsgServidor.Addr := '0.0.0.0';
  MsgServidor.Port := '81';
  Try
    PuertoMsgUtilizado := False;
    MsgServidor.Listen;

    Screen.Cursors[crAppStart] := LoadCursorFromFile(PChar(ExtractFilePath(Application.ExeName) + '\Busy.ani'));
  Except
    on e:exception do
    begin
      PuertoMsgUtilizado:= True;
      ForzarSalir := True;
      ObligaCerrar := True;

      //ShowMessage('No se pueden enviar mensajes al servidor.'+' Error al tratar de comunicarse con el puerto 81, puede que tenga otro cliente iniciado o bien el puerto est� cerrado.');
    end;
  End;

  IdentificadorSistema := 'Utidel';
  PageDisenio.TabVisible := False;

  ProgressBar1.Parent := StatusBar1;
  ProgressBarStyle := GetWindowLong(ProgressBar1.Handle, GWL_EXSTYLE);
  ProgressBarStyle := ProgressBarStyle - WS_EX_STATICEDGE;
  SetWindowLong(ProgressBar1.Handle, GWL_EXSTYLE, ProgressBarStyle);

  ListaChat := TStringList.Create;
  lsClientsConected:=TStringList.Create;

  cConfiguracion := '';   // Inicializar configuracion en nulo hasta que el usuario seleccione alguna

  Cadena := StringReplace(DateTimeToStr(Now), ':', '',
          [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, '/', '',
          [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, ' ', '',
          [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, 'A', 'S',
          [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, 'P', 'S',
          [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, 'H', 'S',
          [rfReplaceAll, rfIgnoreCase]);
  Cadena := StringReplace(Cadena, 'M', 'S',
          [rfReplaceAll, rfIgnoreCase]);
  IdSesion:=Cadena;

  Fondo1.Enabled := not FondoInvisible1.Checked;
  //StatusBar1.Visible := tbMain.Visible;

  CancelarTransparencia(False);

  // Posicionar el bote de basura en la ultima posici�n registrada
  Cadena := VarRegistry('\Ambiente', '\Principal', 'PosBote');
  X1 := Pos(':', Cadena);
  if X1 > 0 then
  begin
    Posicion := TPosicion.Create;
    Try
      Posicion.Left := StrToInt(Copy(Cadena, 1, X1 - 1));
    Except
      ;
    End;
    if (Posicion.Left < 0) or (Posicion.Left > Screen.Width - BtnTrash.Width) then
      Posicion.Left := BtnTrash.Left;

    Try
      Posicion.Top := StrToInt(Copy(Cadena, X1 + 1, Length(Cadena)));
    Except
      ;
    End;
    if (Posicion.Top < 0) or (Posicion.Top > Screen.Height - BtnTrash.Height) then
      Posicion.Top := BtnTrash.Top;

    BtnTrash.Left := Posicion.Left;
    BtnTrash.Top := Posicion.Top;
  end;

  // Callbacks
  DSClientCallbackChannelManager1.ManagerId := TDSTunnelSession.GenerateSessionId;
  FMyCallbackName := TDSTunnelSession.GenerateSessionId;
  DSClientCallbackChannelManager1.RegisterCallback(FMyCallbackName, TMyCallback.Create);


  // Timer de mensajes del servidor
  Timer3 := TTimer.Create(Self);
  Timer3.Enabled := False;
  Timer3.OnTimer := Timer3Timer;
  Timer3.Interval := 150000;

  //manejo del focus
  Screen.OnActiveControlChange := ScreenActiveControlChange;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
  Try
    if LChannelPrincipal <> nil then
      LChannelPrincipal.ChannelBroadCast('IntelicodeChannel','Broadcast','Ofline',ClientSesion,'desconectar');

    TerminateAllClientChannels;

    Try
      if ClientModule1.SQLConnection1.Connected then
      begin
        if ProviderName <> '' then
          EliminarConjunto(Providername);

        ClientModule1.SQLConnection1.Close;
      end;
    Except
      ;   // No hacer nada, solo es para evitar el error cuando la conexi�n ya no est� disponible
    End;
    ListaChat.Free;
    Screen.OnActiveControlChange := nil;
  Except
    ;
  End;
end;

procedure TForm2.FormMouseEnter(Sender: TObject);
begin
  Self.PopupMenu := PopupVentanas;
end;

procedure TForm2.FormMouseLeave(Sender: TObject);
begin
  Self.PopupMenu := nil;
end;

procedure TForm2.FormPaint(Sender: TObject);
begin
  tbMain.Repaint
end;

procedure TForm2.FormResize(Sender: TObject);
begin
  StatusBar1.Panels[0].Width := Self.Width - (30 + StatusBar1.Panels[1].Width + StatusBar1.Panels[2].Width + StatusBar1.Panels[3].Width + StatusBar1.Panels[4].Width + StatusBar1.Panels[5].Width);
end;

procedure TForm2.FormShow(Sender: TObject);
var
  TabIndex: Integer;
  Forma: TForm;
begin
  Try
    Forma := TForm.Create(Self);
    Forma.Position := poScreenCenter;
    Forma.TransparentColor := True;
    Forma.TransparentColorValue := clFuchsia;
    Forma.Color := clFuchsia;
    Forma.BorderStyle := TFormBorderStyle.bsNone;
    Panela.Parent := Forma;
    Panela.Align := alClient;
    Panela.Visible := True;
    Forma.Show;
    Image1.Refresh;

    InicializarSistema;
    LeerConfiguaracionAcceso(cdConfiguracionAcceso);
    ClientModule1.CargarRutaReportes(19);

    Try
      //dxrbn1.Tabs[0].Index;
      TabIndex := StrToInt(VarRegistry('\Ambiente', '\Principal', 'ActiveTabIndex'));
      dxrbn1.ActiveTab := dxrbn1.Tabs[TabIndex];
    Except
      dxrbn1.ActiveTab := dxrbn1.Tabs[0];
    End;

    OrigCaption := Self.Caption;
    Self.Caption := OrigCaption + ' - ' + ClientModule1.cdOrganizacion.FieldByName('NombreOrganizacion').AsString;
    StatusBar1.Panels[1].Text := ClientModule1.cdOrganizacion.FieldByName('CodigoOrganizacion').AsString;
    StatusBar1.Panels[2].Text := 'BD: ' + Globales.Elemento('DATABASE').AsString;
    StatusBar1.Panels[3].Text := 'Host: ' + ClientModule1.SQLConnection1.Params.Values['HostName'];
    Forma.Close;
    Forma.Destroy;
  Except
    on e:InteligentConnection do
    begin
      ForzarSalir := True;
      Globales.Free;
      if e.Message <> '***' then
        InteliDialog.ShowModal('No se ha podido iniciar el sistema', 'No se ha podido iniciar el sistema debido a lo siguiente:' + #10 + #10 + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    //se pulso el boton salir en la suite
    on e:InteligentWarning do
    begin
      if e.Message = '*' then
      begin
        ForzarSalir := True;
        Globales.Free;
        PostMessage(Self.Handle, WM_CLOSE, 0, 0);
      end;
    end;

    on e:exception do
    begin
      ForzarSalir := True;
      Globales.Free;
      InteliDialog.ShowModal('No se ha podido iniciar el sistema', 'No se ha podido iniciar el sistema por la siguiente raz�n:' + #10 + #10 +
                             e.message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  End;
(*begin
  // Cancelar las opciones para las plazas vacantes
  tlbr2.Visible := False;

  DiagramaActual := Nil;
  VentanasModo := TVentanasModo.Create;
  InicializarSistema;
  PageInicio.TabVisible := False;
  PageDisenio.TabVisible := False;
  qtbGrafica.Visible := False;
  //Gabo control de diagrama organizacional
  //IdOrganizacionSeleccionada := -9;

  leerConfiguaracionAcceso(cdConfiguracionAcceso);
  ClientModule1.CargarRutaReportes(19);
  //Application.ExeName := Application.ExeName +*)
end;


procedure TForm2.InicializarSistema(Reiniciar: boolean = false);
var
  ii, count: Integer;
  ListaTmp: TStringList;
  Providername: String;
  PopWizard: TFrmEsquema;
  valida, verifica: string;
  dtAccesado: TDateTime;
  StrCreado,
  StrModificado: String;
  cdSistemas: TClientDataSet;
  ListaPar: TStringList;
begin
  ForzarSalir := True;
  Habil := True;

  // Generar colores por default
  Globales := TGlobales.Create;
  GlobalColor1 := 12632256;  //color Global
  GlobalColor2 := 10789024; //color secundario
  GlobalColorPanel := 15780518;   //color de tpanel
  GlobalColorGroupText := 0; //color de fuente de Groupbox
  GlobalColorGroup := 15780518;   //color de GroupBox
  GlobalColorCampo := 16777215;  //color de tedit, tdbedit tdbmemo
  GlobalColorCaptura := 0;  //color de entrada de texto
  GlobalColorTextBtn := -16777208;   //color fuente de boton
  Globales.SetValue('Color_Salida', clWhite);
  Globales.SetValue('Color_Entrada', 12639424);
  focuscolor :=  Globales.Elemento('Color_entrada').AsInteger;

  Try
    if Assigned(TClientDataSet(Self.FindComponent('TABLAISPT'))) then
      TClientDataSet(Self.FindComponent('TABLAISPT')).Destroy;

    if Assigned(TClientDataSet(Self.FindComponent('SUBSIDIOISPT'))) then
      TClientDataSet(Self.FindComponent('SUBSIDIOISPT')).Destroy;

    if Assigned(TClientDataSet(Self.FindComponent('TABLAIMSS'))) then
      TClientDataSet(Self.FindComponent('TABLAIMSS')).Destroy;

  Except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  End;

  Try
    if ParamCount > 0 then
    begin
      ListaPar := TStringList.Create;
      ListaPar.CommaText := ParamStr(1);
    end;

    if Not Conectar then

    {Application.CreateForm(TFrmConectando, FrmConectando);
    FrmConectando.ListaPar := ListaPar;
    if FrmConectando.ShowModal = mrCancel then}
      raise InteligentConnection.Create('***');   // Si se ha cancelado en la ventana de conecta se deber cerrar la ventana aqu�
  Finally
    FreeAndNil(FrmConectando);
    ListaPar.Free;
  end;

  // Verificar si se ha podido conectar con la base de datos
  if Not ClientModule1.SQLConnection1.Connected then
    raise Exception.Create('No se ha podido establecer la comunicaci�n con la base de datos');

  if ClientModule1.cdNucConfiguracion.Active then
  begin
    Eliminarconjunto(ClientModule1.cdNucConfiguracion);
    ClientModule1.cdNucConfiguracion.Free;
    ClientModule1.cdNucConfiguracion := TClientDataset.create(nil);
  end;

  PrecargaColores(ClientModule1.cdNucConfiguracion);
  ClientModule1.ComponentColor(Self);

  // Acceder a las imagenes de la configuraci�n para actualizar el archivo local
  Try
    // Cargar la imagen a memoria
    Crearconjunto(cdImagen, 'nuc_configuracion_imagen1', ccUpdate);
    CargarDatosFiltrados(cdImagen, 'Parametro', ['ImagenGrande']);
    cdImagen.Open;
  Except
    raise;
  End;

  ModificarIconoAplicacion;   // Buscar la imagen guardada en la configuraci�n para sustituirla

  AsignarDireccionServidor;   // Asignar la direccion del servidor a los objetos de comunicaci�n

  //a�adiendo formularios
  CrearConjunto(cdOrganizaciones, cOrganizacion, providername, ccUpdate);
  cdOrganizaciones.Open;
  if CdOrganizaciones.RecordCount < 1 then
  begin
    Try
    PopWizard := TFrmEsquema.Create(Self);
      PopWizard.Showmodal;
    if PopWizard.Cancelado = True then
        raise Exception.Create('No se ha podido activar el configurador de la estructura de empresa');
    Finally
      FreeAndNil(PopWizard);
    End;
  end;

  Try
  /// OJO AQU� RANGEL..... ESTABAS PROBANDO EL TFRMSELECCIONDX
    Panelx.Caption := 'Autentificar Usuario...';
    Panelx.Refresh;

    Application.CreateForm(TFrmSeleccion, FrmSeleccion);
    Case FrmSeleccion.ShowModal of
      mrOk: ;
      mrNo: raise Exception.Create('No se ha podido activar la ventana de selecci�n de estructura de acceso al sistema');
      mrCancel: raise InteligentConnection.Create('***');
    End;

    Panelx.Caption := 'Bienvenido al sistema';
    Panelx.Refresh;

  Finally
    FreeAndNil(FrmSeleccion);
  End;
  // Fin formularios a�adidos
  Form2.BringToFront;   // Traer la ventana hacia el frente

  //verificar proceso de solicitud
  try
    valida := ClientModule1.ConfigGetValor('validacion',Clientmodule1.cdNucConfiguracion);
    if Length(Trim(valida)) < 2 then
    begin
      raise Exception.Create('');
    end;
  except
    valida := 'si';
    if not ClientModule1.SetNewValorConfig('validacion','se valida','si') then
      ClientModule1.EditValorConfig('validacion','si');
  end;

  try
    verifica := ClientModule1.ConfigGetValor('verificacion',Clientmodule1.cdNucConfiguracion);
    if Length(Trim(verifica)) < 2 then
    begin
      raise Exception.Create('');
    end;
  except
    verifica := 'si';
    if not ClientModule1.SetNewValorConfig('verificacion','se verifica','si') then
      ClientModule1.EditValorConfig('verificacion','si');
  end;

  // Generar el modo todopoderoso para los usuarios de ADMIN
  GodMode := AnsiCompareText(ClientModule1.cdUsuario.FieldByName('CodigoRol').AsString,'ADMIN') = 0;

  ///////////////////////////////////////////////////////////////////////
  ///  Cargar los datos del menu
  ///////////////////////////////////////////////////////////////////////
  ObtenerPrefijo(ListaComa);
  // Buscar ahora los prefijos de los sistemas a los cuales tiene permiso y dejar solo aquellos
  // validos seg�n los permisos asignados al rol
  if not GodMode then
  begin
    ListaTmp := TStringList.Create;
    ListaTmp.Delimiter := ',';
    ListaTmp.DelimitedText := ListaComa;
    cdSistemas := TClientDataSet.Create(nil);
    CrearConjunto(cdSistemas,'nuc_sistemapermiso','SELECT');
    //CargarDatosFiltrados(cdSistemas,'idrol',[ClientModule1.cdUsuario.FieldByName('idRol').AsInteger]);
    cdSistemas.Open;
    ii := 0;
    while ii < ListaTmp.Count do
    begin
      if not cdSistemas.Locate('prefijo',ListaTmp[ii],[loCaseInsensitive]) then
        ListaTmp.Delete(ii)
      else
        inc(ii);
    end;
    ListaComa := ListaTmp.DelimitedText;
    cdSistemas.Close;
    EliminarConjunto(cdSistemas);
    cdSistemas.Free;
    ListaTmp.Free;
  end;

  // verificar el tipo de permiso
  try
    TipodePermiso := ClientModule1.ConfigGetValor('tipopermiso',ClientModule1.cdNucConfiguracion);
    if Length(trim(TipodePermiso)) < 2 then
      raise Exception.Create('');
  except
    begin
      TipodePermiso := 'Rol';
      if not ClientModule1.SetNewValorConfig('tipopermiso','Tipo de permisos manejados por el sistema.','Rol') then
        ClientModule1.EditValorConfig('tipopermiso','Rol');
    end;
  end;

  //verificando tama�o de fuente
  try
    if Length(trim(ClientModule1.ConfigGetValor('Datos',ClientModule1.cdNucConfiguracion))) < 1 then
      raise Exception.Create('');
  except
    begin
      if not ClientModule1.SetNewValorConfig('Datos','Tama�o de fuente.','9') then
        ClientModule1.EditValorConfig('Datos','9');
    end;
  end;

  try
    if Length(trim(ClientModule1.ConfigGetValor('Ventana',ClientModule1.cdNucConfiguracion))) < 1 then
      raise Exception.Create('');
  except
    begin
      if not ClientModule1.SetNewValorConfig('Ventana','Tama�o de fuente.','8') then
        ClientModule1.EditValorConfig('Ventana','8');
    end;
  end;

  // Determinar el tipo de permisos que se debe usar
  ClientModule1.CargaPermisos(ClientModule1.cdUsuario.FieldByName('idRol').AsInteger);

  StatusBar1.Panels[5].Text := 'Nombre: ' + ClientModule1.cdUsuario.FieldByName('nombreusuario').AsString;
  StatusBar1.Panels[5].Width := Trunc(StatusBar1.Canvas.TextWidth(StatusBar1.Panels[5].Text) * 1.4);

  // Actualizar estado anterior de la ventana de comunicaci�n
  ProviderName := VarRegistry( '\Ambiente\Principal', '\Comunicaci�n', 'Estado');
  //if ProviderName = 'Anclado' then

  //if (TipoCliente = '2') or (TipoCliente = '3') then
    ReadWallpaper(Fondo);
  ForzarSalir := False;

  DSTCPIPClientCallbackChannelManager1.DSHostname:= ClientModule1.SQLConnection1.Params.Values['Hostname'];
  dSTCPIPClientCallbackChannelManager1.DSPort:=ClientModule1.SQLConnection1.Params.Values['port'];
  DSTCPIPClientCallbackChannelManager1.CommunicationProtocol:= ClientModule1.SQLConnection1.Params.Values['communicationProtocol'];

  DSHTTPClientCallbackChannelManager1.DSHostname:=ClientModule1.SQLConnection1.Params.Values['Hostname'];
  DSHTTPClientCallbackChannelManager1.DSPort:=ClientModule1.SQLConnection1.Params.Values['port'];
  DSHTTPClientCallbackChannelManager1.CommunicationProtocol:= ClientModule1.SQLConnection1.Params.Values['communicationProtocol'];

  Self.Resize;
end;

procedure TForm2.PrecargaColores(DatosConfig: TClientDataset);
var
  global1, Global2, colorpanel, colorgrouptext, colorgroup, colorcampo,
  colorcaptura, colortextbtn, colorcamposalida, colorfocus: Integer;
Begin
  try
    ClientModule1.IniNucConfiguracion(DatosConfig);
    //trata de leer el parametro de configuracion
    try
      global1 := strToInt(ClientModule1.ConfigGetValor('GlobalColor1',DatosConfig));
    except
      begin
        //si no lo puede leer se hace un default
        global1 := 12632256;
        //se trata de crear el nuevo registro ya que no se pudo leer
        if not ClientModule1.SetNewValorConfig('GlobalColor1','Estilo','12632256') then
        //en dado caso que no se haya podio crear el nuevo registro es porq ya exitia
        //entonces procederemos a insertar el valor nulo con uno default
          ClientModule1.EditValorConfig('GlobalColor1','12632256');
      end;
    end;
    // se establece el valor del color
    GlobalColor1 := global1;

    try
      Global2 := strToInt(ClientModule1.ConfigGetValor('GlobalColor2',DatosConfig));;
    except
      begin
        Global2 := 10789024;
        if not ClientModule1.SetNewValorConfig('GlobalColor2','Estilo','10789024') then
          ClientModule1.EditValorConfig('GlobalColor2','10789024');
      end;
    end;
    GlobalColor2 := Global2;

    try
      colorpanel := strToInt(ClientModule1.ConfigGetValor('GlobalColorPanel',DatosConfig));
    except
      begin
        colorpanel := 15780518;
        if not ClientModule1.SetNewValorConfig('GlobalColorPanel','Estilo','15780518') then
          ClientModule1.EditValorConfig('GlobalColorPanel','15780518');
      end;
    end;
    GlobalColorPanel := colorpanel;

    try
      colorgrouptext := strToInt(ClientModule1.ConfigGetValor('GlobalColorGroupText',DatosConfig));
    except
      begin
      colorgrouptext := 0;
        if not ClientModule1.SetNewValorConfig('GlobalColorGroupText','Estilo','0') then
          ClientModule1.EditValorConfig('GlobalColorGroupText','0');
      end;
    end;
    GlobalColorGroupText :=  colorgrouptext;

    try
      colorgroup := strToInt(ClientModule1.ConfigGetValor('GlobalColorGroup',DatosConfig));
    except
      begin
        colorgroup := 15780518;
        if not ClientModule1.SetNewValorConfig('GlobalColorGroup','Estilo','15780518') then
          ClientModule1.EditValorConfig('GlobalColorGroup','15780518');
      end;
    end;
    GlobalColorGroup := colorgroup;

    try
      colorcampo := strToInt(ClientModule1.ConfigGetValor('GlobalColorCampo',DatosConfig));
    except
      begin
        colorcampo := 16777215;
        if not ClientModule1.SetNewValorConfig('GlobalColorCampo','Estilo','16777215') then
          ClientModule1.EditValorConfig('GlobalColorCampo','16777215');
      end;
    end;
    GlobalColorCampo := colorcampo;

    try
      colorcaptura := strToInt(ClientModule1.ConfigGetValor('GlobalColorCaptura',DatosConfig));
    except
      begin
        colorcaptura := 0;
        if not ClientModule1.SetNewValorConfig('GlobalColorCaptura','Estilo','0') then
          ClientModule1.EditValorConfig('GlobalColorCaptura','0');
      end;
    end;
    GlobalColorCaptura := colorcaptura;

    try
      colortextbtn := strToInt(ClientModule1.ConfigGetValor('GlobalColorTextBtn',DatosConfig));
    except
      begin
        colortextbtn := -16777208;
        if not ClientModule1.SetNewValorConfig('GlobalColorTextBtn','Estilo','-16777208') then
          ClientModule1.EditValorConfig('GlobalColorTextBtn','-16777208');
      end;
    end;
      GlobalColorTextBtn := colortextbtn;

    try
      colorcamposalida := strToInt(ClientModule1.ConfigGetValor('GlobalColorCampo',DatosConfig));
    except
      begin
        colorcamposalida := 16777215;
      end;
    end;
    Globales.SetValue('Color_Salida', colorcamposalida);

    try
      colorfocus := strToInt(ClientModule1.ConfigGetValor('GlobalColorFocus',DatosConfig));
    except
      begin
        colorfocus := 12639424;
        if not ClientModule1.SetNewValorConfig('GlobalColorFocus','Estilo','12639424') then
          ClientModule1.EditValorConfig('GlobalColorFocus','12639424');
      end;
    end;
    Globales.SetValue('color_entrada', colorfocus);

    focusColor := Globales.Elemento('Color_entrada').AsInteger;
    ClientModule1.ComponentColor(Self);

    form2.Refresh;
    form2.Repaint;
  except
      on e:exception do
      raise Exception.Create('No se ha podido cargar la configuraci�n de colores debido a lo siguiente:' + #10 + #10 + e.message);
  end;
End;

procedure TForm2.btnFirmantesExcelClick(Sender: TObject);
begin
  //Abre el formulario de firmantes para los reportes de excel de NominasExcel
  Application.CreateForm(TFrmFirmantesExcel, FrmFirmantesExcel);
  FrmFirmantesExcel.Show;
end;

procedure TForm2.btnGruposDeSalariosClick(Sender: TObject);
begin
  application.createForm(TFrmGruposSalarios, FrmGruposSalarios);
  FrmGruposSalarios.showModal;
end;

procedure TForm2.btnTimbresClick(Sender: TObject);
begin
  //Abrir ventana de Timbres activos e inactivos
  Application.createForm(TTFrmEstadosDeTimbres, TFrmEstadosDeTimbres);
  TFrmEstadosDeTimbres.Show;
end;

procedure TForm2.btntrashDblClick(Sender: TObject);
begin
  IniciarForm(TFrmPapelera, FrmPapelera, False);
end;

procedure TForm2.btntrashMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // Obtener la posici�n relativa al objeto en donde se hizo click
  Seleccionado := True;
  PosDownClick.X := X;
  PosDownClick.Y := Y;
end;

procedure TForm2.btntrashMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Seleccionado then
  begin
    TImage(Sender).Left := TImage(Sender).Left - (PosDownClick.X - X);
    TImage(Sender).Top := TImage(Sender).Top - (PosDownClick.Y - Y);
  end;
end;

procedure TForm2.btntrashMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Seleccionado then
  begin
    ReleaseCapture;
    Seleccionado := false;
    TImage(Sender).Left := TImage(Sender).Left - (PosDownClick.x - x);
    TImage(Sender).Top := TImage(Sender).Top - (PosDownClick.y - y);
  end;
end;

function TForm2.IniciarForm(clase: TComponentClass; formulario: TForm; Multiple: Boolean; Inicializar: ProcedureParameter = nil): TModalResult;
var
  Cta, x: Integer;
  Found: Boolean;
  Forma: TForm;
  Cadena,
  SubCad: String;
  xLeft, xTop, xWidth: Integer;

begin
  Try
    Try
      // Analizar si se requiere validar la ejecuci�n previa del formulario
      if Not Multiple then
      begin
        Try
          // Verificar si la ventana ya existe
          Cta := 0;
          Found := False;
          while (Cta < Self.MDIChildCount) and Not Found do
          begin
            Found := AnsiCompareText(Self.MDIChildren[Cta].ClassName, Clase.ClassName) = 0;
            if Not Found then
              Inc(Cta);
          end;

          if Not Found then
          begin
            // Si la ventana no existe tratar de invocarla
            Try
              Application.CreateForm(Clase, Formulario);

              if (Clase.InheritsFrom(TFrmCatalogo)) and (not TFrmCatalogo(Formulario).AbrirPantalla) then
                raise InteligentException.Create('*');

              if Assigned(Inicializar) then
                Inicializar(formulario);

              if Formulario.FormStyle = fsMDIChild then
              begin
                Formulario.Show;    // Mostrar la ventana en la posici�n indicada
                Result := mrOk;
              end
              else
                Result := Formulario.ShowModal;
            Except
              Formulario.Free;
              Result := mrAbort;
            End;
          End
          Else
          Begin
            Forma := Self.MDIChildren[Cta];
            if Forma.WindowState = wsMinimized then
              Forma.WindowState := wsNormal  // Restablecer la ventana
            else
              Forma.BringToFront;
            Result := mrIgnore;
          End;
        Finally

        End;
      end
      else
      begin
        // Tratar de ejecutar directamente el formulario
        Try
          Application.CreateForm(Clase, Formulario);

          //si es descendiente del catalogo verificar su variable de abrirpantalla y si no tiene permiso generar error
          if (clase.InheritsFrom(Tfrmcatalogo)) and (not Tfrmcatalogo(Formulario).abrirpantalla) then
            raise InteligentException.Create('*');

          if Assigned(Inicializar) then
            Inicializar(formulario);
          Cadena := Formulario.Name;
          x := Length(Cadena);
          SubCad := '';
          while CharInSet(Cadena[x], ['0'..'9']) and (x > 0) and (Cadena[x] <> '_') do
          begin
            SubCad := Cadena[x] + SubCad;
            Dec(x);
          end;

          Try
            if SubCad <> '' then
            Formulario.Caption := Formulario.Caption + ' [' + SubCad + ']';
          Except
            ;
          End;

          formulario.show;
          Result := mrOk;
        Except
          on e:exception do
          begin
            showmessage(e.Message);
          Result := mrAbort;
          end;
        End;
      end;
    Finally

    end;
  Except
    on e:InteligentException do
      if e.Message = '*' then
        ;
  end;
end;

procedure TForm2.iposdeConvenios1Click(Sender: TObject);
begin
  IniciarForm(TFrmTiposReprogramaciones, FrmTiposReprogramaciones, False);
end;

procedure TForm2.iposdeEstimaciones1Click(Sender: TObject);
begin
  IniciarForm(TFrmTiposestimacion, FrmTiposestimacion, False);
end;

procedure TForm2.Tiposdetransportes1Click(Sender: TObject);
begin
  IniciarForm(TFrmTipoTransporte, FrmTipoTransporte, True);
end;

procedure TForm2.Mosaico1Click(Sender: TObject);
begin
  if self.Color <> clFuchsia then
  begin
    SetModoWallpaper('bmTile');
    ReadWallpaper(Fondo);
  end;
end;

procedure TForm2.Niveles1Click(Sender: TObject);
begin
  //if cdConfiguracionAcceso.FieldByName('RegistrosIndividuales').AsString = 'Si' then
    IniciarForm(TFrmOrganizaciones, FrmOrganizaciones, False );
  //else
    //IniciarForm(TFrmOrganizacion, FrmOrganizacion, False);
end;

procedure TForm2.Nivelporusuario1Click(Sender: TObject);
begin
  IniciarForm(TFrmNivelporusuario, FrmNivelporusuario, False);
end;

procedure TForm2.Cargos1Click(Sender: TObject);
begin
  IniciarForm(TFrmCargos, FrmCargos, False);
end;

procedure TForm2.Cascada1Click(Sender: TObject);
begin
  Cascade;
  VentanasModo.Titulo := 'Organizar en Cascada';
  VentanasModo.Indice := 2;
  gbOrganizarVentanas.Caption := VentanasModo.Titulo;
  gbOrganizarVentanas.ImageIndex := IconoIndice[2];
end;

procedure TForm2.Cat1Click(Sender: TObject);
begin
  IniciarForm(TFrmForm, FrmForm, True);
end;

procedure TForm2.Catalogo11Click(Sender: TObject);
begin
  IniciarForm(TFrmLugares, FrmLugares, True);
end;

procedure TForm2.Catalogo21Click(Sender: TObject);
begin
  IniciarForm(TFrmTransportes, FrmTransportes, True);
end;

procedure TForm2.CatlogodeNminas1Click(Sender: TObject);
begin
  IniciarForm(TFrmCatalogoNominas, FrmCatalogoNominas, False);
  //Application.CreateForm(TFrmCatalogoNominas, FrmCatalogoNominas);
  //FrmCatalogoNominas.Show;
  {IniciarForm(TFrmCatalogoNominasDX, FrmCatalogoNominasDX, False);}
end;

procedure TForm2.Centrado1Click(Sender: TObject);
begin
if self.Color <> clFuchsia then
  begin
    SetModoWallpaper('bmCenter');
    ReadWallpaper(Fondo);
  end;
end;

procedure TForm2.Cerrar1Click(Sender: TObject);
begin
  DiagramaActual.Close;
end;

procedure TForm2.Ciudad1Click(Sender: TObject);
begin
  IniciarForm(TFrmCiudad, FrmCiudad, True);
end;

procedure TForm2.cmbNivelesChange(Sender: TObject);
begin
  if DiagramaActual <> Nil then
    DiagramaActual.CambiarNivel(cmbNiveles.ItemIndex);
end;

procedure TForm2.cmbZoomChange(Sender: TObject);
begin
  if DiagramaActual <> Nil then
    DiagramaActual.CambiarZoom(cmbZoom.ItemIndex);
end;

procedure TForm2.ConcentradodeNminas2Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrmConcentradoNomina, FrmConcentradoNomina);
    FrmConcentradoNomina.ShowModal;
  Finally
    FreeAndNil(FrmConcentradoNomina);
  End;
end;

procedure TForm2.ConceptosdeInasistencia1Click(Sender: TObject);
begin
  IniciarForm(TFrmTipoInasistencia, FrmTipoInasistencia, False);
end;

procedure TForm2.Configuracin10Click(Sender: TObject);
begin
  IniciarForm(TFrmConfiguracion, FrmConfiguracion, False);
end;

procedure TForm2.Configuracin2Click(Sender: TObject);
begin
  IniciarForm(TFrmConfiguracion, FrmConfiguracion, False);
end;

procedure TForm2.Configuracin3Click(Sender: TObject);
begin
  IniciarForm(TFrmConfFirmantes, FrmConfFirmantes, False);
end;

procedure TForm2.Conmanifiesto1Click(Sender: TObject);
begin
  IniciarForm(TFrmSalidasMan, FrmSalidasMan, False);
end;

procedure TForm2.Contactos1Click(Sender: TObject);
begin
  IniciarForm(TFrmContacto, FrmContacto, True);
end;

procedure TForm2.Contratacin1Click(Sender: TObject);
begin
  IniciarForm(TFrmContratacionPersonal, FrmContratacionPersonal, False );
end;

procedure TForm2.Convenios1Click(Sender: TObject);
begin
  IniciarForm(TFrmReprogramaciones, FrmReprogramaciones, False);
end;

procedure TForm2.Cotizaciones2Click(Sender: TObject);
begin
  IniciarForm(TFrmCotizaciones, FrmCotizaciones, False);
end;

procedure TForm2.Cotizacionessinentrada1Click(Sender: TObject);
begin
  IniciarForm(TFrmReporteCotSinEnt, FrmReporteCotSinEnt, False);
end;

procedure TForm2.CotizacionessinOC1Click(Sender: TObject);
begin
  IniciarForm(TFrmReporteCotSinOC, FrmReporteCotSinOC, False);
end;

procedure TForm2.Creardesderequisicin1Click(Sender: TObject);
begin
  IniciarForm(TFrmSolicitudesAP, FrmSolicitudesAP, True);
end;

procedure TForm2.DasFestivos1Click(Sender: TObject);
begin
  IniciarForm(TFrmDiasFestivos, FrmDiasFestivos, False);
end;

procedure TForm2.Departamentos1Click(Sender: TObject);
begin
  IniciarForm(TFrmDepartamentos, FrmDepartamentos, False);
end;

procedure TForm2.DeptoEditarClick(Sender: TObject);
begin
  if (DiagramaActual <> Nil) then
    DiagramaActual.Modificar1.Click;
end;

procedure TForm2.DeptoEliminarClick(Sender: TObject);
begin
  if (DiagramaActual <> Nil) then
    DiagramaActual.Eliminar1.Click;
end;

procedure TForm2.DeptoNuevoClick(Sender: TObject);
begin
  if (DiagramaActual <> Nil) then
    DiagramaActual.Agregardepartamento1.Click;
end;

procedure TForm2.Doctos1Click(Sender: TObject);
begin
  IniciarForm(TFrmDocumento, FrmDocumento, False);
end;

procedure TForm2.EliminarPersonalRHH1Click(Sender: TObject);
begin
 IniciarForm(TFrmPersonalRhh, FrmPersonalRhh, False);
end;

procedure TForm2.EnterColor(Sender: TWinControl);
begin
  if Sender <> nil then
  begin
    if IsPublishedProp(Sender,'Color') then
    begin
      originalColor := Globales.Elemento('Color_Salida').AsInteger;
      SetOrdProp(Sender,'Color', focusColor) ;
    end ;
  end ;
end;

procedure TForm2.Entradas2Click(Sender: TObject);
begin
  IniciarForm(TFrmEntradas, FrmEntradas, False);
end;

procedure TForm2.GenerarEstructura(CualMenu: Integer);
var
  Pagina: TAdvPage;
  Paso, Paso2: TMenuItem;
  ToolBar: TAdvToolBar;
  Boton: TAdvGlowButton;
  BotonM: TAdvGlowMenuButton;
  PopupMenu: TAdvPopupMenu;
  i, k, x: Integer;
  MainMenu1: TMenuItem;

procedure CrearPopup(Var Popup: TComponent; MenuItem: TMenuItem);
var
  mItem: TMenuItem;
  u: Integer;
begin
  for u := 0 to MenuItem.Count -1 do
  begin
    mItem := TMenuItem.Create(Self);
    mItem.Caption := MenuItem.Items[u].Caption;
    mItem.ImageIndex := MenuItem.Items[u].ImageIndex;
    mItem.OnClick := MenuItem.Items[u].OnClick;
    if Popup.ClassType = TAdvPopupMenu then
      TAdvPopupMenu(Popup).Items.Add(mItem)
    else
      TMenuItem(Popup).Add(mItem);

    if MenuItem.Items[u].Count > 0 then
      CrearPopup(TComponent(mItem), MenuItem.Items[u]);
  end;
end;

begin
  while tbMain.AdvPageCount > NumPagesMain do
    tbMain.AdvPages[NumPagesMain].Destroy;

  MainMenu1 := Menu1.Items[CualMenu];
  for i:= 0 to MainMenu1.Count -1 do
  begin
    if (MainMenu1.Items[i].Enabled) or (MainMenu1.Items[i].Visible) then
    begin
      Pagina := TAdvPage.Create(tbMain);
      Pagina.Caption := MainMenu1.Items[i].Caption;
      Pagina.ImageIndex := MainMenu1.Items[i].ImageIndex;
      tbMain.AddAdvPage(Pagina);

      // Recorrer todos sus subitems
      Paso := MainMenu1.Items[i];
      if Paso.Count = 0 then
      begin
        if (Paso.Enabled) or (Paso.Visible) then
        begin
          // Si no existen opciones debe ser que est� es una opci�n directa, se deber� crear un toolbar solo para este
          ToolBar := TAdvToolBar.Create(tbMain);
          ToolBar.AutoSize := False;
          ToolBar.Caption := MainMenu1.Items[i].Caption;
          ToolBar.Parent := Pagina;
          ToolBar.Images := ClientModule1.ImageListMenu;
          ToolBar.Width := 100;
          Pagina.AddAdvToolBar(ToolBar);

          // Poner solo un icono grande que represente el item
          Boton := TAdvGlowButton.Create(tbMain);
          if MainMenu1.Items[i].Tag <> 0 then
          begin
            if Paso.Items[k].Tag > 0 then
              Boton.Caption := MainMenu1.Items[i].Caption;
            Boton.Width := MainMenu1.Items[i].Tag;
          end
          else
            Boton.Width := 50;
          Boton.Images := ClientModule1.ImageListMenu;
          Boton.ImageIndex := MainMenu1.Items[i].ImageIndex;
          Boton.Hint := MainMenu1.Items[i].Caption;
          Boton.OnClick := MainMenu1.Items[i].OnClick;
          ToolBar.AddToolBarControl(Boton);
        end;
      end;

      for k := 0 to Paso.Count -1 do
      begin
        if (Paso.Items[k].Caption <> '-') and ((Paso.Items[k].Enabled) or (Paso.Items[k].Visible)) then
        begin
          ToolBar := TAdvToolBar.Create(tbMain);
          ToolBar.AutoSize := False;
          ToolBar.Caption := Paso.Items[k].Caption;
          ToolBar.Parent := Pagina;
          ToolBar.Images := ClientModule1.ImageListMenu;
          ToolBar.Width := 100;
          Pagina.AddAdvToolBar(ToolBar);

          // Verificar si hay subitems
          if Paso.Items[k].Count = 0 then
          begin
            if (Paso.Items[k].Enabled) or (Paso.Items[k].Visible) then
            begin
              // Poner solo un icono grande que represente el item
              Boton := TAdvGlowButton.Create(tbMain);
              if Paso.Items[k].Tag <> 0 then
              begin
                if Paso.Items[k].Tag > 0 then
                  Boton.Caption := Paso.Items[k].Caption;
                Boton.Width := Abs(Paso.Items[k].Tag);
              end
              else
                Boton.Width := 50;
              Boton.Images := ClientModule1.ImageListMenu;
              Boton.ImageIndex := Paso.Items[k].ImageIndex;
              Boton.Hint := Paso.Items[k].Caption;
              Boton.OnClick := Paso.Items[k].OnClick;
              ToolBar.AddToolBarControl(Boton);
            end;
          end
          else
          begin
            // Poner todos los iconos que representen los subitems del item
            for x := 0 to Paso.Items[k].Count -1 do
            begin
              if (Paso.Items[k].Items[x].Enabled) or (Paso.Items[k].Items[x].Visible) then
              begin
                Paso2 := Paso.Items[k].Items[x];
                if Paso2.Count > 0 then
                begin
                  BotonM := TAdvGlowMenuButton.Create(tbMain);
                  BotonM.Caption := Paso2.Caption;
                  if Paso2.Tag <> 0 then
                    BotonM.Width := Abs(Paso2.Tag)
                  else
                    BotonM.Width := 50;
                  BotonM.Images := ClientModule1.ImageListMenu;
                  BotonM.ImageIndex := Paso2.ImageIndex;
                  BotonM.OnClick := Paso2.OnClick;
                  ToolBar.AddToolBarControl(BotonM);

                  // Crear el popupmenu con las opciones restantes
                  PopupMenu := TAdvPopupMenu.Create(tbMain);
                  PopupMenu.Images := ClientModule1.ImageListMenu;
                  CrearPopup(TComponent(PopupMenu), Paso2);

                  BotonM.DropDownMenu := PopupMenu;
                end
                else
                begin
                  Boton := TAdvGlowButton.Create(tbMain);
                  //Boton.Caption := Paso2.Caption;
                  if Paso2.Tag <> 0 then
                  begin
                    if Paso2.Tag > 0 then
                      Boton.Caption := Paso2.Caption;
                    Boton.Width := Abs(Paso2.Tag);
                  end
                  else
                    Boton.Width := 50;
                  Boton.Images := ClientModule1.ImageListMenu;
                  Boton.ImageIndex := Paso2.ImageIndex;
                  Boton.OnClick := Paso2.OnClick;
                  Boton.Hint := 'Haga click aqu� para acceder a la opci�n de ' + Paso2.Caption;
                  ToolBar.AddToolBarControl(Boton);
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

function TForm2.NumItems(const cadena:string;const separador:char):integer;
var
  res,Npos:integer;
  salir:boolean;
  cadAux:string;
begin
  res:=0;
  salir:=false;
  cadAux:=cadena;
  while not salir do
  begin
    Npos:=pos(separador,cadAux);
    cadaux:=copy(cadaux,Npos+1,length(cadaux));
    if Npos<>0 then
      Inc(res)
    else
    begin
      if res<>0 then
        inc(res);
      salir:=true;
    end;
  end;
  result:=res;
end;

function TForm2.TraerItem(const cadena:string;const separador:char;const posicion:integer):string;
var
  Item,CadAux:string;
  Npos,auxPos:integer;
  salir:boolean;
begin
  Item:='';
  cadAux:=cadena;
  salir:=false;
  auxPos:=0;
  while not salir do
  begin
    Npos:=pos(separador,cadaux);
    if Npos<>0 then
    begin
      item:=copy(cadAux,1,Npos-1);
      cadaux:=copy(cadaux,Npos+1,length(cadaux));
      inc(auxPos);
      if auxpos=posicion then
        salir:=true;
    end
    else
    begin
      inc(auxPos);
      if auxpos=posicion then
        item:=cadAux
      else item:='';
      Salir:=true;
    end;
  end;
  result:=trim(item);
end;

function TForm2.BuscaListaChat(Nombre: String): Integer;
var
  i: Integer;
begin
  Result := -1;

  // Buscar en base a su Id el elemento solicitado
  i := 0;
  while i < ListaChat.Count do
  begin
    // Analizar el Id de este elemento
    if CompareText(TChat(ListaChat.Objects[i]).IdUsuario, Nombre) = 0 then
    begin
      Result := i;
      i := ListaChat.Count;
    end;

    Inc(i);
  end;
end;

constructor TForm2.Create(AOwner: TComponent);
begin
  inherited;
  FObjectsToFree := TObjectList<TObject>.Create;
  //DisableAero := True;
end;

procedure TForm2.CuentasContables1Click(Sender: TObject);
begin
  IniciarForm(TFrmCatalogoCuentasContables, FrmCatalogoCuentasContables, True);
end;

procedure TForm2.CxBtnOraculoClick(Sender: TObject);
var
  weyes: TStringList;
  i    : Integer;
begin

//  weyes:= TStringList.Create;
//
//  weyes.Delimiter := ' ';
//  weyes.QuoteChar := '|';
//  weyes.DelimitedText := '|Misa| |Gama| |Ivan| |Saulo| |Fadul| |Jony| |Choy| |Frut| |Junior| |Pochi|';
//
//  i:=Random( 9 );
//  if i=0 then
//    ShowMessage('Vuelva a intentarlo')
//  else
//    ShowMessage('El q va por la Coca es :'+weyes[i]);
//
//  weyes.Free;
//  application.CreateForm(TfrmDatosContratacion, FrmDatosContratacion);
//  FrmDatosContratacion.ShowModal;
  verificarConexionInternet;
end;

destructor TForm2.Destroy;
begin
  try
    FObjectsToFree.Free;
    inherited;
  except
    ;
  end;
end;

procedure TForm2.DetalledeEquipos1Click(Sender: TObject);
begin
  IniciarForm(TFrmDetalleXEntrada, FrmDetalleXEntrada, True);
end;

procedure TForm2.DetalledeInsumosporEntrada1Click(Sender: TObject);
begin
    IniciarForm(TFrmDetalleXEntrada, FrmDetalleXEntrada, True);
end;

procedure TForm2.DetEntInsumosExecute(Sender: TObject);
begin
  IniciarForm(TFrmPrincipalTic, FrmPrincipalTic, False);
end;

procedure TForm2.DevoluciondeInsumo1Click(Sender: TObject);
begin
  IniciarForm(TFrmDevolucionesGeneral, FrmDevolucionesGeneral, False);
end;

procedure TForm2.DiagramaOrganizacional1Click(Sender: TObject);
begin
  //CambiarAplicacion;
  IniciarForm(TFrmDeptos, FrmDeptos, False);
end;

procedure TForm2.TerminateAllClientChannels;
begin
  if LChannelPrincipal <> nil then
  begin
    LChannelPrincipal.RemoveChannel;
    LChannelPrincipal.Destroy;
  end;
end;

procedure TForm2.DownloadFile(FileRemote,FileLocal:TFileName);
var
    RetStream: TStream;
    Buffer: PByte;
    Mem: TMemoryStream;
    BytesRead: Integer;
    DocumentId: Int64;
    Size: Int64;
    filename: WideString;
    BufSize: Integer;
    proxy: TServerMethods1Client;
begin
    BufSize := 1024;   //ClientModule1.SQLConnection1.

    proxy := TServerMethods1Client.Create(ClientModule1.SQLConnection1.DBXConnection);
    Try
        try
          Mem := TMemoryStream.Create;
          GetMem( Buffer, BufSize );

          try
            //RetStream := proxy.DownloadFile(FileRemote,Size);
            RetStream.Position := 0;

            if ( Size <> 0 ) then
            begin
              filename :=FileLocal;

              repeat
                BytesRead := RetStream.Read( Pointer( Buffer )^, BufSize );

                if ( BytesRead > 0 ) then
                begin
                  Mem.WriteBuffer( Pointer( Buffer )^, BytesRead );
                end;

                //lStatus.Caption := IntToStr( Mem.Size ) + '/' + IntToStr( Size );
                Application.ProcessMessages;

              until ( BytesRead < BufSize );

              if ( Size <> Mem.Size ) then
              begin
                raise Exception.Create( 'Error downloading file...' );
              end
              else
                  Mem.SaveToFile(filename);
            end
            else
            begin
              //lStatus.Caption := '';
            end;
          finally
            FreeMem( Buffer, BufSize );
            FreeAndNIl(Mem);
          end;
        except
          on E:Exception do
          begin
            //lErrorMessage.Caption := PChar( E.ClassName + ': ' + E.Message );
          end;
        end;
    Finally
           proxy.Free;
    End;
end;

procedure TForm2.DxBarBtnBancosClick(Sender: TObject);
begin
  IniciarForm(TFrmCatalogoBancos, FrmCatalogoBancos, true);
end;

procedure TForm2.DxBarBtnCalculoSalarioClick(Sender: TObject);
begin
  IniciarForm(TFrmCalculoSalario, FrmCalculoSalario, False);
end;

procedure TForm2.DxBarBtnCalculoVacacionesClick(Sender: TObject);
begin
  Application.CreateForm(TFrmAntiguedadVacaciones, FrmAntiguedadVacaciones);
  FrmAntiguedadVacaciones.Show;
end;

procedure TForm2.DxBarBtnCalculoVacAguinClick(Sender: TObject);
begin
  IniciarForm(TFrmCalculoVacAguin, FrmCalculoVacAguin, true);
end;

procedure TForm2.DxBarBtnConfigurarReporteExcelClick(Sender: TObject);
var
  Cursor : TCursor;
begin
  Screen.Cursor := crDefault;
  try
    Screen.Cursor := crAppStart;
    IniciarForm(TFrmReportesPersonalizados, FrmReportesPersonalizados, true);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm2.DxBarBtnConfigurarReportesClick(Sender: TObject);
begin
  IniciarForm(TFrmDisenoReporte, FrmDisenoReporte, true);
  //IniciarForm(TFrmReportesPersonalizados, FrmReportesPersonalizados, true);
end;

procedure TForm2.DxBarBtnContradoPtuClick(Sender: TObject);
var
  cursor: TCursor;
  LocPersonal: Integer;
begin
  try
    cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    application.CreateForm(TfrmDiasPtu, FrmDiasPtu);
//    FrmDiasPtu.IdPersonal := Form2.cdPersonal.fieldbyname('IdPersonal').AsInteger;
    FrmDiasPtu.IdTipoNomina := 2;//Form2.cdPersonal.fieldbyname('IdTipoNomina').AsInteger;
    FrmDiasPtu.Show;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e: Exception do
      InteliDialog.ShowModal('Aviso', 'Ha ocurrido un error inesperado, avise al administrador del sistema del sigueinte error ' + e.Message, mtError, [mbOK], 0);
  end;
end;

procedure TForm2.DxBarBtnDesacoplarClick(Sender: TObject);
begin
  mdiManager1.Active := Not mdiManager1.Active;
end;

procedure TForm2.DxBarBtnFactoresIntegracionClick(Sender: TObject);
begin
  IniciarForm(TFrmTablaFactoresIntegracion, FrmTablaFactoresIntegracion, True);
end;

procedure TForm2.DxBarBtnListaNominasClick(Sender: TObject);
begin
  Application.CreateForm(TFrmListaNominasExcel, FrmListaNominasExcel);
  FrmListaNominasExcel.ShowModal;
end;

procedure TForm2.DxBarBtnPlantillaCalculoClick(Sender: TObject);
begin
  IniciarForm(TFrmMachotes, FrmMachotes, True);
end;

procedure TForm2.DxBarBtnPTUConcentradoClick(Sender: TObject);
begin
  Application.CreateForm(TFrmConcentradoPTU, FrmConcentradoPTU);
  FrmConcentradoPTU.Show;
end;

procedure TForm2.DxBarBtnRegistrarGastoClick(Sender: TObject);
begin
  IniciarForm(TFrmRegistroGastos, FrmRegistroGastos, False);
end;

procedure TForm2.DxBarBtnReiniciarClick(Sender: TObject);
begin
  InicializarSistema(true);
end;

procedure TForm2.DxBarBtnSueldosSalariosClick(Sender: TObject);
begin
  Application.CreateForm(TFrmSueldosSalarios, FrmSueldosSalarios);
  FrmSueldosSalarios.ShowModal;
end;

procedure TForm2.dxBarLargeButton1Click(Sender: TObject);
begin
  IniciarForm(TFrmPlazaRhuDX, FrmPlazaRhuDX, False);
end;

procedure TForm2.dxBarLargeButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFrmSu, FrmSu);
  FrmSu.formularioDeLlamada := 'Unit2';
  FrmSu.ShowModal;
end;

procedure TForm2.dxBarLargeButton3Click(Sender: TObject);
begin
  IniciarForm(TFrmCatalogoConceptosExtras, frmCatalogoConceptosExtras, false);
end;

procedure TForm2.dxBarLargeButton4Click(Sender: TObject);
begin
  IniciarForm(TFrmFirmantesSolicitantes, FrmFirmantesSolicitantes, False);
end;

procedure TForm2.dxBarLargeButton5Click(Sender: TObject);
begin
  IniciarForm(TfrmDimm, FrmDimm, False)
end;

procedure TForm2.DxBLbuttonBancosClick(Sender: TObject);
begin
  IniciarForm(TFrmCuentasBanco, FrmCuentasBanco, False)
end;

procedure TForm2.DxBLbuttonMaestroCuentasClick(Sender: TObject);
begin
  IniciarForm(TFrmMaestroCuentasContables,FrmMaestroCuentasContables, False);
end;

procedure TForm2.DxBLbuttonUsuariosClick(Sender: TObject);
begin
  IniciarForm(TFrmUsuariosSistema, FrmUsuariosSistema, False);
end;

procedure TForm2.DxBLbuttonUtilidadesClick(Sender: TObject);
begin
  IniciarForm(TFrmUtilidades, FrmUtilidades, False);
end;

procedure TForm2.dxbrbtnpRUEBAClick(Sender: TObject);
begin
//  Application.CreateForm(TfrmPruebaX, FrmPruebaX);
//  FrmPruebaX.Show;
end;

procedure TForm2.dxBtnRetardosClick(Sender: TObject);
begin
  Application.CreateForm(TFrmCapturaRetardos,FrmCapturaRetardos);
  FrmCapturaRetardos.show;
end;

procedure TForm2.DxViewGallerySistemaItemClick(Sender: TObject;
  AItem: TdxRibbonBackstageViewGalleryItem);
begin
  try
    if AItem.Index = 0 then
    begin
      if (InteliDialog.ShowModal('Aviso', '�Est� Seguro que desea reiniciar el sistema?', mtInformation, [mbYes, mbNo], 0)) = mrYes then
        InicializarSistema(true);
    end;
  except
    on e: InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
  end;
end;

procedure TForm2.Btn_KardexClick(Sender: TObject);
begin
  IniciarForm(TFrmKardex, FrmKardex, False);
end;

procedure TForm2.AsignarConsumibles1Click(Sender: TObject);
begin
  IniciarForm(TFrmConsumoxArticulo, FrmConsumoxArticulo, False);
end;

procedure TForm2.AsignarDireccionServidor;
begin
  // Asignar el mismo host que se le especific� a la conexi�n del servidor datasnap
  DSClientCallbackChannelManager1.DSHostname := ClientModule1.SQLConnection1.Params.Values['HostName'];
  DSTCPIPClientCallbackChannelManager1.DSHostname := ClientModule1.SQLConnection1.Params.Values['HostName'];
end;

procedure TForm2.ModificarIconoAplicacion;
var
  Buffer: array[0..2048] of char;
  IconIndex: word;
  IconHandle: HIcon;
  FileNameIcon: String;
begin
  FileNameIcon := ExtractFilePath(ParamStr(0)) + 'Icono.ico';
  if FileExists(FileNameIcon) then
  begin
    try
      IconIndex := 0;
      IconHandle := 0;
      IconHandle := ExtractAssociatedIcon(HInstance, PWideChar(FileNameIcon), IconIndex);
      if IconHandle <> 0 then
        Application.Icon.Handle := IconHandle;
    Except
      on e:exception do
      begin
        InteliDialog.ShowModal('Ha ocurrido un error al tratar de cargar el Icono', 'Informe de esto al administrador del sistema:' + #10 + #10 + e.message, mtError, [mbOk], 0);
      end;
    end;
  end;
end;

procedure TForm2.ratamiento1Click(Sender: TObject);
begin
  IniciarForm(TFrmTratamiento, FrmTratamiento, False);
end;

procedure TForm2.MaestrodePersonal2Click(Sender: TObject);
begin
  IniciarForm(TFrmMaestroPersonal, FrmMaestroPersonal, False);
end;

procedure TForm2.Mantenimientos1Click(Sender: TObject);
begin
  IniciarForm(TFrmMantenimientosTIC, FrmMantenimientosTIC, False);
end;

procedure TForm2.Materialesnocotizados1Click(Sender: TObject);
begin
  IniciarForm(TFrmReporteMatNoCot, FrmReporteMatNoCot, false);
end;

procedure TForm2.Materialesnovalidados1Click(Sender: TObject);
begin
  IniciarForm(TFrmReporteMatNoVal, FrmReporteMatNoVal, false);
end;

procedure TForm2.Materialessinentradas1Click(Sender: TObject);
begin
  IniciarForm(TFrmReporteMatSinEnt, FrmReporteMatSinEnt, false);
end;

procedure TForm2.MaterialessinOC1Click(Sender: TObject);
begin
  IniciarForm(TFrmReporteMatSinOC, FrmReporteMatSinOC, false);
end;

procedure TForm2.mdiManager1PageAdded(Sender: TdxTabbedMDIManager;
  APage: TdxTabbedMDIPage);
begin
  if mdiManager1.TabProperties.PageCount > 0 then
    dxrbn1.ShowTabGroups := False
  else
    dxrbn1.ShowTabGroups := True;
end;

procedure TForm2.CambiarAplicacion;
Var
  cdNodo: TClientDataSet;
  i: integer;
  Mensaje: TForm;
  Linea1: TLabel;
  Linea2: TLabel;
  HoraInicio: TTime;
begin
  Try
    //Linea insertada por Gabo
    //IdOrganizacionSeleccionada:=-9;
    Mensaje := TForm.Create(Nil);

    Linea1 := TLabel.Create(Mensaje);
    Linea1.Parent := Mensaje;
    if not pageInicio.TabVisible then
    begin
      Linea1.Caption := 'Activando subsistema de Estructura Organizacional';
      PageAnt := tbMain.ActivePage;
      TituloAnt := tbMain.Caption.Caption;
    end
    else
      Linea1.Caption := 'Cerrando subsistema de Estructura Organizacional';
    Linea1.Font.Size := 12;
    Linea1.Font.Name := 'Lucida Handwriting';
    Linea1.Left := 20;
    Linea1.Top := 20;

    Linea2 := TLabel.Create(Mensaje);
    Linea2.Parent := Mensaje;
    Linea2.Caption := 'Espere...';
    Linea2.Font.Size := 12;
    Linea2.Font.Name := 'Lucida Handwriting';
    Linea2.Left := 20;
    Linea2.Top := 50;

    Mensaje.Position := poMainFormCenter;
    Mensaje.BorderStyle := TFormBorderStyle.bsNone;
    Mensaje.Color := clTeal;
    Mensaje.Width := 524;
    Mensaje.Height := 100;

    Mensaje.Show;
    Linea1.Repaint;
    Linea2.Repaint;

    ShowWindow(Self.Handle, SW_HIDE);

    for i := 0 to tbMain.AdvPageCount - 1 do
      tbMain.AdvPages[i].TabVisible := not tbMain.AdvPages[i].TabVisible;
    Btn_Suite.Visible := not Btn_Suite.Visible;
    qtbGrafica.Visible := PageInicio.TabVisible;

    HoraInicio := Time;
    if not pageInicio.TabVisible then
    begin
      // Cerrar todas la ventanas hijas que hayan quedado de diagramas
      i := 0;
      while i < Self.MDIChildCount do
        if Self.MDIChildren[i].ClassNameIs('TFrmDiagramaOrg')
            OR Self.MDIChildren[i].ClassNameIs('TFrmPlazaRhu')
            OR Self.MDIChildren[i].ClassNameIs('TFrmPlazaRhuDetalle') then
          Self.MDIChildren[i].Free
        else
        begin
          // Mostrar las ventanas ocultas
          ShowWindow(Self.MDIChildren[i].Handle, SW_SHOW);
          inc(i);
        end;
      // Limpiar el memorydata
      mdNodo.EmptyTable;
      mdNodo.Close;
      tbMain.ActivePage := PageAnt;
      tbMain.Caption.Caption := TituloAnt;

      PageInicio.TabVisible := False;
      pageInicio.Visible := False;
      pageDisenio.TabVisible := False;
      pageDisenio.Visible := False;
      tbmain.Height := 1;
      dxrbn1.ShowTabGroups := true;
    end
    else
    begin
      cdNodo := TClientDataSet.Create(nil);
      CrearConjunto(cdNodo,'nuc_departamento',ccCatalog);
      CargarDatosFiltrados(cdNodo,'IdOrganizacion',[LlaveBuscar]);
      cdNodo.Open;
      cdNodo.First;
      mdNodo.LoadFromDataSet(cdNodo,cdNodo.RecordCount,lmCopy);
      mdNodo.Open;
      cdNodo.Close;
      EliminarConjunto(cdNodo);
      cdNodo.Free;

      // Meter un registro que indique crear arbol nuevo
      mdNodo.Append;
      mdNodo.FieldByName('IdDepartamento').AsInteger := -5;
      mdNodo.FieldByName('CodigoDepartamento').AsString := 'NUEVO';
      mdNodo.FieldByName('TituloDepartamento').AsString := 'CREAR �RBOL NUEVO...';
      mdNodo.FieldByName('IdArbol').AsInteger := 0;
      mdNodo.FieldByName('Nivel').AsInteger := 0;
      mdNodo.FieldByName('Activo').AsString := 'Si';
      mdNodo.FieldByName('IdOrganizacion').AsInteger := 0;
      mdNodo.Post;

      mdNodo.First;
      //cmbNodos.KeyValue := mdNodo.FieldByName('iddepartamento').AsInteger;

      // Ocultar las ventanas que se encuentren abiertas
      for i := 0 to Self.MDIChildCount - 1 do
        ShowWindow(Self.MDIChildren[i].Handle, SW_HIDE);

      tbMain.ActivePageIndex := 0;
      tbMain.Caption.Caption := 'DIAGRAMA ORGANIZACIONAL';

      pageInicio.TabVisible := True;
      pageInicio.Visible := True;
      pageDisenio.TabVisible := True;
      pageDisenio.Visible := True;
      tbmain.Height := 150;
      dxrbn1.ShowTabGroups := false;
    end;

    HoraInicio := (Time - HoraInicio) * 24 * 60 * 60;
    Sleep(Trunc(1500 - HoraInicio));
  Finally
    Mensaje.Close;
    Mensaje.Destroy;
  End;

  ShowWindow(Self.Handle, SW_SHOW);
  Self.BringToFront;
  tbMain.Repaint;
end;

procedure TForm2.ReconocerDiagrama(Diagrama: TForm);
begin
  DiagramaActual := TFrmDiagramaOrg(Diagrama);
end;

procedure TForm2.IgnorarDiagrama;
begin
  DiagramaActual := Nil;
end;

procedure TForm2.MostrarVentanaOpcionClick(Sender: TObject);
begin
  if (TWinControl(Sender).Tag < Self.MDIChildCount) and (TWinControl(Sender).Tag >= 0) then
    Self.MDIChildren[TWinControl(Sender).Tag].BringToFront;
end;

procedure TForm2.OnInformaCierreRequest(var Msg: TMessage);
begin
  CursorMessage := Screen.Cursor;
  Screen.Cursor := crAppStart;
  //Timer3.Enabled := True;
end;

procedure TForm2.PlazasCerradas(var Msg: TMessage);
begin
  FrmConsultaPlazaDX := Nil;
end;

end.
