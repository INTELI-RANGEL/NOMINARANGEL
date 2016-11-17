unit frm_bitacora2;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, frm_Connection, DB, UnitTBotonesPermisos,
  frm_barra, DBCtrls, Mask, Global, Menus, Buttons, Utilerias, ExtCtrls, UnitExcepciones,
  ImgList, frxClass, frxDBSet, RXDBCtrl, RxToolEdit, rxCurrEdit, Math, RxLookup, SysUtils, strUtils,
  ZAbstractRODataset, ZDataset, Newpanel, ZAbstractDataset, udbgrid, UnitValidacion, masUtilerias,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  AdvOfficeButtons, JvExStdCtrls, JvDBCombobox, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDBLookupComboBox,
  cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TfrmBitacora2 = class(TForm)
    Label1: TLabel;
    ds_bitacoradepersonal: TDataSource;
    ds_ordenesdetrabajo: TDataSource;
    ds_bitacoradeequipos: TDataSource;
    tdIdFecha: TDateTimePicker;
    Label2: TLabel;
    tsNumeroOrden: TDBLookupComboBox;
    ds_pernoctaequipo: TDataSource;
    ds_pernoctapersonal: TDataSource;
    PopupPrincipal: TPopupMenu;
    Refresh1: TMenuItem; N3: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    EliminarPerEq: TMenuItem;
    CargaAnterior: TMenuItem;
    N5: TMenuItem;
    ComentariosAdicionalesalaPartida1: TMenuItem;
    ActualizaCostos: TMenuItem;
    ordenesdetrabajo: TZReadOnlyQuery;
    ReporteDiario: TZReadOnlyQuery;
    Paquete: TZReadOnlyQuery;
    SumPersonal: TZReadOnlyQuery;
    ds_Plataformas: TDataSource;
    Plataformas: TZReadOnlyQuery;
    PernoctaPersonal: TZReadOnlyQuery;
    PernoctaEquipo: TZReadOnlyQuery;
    ds_bitacora: TDataSource;
    QryBitacora: TZReadOnlyQuery;
    BitacoradePersonal: TZQuery;
    BitacoradeEquipos: TZQuery;
    BitacoradeEquipossContrato: TStringField;
    BitacoradeEquiposdIdFecha: TDateField;
    BitacoradeEquiposiIdDiario: TIntegerField;
    BitacoradeEquipossIdEquipo: TStringField;
    BitacoradeEquipossDescripcion: TStringField;
    BitacoradeEquipossIdPernocta: TStringField;
    BitacoradeEquipossHoraInicio: TStringField;
    BitacoradeEquipossHoraFinal: TStringField;
    BitacoradeEquiposdCantidad: TFloatField;
    BitacoradeEquipossFactor: TStringField;
    BitacoradeEquiposdCostoMN: TFloatField;
    BitacoradeEquiposdCostoDLL: TFloatField;
    BitacoradeEquiposdMontoMN: TCurrencyField;
    BitacoradeEquiposdMontoDLL: TCurrencyField;
    iempoExtras1: TMenuItem;
    BitacoradeEquipossolicitado: TIntegerField;
    BitacoradeEquiposiItemOrden: TIntegerField;
    IngresarTotaldelaVigencia1: TMenuItem;
    BorrarlasCategoriasen01: TMenuItem;
    PageBitacora: TPageControl;
    pg_personal: TTabSheet;
    Label14: TLabel;
    GroupBox1: TGroupBox;
    tsPaquete: TComboBox;
    btnPaquetePersonal: TBitBtn;
    pg_equipo: TTabSheet;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    TabSheet1: TTabSheet;
    InsertaMaterial: TMenuItem;
    bitacorademateriales: TZQuery;
    ds_bitacorademateriales: TDataSource;
    CargarPEMxPartida: TMenuItem;
    GroupBox2: TGroupBox;
    SumEquipo: TZReadOnlyQuery;
    BitacoradeEquiposdSolicitado: TFloatField;
    chkConsidera: TAdvOfficeCheckBox;
    optConsidera: TMenuItem;
    BitacoradeEquipossTipoObra: TStringField;
    Grid_BitacoraPersonal: TcxGrid;
    Grid_personal: TcxGridDBTableView;
    col_descripcion: TcxGridDBColumn;
    col_pernocta: TcxGridDBColumn;
    col_labora: TcxGridDBColumn;
    col_cantidad: TcxGridDBColumn;
    col_solcitado: TcxGridDBColumn;
    cxgGrid1Grid1Level1: TcxGridLevel;
    Grid_BitacoradeEquipos: TcxGrid;
    cxg1: TcxGridDBTableView;
    col_DescEquipos: TcxGridDBColumn;
    col_pernoctaequipo: TcxGridDBColumn;
    col_CantEquipo: TcxGridDBColumn;
    col_solicEquipo: TcxGridDBColumn;
    cxgGrid: TcxGridLevel;
    zqrPersonal: TZReadOnlyQuery;
    zqrEquipos: TZReadOnlyQuery;
    dsPersonal: TDataSource;
    dsEquipos: TDataSource;
    cxgrdpmn1: TcxGridPopupMenu;
    pnl1: TPanel;
    Grid_Bitacora: TcxGrid;
    Grid_subbitacora: TcxGridDBTableView;
    col_id: TcxGridDBColumn;
    col_Wbs: TcxGridDBColumn;
    col_concepto: TcxGridDBColumn;
    col_turno: TcxGridDBColumn;
    col_hora: TcxGridDBColumn;
    col_movimiento: TcxGridDBColumn;
    col_considera: TcxGridDBColumn;
    col_cantidad1: TcxGridDBColumn;
    col_avance: TcxGridDBColumn;
    col_unidad: TcxGridDBColumn;
    cxgGrid1Grid1Level2: TcxGridLevel;
    tdTotalPersonal: TCurrencyEdit;
    cxgrdpmn2: TcxGridPopupMenu;
    Grid_Grid1DBTableView2: TcxGridDBTableView;
    cxgGrid1Grid1Level4: TcxGridLevel;
    Grid_material: TcxGrid;
    col_descripcion1: TcxGridDBColumn;
    col_cantidad2: TcxGridDBColumn;
    col_medida: TcxGridDBColumn;
    zqrmaterial: TZReadOnlyQuery;
    dsMaterial: TDataSource;
    tdTotalEquipo: TCurrencyEdit;
    tsPaqueteEquipo: TComboBox;
    btnPaqueteEquipo: TBitBtn;
    col_frente: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);

    procedure ActualizaPersonal();
    procedure ActualizaEquipos();
    procedure ActualizaMaterialesxpartida();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure btnPaquetePersonalClick(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure ListaObjetoDblClick(Sender: TObject);

    procedure CargaAnteriorClick(Sender: TObject);
    procedure BitacoradePersonalAfterDelete(DataSet: TDataSet);
    procedure BitacoradePersonalAfterInsert(DataSet: TDataSet);
    procedure EliminarPerEqClick(Sender: TObject);

    procedure Refresh1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure ComentariosAdicionalesalaPartida1Click(Sender: TObject);
    procedure ActualizaCostosClick(Sender: TObject);
    procedure BitacoradePersonalBeforeDelete(DataSet: TDataSet);
    procedure BitacoradeEquiposBeforeDelete(DataSet: TDataSet);
    procedure BitacoradePersonalBeforePost(DataSet: TDataSet);

    procedure BitacoradePersonalAfterEdit(DataSet: TDataSet);

    procedure BitacoradeEquiposAfterEdit(DataSet: TDataSet);
    procedure BitacoradeEquiposAfterInsert(DataSet: TDataSet);

    procedure BitacoradeEquipossIdEquipoChange(Sender: TField);
    procedure btnPaqueteEquipoClick(Sender: TObject);
    function lExisteEquipo(sEquipo: string): Boolean;

    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sumadeequipos() ;
    procedure sumadepersonal() ;
  
    procedure Vigencias();
    procedure FormCreate(Sender: TObject);
    procedure IngresarTotaldelaVigencia1Click(Sender: TObject);
    procedure BorrarlasCategoriasen01Click(Sender: TObject);

    procedure InsertaMaterialClick(Sender: TObject);
    procedure PopupPrincipalPopup(Sender: TObject);

    procedure bitacoradematerialesAfterEdit(DataSet: TDataSet);
    procedure bitacoradematerialesAfterInsert(DataSet: TDataSet);
    procedure bitacoradematerialesBeforeDelete(DataSet: TDataSet);
    procedure bitacoradematerialesBeforePost(DataSet: TDataSet);
    procedure CargarPEMxPartidaClick(Sender: TObject);

    procedure optConsideraClick(Sender: TObject);
    procedure grid_bitacorapersonalGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grid_BitacoradeEquiposGetCellParams(Sender: TObject;
      Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BitacoradePersonalAfterPost(DataSet: TDataSet);
    procedure BitacoradeEquiposAfterPost(DataSet: TDataSet);
    procedure col_descripcionPropertiesChange(Sender: TObject);
    procedure BitacoradeEquiposBeforePost(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBitacora2: TfrmBitacora2;
  siEntra, sPaquete, sDescripcion2: string;
  sPernocta: string;
  sPlataforma: string;
  Categoria: string;
  lBorra, BanTE: Boolean;
  solicitadop, solicitadoe, dHorasExtras: Double;
  d1, d2, d3, d4, sDescripcion: string;
  dFechaAnterior, dFechaActual, dParamFecha: TDate;
  Bandera, Encontrado, BandTE: Boolean;
  total, Busqueda, Indicar: Byte;
  stipoPersonal, DuplicaPart: string;
  zTipoPersonal : tzReadOnlyQuery;

  utgrid: ticdbgrid;
  utgrid2: ticdbgrid;
  utgrid3: ticdbgrid;
  utgrid4: ticdbgrid;
  BotonPermiso: TBotonesPermisos;
implementation

uses frm_comentariosxanexo, frm_bitacoraxalcance;

{$R *.dfm}

function TfrmBitacora2.lExisteEquipo(sEquipo: string): Boolean;
begin
  connection.qryBusca.Active := False;
  connection.qryBusca.SQL.Clear;
  connection.qryBusca.SQL.Add('select sContrato from equipos where sContrato = :Contrato and sIdEquipo = :Equipo');
  connection.qryBusca.Params.ParamByName('Contrato').AsString := param_global_contrato;
  connection.qryBusca.Params.ParamByName('Equipo').AsString := sEquipo;
  connection.qryBusca.Open;
  if connection.qryBusca.RecordCount > 0 then
    lExisteEquipo := True
  else
    lExisteEquipo := False
end;

procedure TfrmBitacora2.FormShow(Sender: TObject);
var
  qryPaquetes, qryInsertar : tzReadOnlyQuery;
  iDiario: Integer;
  sIdDepartamento: string;
begin
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'rDiario', BitacoradePersonal);

  tdIdFecha.Date := date;
  sPernocta := '';
  sPlataforma := '';
  connection.configuracion.refresh;

  zqrPersonal.Active := False;
  zqrPersonal.Params.ParamByName('Contrato').AsString := global_contrato ;
  zqrPersonal.Open ;

  zqrEquipos.Active := False ;
  zqrEquipos.ParamByName('Contrato').AsString  := global_contrato ;
  zqrEquipos.Open ;

  zqrmaterial.Active := False ;
  zqrmaterial.Open ;

  zTipoPersonal := tzReadOnlyQuery.Create(self);
  zTipoPersonal.Connection := connection.zConnection;

  qryInsertar := tzReadOnlyQuery.Create(self);
  qryInsertar.Connection := connection.zConnection;

  // Genero los Combos de los paquetes de personal
  tsPaquete.Items.Clear;
  qryPaquetes := tzReadOnlyQuery.Create(self);
  qryPaquetes.Connection := connection.zConnection;
  qryPaquetes.Active := False;
  qryPaquetes.SQL.Clear;
  qryPaquetes.SQL.Add('select sNumeroPaquete from paquetes_p Where sContrato = :contrato order by sNumeroPaquete DESC');
  qryPaquetes.Params.ParamByName('contrato').AsString := param_global_contrato;
  qryPaquetes.Open;
  while not qryPaquetes.Eof do
  begin
    tsPaquete.Items.Add(qryPaquetes.FieldValues['sNumeroPaquete']);
    qryPaquetes.Next
  end;

  // Genero los combos de los paquetes de equipos ...
  tsPaqueteEquipo.Items.Clear;
  qryPaquetes.Active := False;
  qryPaquetes.SQL.Clear;
  qryPaquetes.SQL.Add('select sNumeroPaquete from paquetes_e Where sContrato = :contrato order by sNumeroPaquete DESC');
  qryPaquetes.Params.ParamByName('contrato').AsString := param_global_contrato;
  qryPaquetes.Open;
  while not qryPaquetes.Eof do
  begin
    tsPaqueteEquipo.Items.Add(qryPaquetes.FieldValues['sNumeroPaquete']);
    qryPaquetes.Next
  end;

  qryPaquetes.Destroy;

  OrdenesdeTrabajo.Active := False;
  OrdenesdeTrabajo.SQL.Clear;
  if True then
    if global_grupo = 'INTEL-CODE' then
      OrdenesdeTrabajo.SQL.Add('Select ot.lPersonalxPartida, ot.sNumeroOrden, ot.sIdPlataforma, ot.sDescripcionCorta, ot.sIdPernocta ' +
        'from ordenesdetrabajo ot where ot.sContrato =:Contrato And ot.cIdStatus =:Status order by ot.sNumeroOrden')
    else
      OrdenesdeTrabajo.SQL.Add('Select ot.lPersonalxPartida, ot.sNumeroOrden, ot.sIdPlataforma, ot.sDescripcionCorta, ot.sIdPernocta ' +
        'from ordenesdetrabajo ot ' +
        'INNER JOIN ordenesxusuario ou On (ou.sContrato=ot.sContrato ' +
        'And ou.sNumeroOrden=ot.sNumeroOrden) ' +
        'where ot.sContrato =:Contrato And ou.sDerechos<>"BLOQUEADO" ' +
        'And ou.sIdUsuario =:Usuario And ot.cIdStatus =:Status order by ot.sNumeroOrden');
  OrdenesdeTrabajo.Params.ParamByName('Contrato').AsString := param_Global_Contrato;
  OrdenesdeTrabajo.Params.ParamByName('status').AsString := connection.configuracion.FieldValues['cStatusProceso'];
  if global_grupo <> 'INTEL-CODE' then
  begin
    OrdenesdeTrabajo.Params.ParamByName('Usuario').AsString:= Global_Usuario;
  end;
  OrdenesdeTrabajo.Open;

  if OrdenesdeTrabajo.RecordCount > 0 then
    tsNumeroOrden.KeyValue := OrdenesdeTrabajo.FieldValues['sNumeroOrden'];


  QryBitacora.Active := False;
  if OrdenesdeTrabajo.FieldValues['lPersonalxPartida'] = 'Si' then
  begin
      QryBitacora.SQL.Clear;
      QryBitacora.SQL.Add('SELECT b.sContrato, b.sNumeroOrden, b.iIdDiario, b.sIdTurno, b.sWbs, b.sNumeroActividad, b.sIdTipoMovimiento, '+
                          'b.dCantidad, b.dAvance, b.mDescripcion, b.lAlcance, t.sDescripcion, concat(b.sHoraInicio,"-" ,b.sHorafinal) as Gerencial, ' +
                          'a.sMedida, a.dVentaMN, a.dVentaDLL, b.lRepitePersonal, b.sHoraInicio, b.sHoraFinal '+
                          'FROM bitacoradeactividades b '+
                          'INNER JOIN tiposdemovimiento t ON (b.sContrato = t.sContrato And b.sIdTipoMovimiento = t.sIdTipoMovimiento And t.sClasificacion <> "Tiempo Muerto") '+
                          'LEFT JOIN actividadesxorden a ON (a.sContrato = b.sContrato and a.sNumeroOrden = b.sNumeroOrden and a.sWbs = b.sWbs and a.sNumeroActividad = b.sNumeroActividad and a.sIdConvenio = :convenio) '+
                          'Where b.sContrato = :contrato and b.dIdFecha = :fecha and b.sNumeroOrden = :Orden and b.sIdTurno= :Turno order by :Ordenado');
  end;
  qryBitacora.Params.ParamByName('contrato').AsString := param_global_contrato;
  qryBitacora.Params.ParamByName('convenio').AsString := convenio_reporte;
  if global_orden = '' then
    qryBitacora.Params.ParamByName('orden').AsString  := tsNumeroOrden.KeyValue
  else
    qryBitacora.Params.ParamByName('orden').AsString  := global_orden;

  qryBitacora.Params.ParamByName('fecha').AsDate      := global_fecha;
  qryBitacora.Params.ParamByName('Ordenado').AsString := 'iIdDiario';
  qryBitacora.Params.ParamByName('Turno').AsString    := global_Turno_reporte;
  qryBitacora.Open;

  Plataformas.Active := False;
  Plataformas.Open;

  PernoctaPersonal.Active := False;
  PernoctaPersonal.Open;

  PernoctaEquipo.Active := False;
  PernoctaEquipo.Open;

  sPaquete := '';


  if QryBitacora.RecordCount = 0 then
   //soad -> Implementacion del comentario en automatico.. tomando en cuenta el IdDiario ...
   begin //******************************************************************************************
     if MessageDlg('No existe un Comentario para cargar Personal/Equipo/Materiales, ¿Desea que el sistema Cree uno en Automatico?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       if Pos('TIERRA', tsNumeroOrden.KeyValue) > 0 then
         global_inicio := global_inicio + 8000;

       connection.zCommand.Active := False;
       connection.zCommand.SQL.Clear;
       connection.zCommand.SQL.Add('SELECT Max(iIdDiario) as TotalDiario FROM bitacoradeactividades where sContrato = :contrato and ' +
         'dIdFecha = :fecha And iIdDiario >= :Inicio And iIdDiario <= :Final Group By sContrato ');
       connection.zCommand.Params.ParamByName('Contrato').AsString := param_Global_Contrato;
       connection.zCommand.Params.ParamByName('Fecha').AsDate      := global_fecha;
       connection.zCommand.Params.ParamByName('Inicio').AsInteger  := global_inicio;
       connection.zCommand.Params.ParamByName('Final').AsInteger   := global_final;
       connection.zCommand.Open;
       if connection.zCommand.FieldByName('TotalDiario').IsNull then
         iDiario := global_inicio + 1
       else
         iDiario := connection.zCommand.FieldValues['TotalDiario'] + 1;

       sIdDepartamento := global_depto;
      if sIdDepartamento = '' then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('SELECT  sIdDepartamento FROM departamentos limit 1');
        connection.zCommand.Open;
        if connection.zCommand.RecordCount > 0 then
          sIdDepartamento := connection.zCommand.FieldByName('sIdDepartamento').AsString
        else
          sIdDepartamento := 'OP';

      end;

      qryInsertar.Active := false;
      qryInsertar.SQL.Clear;
      qryInsertar.SQL.Add('SET FOREIGN_KEY_CHECKS = 1');
      qryInsertar.ExecSQL;

      qryInsertar.Active := False;
      qryInsertar.SQL.Clear;
      qryInsertar.SQL.Add('INSERT INTO bitacoradeactividades ( sContrato , dIdFecha , iIdDiario, sIdTurno,  ' +
        ' sNumeroOrden,sNumeroActividad, sWbs, sIdDepartamento, sIdTipoMovimiento, sHoraInicio, sHoraFinal, dAvance, dCantidad, mDescripcion) ' +
        ' VALUES (:contrato, :fecha, :diario, :turno, :orden,:actividad, :wbs,:depto, :tipo, :inicio, :final, :avance, :cantidad, :descripcion)');
      qryInsertar.Params.ParamByName('contrato').asString := param_Global_Contrato;
      qryInsertar.Params.ParamByName('fecha').asDate      := global_fecha;
      qryInsertar.Params.ParamByName('diario').AsInteger  := iDiario;
      qryInsertar.Params.ParamByName('turno').AsString    := global_turno_reporte;
      qryInsertar.Params.ParamByName('depto').AsString    := sIdDepartamento;
      if global_orden = '' then
        qryInsertar.Params.ParamByName('orden').AsString := tsNumeroOrden.KeyValue
      else
        qryInsertar.Params.ParamByName('orden').AsString   := global_orden;
      qryInsertar.Params.ParamByName('wbs').AsString       := '';
      qryInsertar.Params.ParamByName('actividad').AsString := '';
      qryInsertar.Params.ParamByName('tipo').AsString      := 'N';
      qryInsertar.Params.ParamByName('avance').AsFloat     := 0;
      qryInsertar.Params.ParamByName('cantidad').AsFloat   := 0;
      qryInsertar.Params.ParamByName('inicio').AsString    := '00:00';
      qryInsertar.Params.ParamByName('final').AsString     := '00:00';
      qryInsertar.Params.ParamByName('descripcion').AsMemo := 'COMENTARIO CREADO POR EL SISTEMA';
      qryInsertar.ExecSQL;

      qryInsertar.Destroy ;

           //ACTUALIZO LA INFORMACION DEL GRID...
      qryBitacora.Active := False;
      qryBitacora.Params.ParamByName('contrato').AsString := param_global_contrato;
      qryBitacora.Params.ParamByName('convenio').AsString := convenio_reporte;
      if global_orden = '' then
        qryBitacora.Params.ParamByName('orden').AsString  := tsNumeroOrden.KeyValue
      else
        qryBitacora.Params.ParamByName('orden').AsString  := global_orden;
      qryBitacora.Params.ParamByName('fecha').AsDate      := global_fecha;
      qryBitacora.Params.ParamByName('Ordenado').AsString := 'iIdDiario';
      qryBitacora.Params.ParamByName('Turno').AsString    := global_Turno_reporte;
      qryBitacora.Open;
    end;
  end;



  if global_orden <> '' then
  begin
    tsNumeroOrden.KeyValue := global_orden;
    tdIdFecha.Date := global_fecha;

    lBorra := False;
    if global_grupo = 'INTEL-CODE' then
    begin
      tdIdFecha.Enabled := True;
      tsNumeroOrden.Enabled := True;
      lBorra := True
    end
    else
    begin
      tdIdFecha.Enabled := False;
      tsNumeroOrden.Enabled := False;
      ReporteDiario.Active := False;
      ReporteDiario.Params.ParamByName('contrato').AsString := param_global_contrato;
      ReporteDiario.Params.ParamByName('Fecha').asDate      := tdIdFecha.Date;
      ReporteDiario.Params.ParamByName('turno').AsString    := global_turno_reporte;
      ReporteDiario.Params.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
      ReporteDiario.Open;
      if ReporteDiario.RecordCount > 0 then
        if ReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
          lBorra := True
    end;
  //  Grid_Bitacora.SetFocus;
  end
  else
  begin
    tdIdFecha.Enabled := True;
    tsNumeroOrden.Enabled := True;
    lBorra := False;
    if global_grupo = 'INTEL-CODE' then
     begin
      tdIdFecha.Enabled := True;
      tsNumeroOrden.Enabled := True;
      lBorra := True
     end
    else
      begin
        tdIdFecha.Enabled := False;
        tsNumeroOrden.Enabled := False;

        ReporteDiario.Active := False;
        ReporteDiario.Params.ParamByName('contrato').AsString := param_global_contrato;
        ReporteDiario.Params.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
        ReporteDiario.Params.ParamByName('turno').AsString    := global_turno_reporte;
        ReporteDiario.Params.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
        ReporteDiario.Open;
        if ReporteDiario.RecordCount > 0 then
         if ReporteDiario.FieldValues['lStatus'] = 'Pendiente' then
          lBorra := True
      end;
    tdIdFecha.SetFocus
  end;

   ActualizaPersonal();
   ActualizaEquipos();
   ActualizaMaterialesxpartida();
   sumadeequipos  ;
   sumadepersonal ;
end;

procedure TfrmBitacora2.Grid_BitacoradeEquiposGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
    if Bitacoradeequipos.RecordCount > 0 then
    begin
        AFont.Color := esColor(0);
        if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoObra').AsString = 'PU' then
        begin
            AFont.Color := esColor(0);
            Afont.Style := [fsBold];
            Background  := $00FFAE5E;
        end;
    end;
end;


procedure TfrmBitacora2.tdIdFechaExit(Sender: TObject);
begin
  lBorra := False;
  if tsNumeroOrden.Text <> '' then
  begin
    if global_grupo = 'INTEL-CODE' then
      lBorra := True
    else
    begin
      ReporteDiario.Active := False;

      ReporteDiario.Params.ParamByName('contrato').AsString := param_global_contrato;
      ReporteDiario.Params.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
      ReporteDiario.Params.ParamByName('turno').AsString    := global_turno_reporte;
      ReporteDiario.Params.ParamByName('Orden').AsString   := tsNumeroOrden.Text;
      ReporteDiario.Open;
      if ReporteDiario.RecordCount > 0 then
        if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
          MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0)
        else
          lBorra := True;
    end
  end;

  qryBitacora.Active := False;

  qryBitacora.Params.ParamByName('contrato').AsString := param_global_contrato;
  qryBitacora.Params.ParamByName('convenio').AsString := convenio_reporte;
  qryBitacora.Params.ParamByName('orden').AsString    := tsNumeroOrden.KeyValue;
  qryBitacora.Params.ParamByName('fecha').asDate      := global_fecha;
  qryBitacora.Params.ParamByName('Ordenado').AsString := 'iIdDiario';
  qryBitacora.Open;

  ActualizaPersonal();
  ActualizaEquipos();
  ActualizaMaterialesxPartida();
  sumadepersonal;

  tdIdFecha.Color := global_color_salida;
  Bandera := False;
  Vigencias();
end;

procedure TfrmBitacora2.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsNumeroOrden.SetFocus
end;


procedure TfrmBitacora2.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Grid_Bitacora.SetFocus ;
end;


procedure TfrmBitacora2.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  BotonPermiso.free;
  BitacoradePersonal.Cancel;
  BitacoradeEquipos.Cancel;
  bitacorademateriales.Cancel;
  Action := cafree;
end;

procedure TfrmBitacora2.FormCreate(Sender: TObject);
begin
  PageBitacora.ActivePageIndex := 0;
  Bandera := True;
  Vigencias();
end;


procedure TfrmBitacora2.tsNumeroOrdenExit(Sender: TObject);
begin
  tdTotalPersonal.Value := 0;
  sPernocta := '';
  sPlataforma := '';

  lBorra := False;
  if tsNumeroOrden.Text <> '' then
  begin
    if global_grupo = 'INTEL-CODE' then
      lBorra := True
    else
    begin
      ReporteDiario.Active := False;
      ReporteDiario.Params.ParamByName('contrato').AsString := param_global_contrato;
      ReporteDiario.Params.ParamByName('Fecha').asDate      := tdIdFecha.Date;
      ReporteDiario.Params.ParamByName('turno').AsString    := global_turno_reporte;
      ReporteDiario.Params.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
      ReporteDiario.Open;
      if ReporteDiario.RecordCount > 0 then
        if ReporteDiario.FieldValues['lStatus'] <> 'Pendiente' then
          MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0)
        else
          lBorra := True;
    end;

    QryBitacora.Active := False;
    qryBitacora.Params.ParamByName('contrato').AsString := param_global_contrato;
    qryBitacora.Params.ParamByName('convenio').AsString := convenio_reporte;
    qryBitacora.Params.ParamByName('orden').AsString    := tsNumeroOrden.Text;
    qryBitacora.Params.ParamByName('fecha').AsDate      := tdIdFecha.Date;
    qryBitacora.Params.ParamByName('Ordenado').AsString := 'iIdDiario';
    QryBitacora.Open;

    ActualizaPersonal();
    ActualizaEquipos();
    ActualizaMaterialesxpartida();
    sumadeequipos ;
    sumadepersonal ;
  end;
  tsNumeroOrden.Color := global_color_salida
end;



procedure TfrmBitacora2.btnPaquetePersonalClick(Sender: TObject);
var
  sNumeroPaquete: string;
  lContinua: Boolean;
  iEquiposSeguridad: Integer;
  QryPaquete: tZReadOnlyQuery;
begin
  if sPernocta = '' then
    if connection.configuracion.FieldValues['sIdPernocta'] = '' then
      sPernocta := OrdenesdeTrabajo.FieldValues['sIdPernocta']
    else
      sPernocta := connection.configuracion.FieldValues['sIdPernocta'];
  if sPlataforma = '' then
    sPlataforma := OrdenesdeTrabajo.FieldValues['sIdPlataforma'];

  sNumeroPaquete := tsPaquete.Text;

  if sNumeroPaquete <> '' then
  begin
    QryPaquete := tzReadOnlyQuery.Create(Self);
    QryPaquete.Connection := connection.zconnection;
        // por ultimo si es paquete normal
    QryPaquete.Active := False;
    QryPaquete.SQL.Clear;
    QryPaquete.SQL.Add('select p.sIdPersonal, p.dCantidad from paquetesdepersonal p ' +
      'inner join personal p2 on (p.sContrato = p2.sContrato and p.sIdPersonal = p2.sIdPersonal) ' +
      'where p.sContrato = :contrato And p.sNumeroPaquete = :paquete order by p.sIdPersonal');
    QryPaquete.Params.ParamByName('contrato').asString := param_global_contrato;
    QryPaquete.Params.ParamByName('paquete').asString  := sNumeroPaquete;
    QryPaquete.Open;
    if QryPaquete.RecordCount > 0 then
    begin
      connection.qryBusca2.Active := False;
      connection.qryBusca2.SQL.Clear;
      connection.qryBusca2.SQL.Add('Select sIdPernocta, sIdPlataforma from paquetes_p where sContrato = :contrato And sNumeroPaquete = :paquete');
      connection.qryBusca2.Params.ParamByName('contrato').asString := param_global_contrato;
      connection.qryBusca2.Params.ParamByName('paquete').asString  := sNumeroPaquete;
      connection.qryBusca2.Open;
      if connection.qryBusca2.RecordCount > 0 then
        if connection.qryBusca2.FieldValues['sIdPernocta'] <> '' then
          sPernocta := connection.qryBusca2.FieldValues['sIdPernocta'];
      if connection.qryBusca2.FieldValues['sIdPlataforma'] <> '' then
        sPlataforma := connection.qryBusca2.FieldValues['sIdPlataforma'];

      QryPaquete.First;
      iEquiposSeguridad := 0;
      while not QryPaquete.Eof do
      begin
        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('Select dCantidad from bitacoradepersonal where sContrato = :contrato And dIdFecha = :Fecha And ' +
          'iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdPlataforma = :Plataforma And sIdPersonal = :Personal');
        connection.qryBusca.Params.ParamByName('contrato').asString   := param_global_contrato;
        connection.qryBusca.Params.ParamByName('fecha').asDate        := tdIdFecha.Date;
        connection.qryBusca.Params.ParamByName('Diario').AsInteger    := QryBitacora.FieldValues['iIdDiario'];
        connection.qryBusca.Params.ParamByName('Pernocta').asString   := sPernocta;
        connection.qryBusca.Params.ParamByName('plataforma').asString := sPlataforma;
        connection.qryBusca.Params.ParamByName('Personal').asString   := QryPaquete.FieldValues['sIdPersonal'];
        connection.qryBusca.Open;
        if connection.qryBusca.RecordCount > 0 then
        begin
          iEquiposSeguridad := iEquiposSeguridad + QryPaquete.FieldValues['dCantidad'];
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('UPDATE bitacoradepersonal SET dCantidad = :Cantidad ' +
            'WHERE sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And ' +
            'sIdPernocta = :Pernocta And sIdPlataforma = :Plataforma And sIdPersonal = :Personal');
          connection.zCommand.Params.ParamByName('contrato').asString   := param_global_contrato;
          connection.zCommand.Params.ParamByName('fecha').asDate        := tdIdFecha.Date;
          connection.zCommand.Params.ParamByName('Diario').AsInteger    := QryBitacora.FieldValues['iIdDiario'];
          connection.zCommand.Params.ParamByName('Pernocta').asString   := sPernocta;
          connection.zCommand.Params.ParamByName('Plataforma').asString := sPlataforma;
          connection.zCommand.Params.ParamByName('Personal').asString   := QryPaquete.FieldValues['sIdPersonal'];
          connection.zCommand.Params.ParamByName('Cantidad').asFloat    := connection.qryBusca.FieldValues['dCantidad'] + QryPaquete.FieldValues['dCantidad'];
          connection.zCommand.ExecSQL;

                        // Introducir equipo asignado a la catergoria ....
          connection.qryBusca2.Active := False;
          connection.qryBusca2.SQL.Clear;
          connection.qryBusca2.SQL.Add('Select sIdEquipo, dCantidad from equiposxpersonal ' +
            'where sContrato = :contrato And sIdPersonal = :personal Order By sIdEquipo');
          Connection.qryBusca2.Params.ParamByName('contrato').asString := param_global_contrato;
          Connection.qryBusca2.Params.ParamByName('Personal').asString := QryPaquete.FieldValues['sIdPersonal'];
          Connection.qryBusca2.Open;
          while not connection.qryBusca2.Eof do
          begin
            connection.qryBusca.Active := False;
            connection.qryBusca.SQL.Clear;
            connection.qryBusca.SQL.Add('Select dCantidad from bitacoradeequipos where sContrato = :contrato And dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
            connection.qryBusca.Params.ParamByName('contrato').asString := param_global_contrato;
            connection.qryBusca.Params.ParamByName('fecha').asDate      := tdIdFecha.Date;
            connection.qryBusca.Params.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
            connection.qryBusca.Params.ParamByName('Pernocta').asString := sPlataforma;
            connection.qryBusca.Params.ParamByName('Equipo').asString   := Connection.qryBusca2.FieldValues['sIdEquipo'];
            connection.qryBusca.Open;
            if connection.qryBusca.RecordCount > 0 then
            begin
              connection.zCommand.Active := False;
              connection.zCommand.SQL.Clear;
              connection.zCommand.SQL.Add('UPDATE bitacoradeequipos SET dCantidad = :Cantidad ' +
                'WHERE sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
              connection.zCommand.Params.ParamByName('contrato').asString := param_global_contrato;
              connection.zCommand.Params.ParamByName('fecha').asDate      := tdIdFecha.Date;
              connection.zCommand.Params.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
              connection.zCommand.Params.ParamByName('Pernocta').AsString := sPlataforma;
              connection.zCommand.Params.ParamByName('Equipo').asString   := Connection.qryBusca2.FieldValues['sIdEquipo'];
              connection.zCommand.Params.ParamByName('Cantidad').AsFloat  := connection.qryBusca.FieldValues['dCantidad'] + (Connection.qryBusca2.FieldValues['dCantidad'] * QryPaquete.FieldValues['dCantidad']);
              connection.zCommand.ExecSQL;
            end
            else
            begin
              BitacoradeEquipos.Append;
              BitacoradeEquipos.FieldValues['sIdPernocta'] := sPlataforma;
              BitacoradeEquipos.FieldValues['sIdEquipo'] := Connection.qryBusca2.FieldValues['sIdEquipo'];
              BitacoradeEquipos.FieldValues['dCantidad'] := (Connection.qryBusca2.FieldValues['dCantidad'] * QryPaquete.FieldValues['dCantidad']);
              BitacoradeEquipos.Post;
            end;
            Connection.qryBusca2.Next
          end
        end
        else
        begin
          bitacoradePersonal.Append;
          BitacoradePersonal.FieldValues['sIdPersonal']   := QryPaquete.FieldValues['sIdPersonal'];
          BitacoradePersonal.FieldValues['sIdPernocta']   := sPernocta;
          BitacoradePersonal.FieldValues['sIdPlataforma'] := sPlataforma;
          BitacoradePersonal.FieldValues['dCantidad']     := QryPaquete.FieldValues['dCantidad'];
          BitacoradePersonal.Post;
        end;
        QryPaquete.Next
      end
    end;

        // Actualizo Equipos de Seguridad, siempre y cuando
    connection.qryBusca.Active := False;
    connection.qryBusca.SQL.Clear;
    connection.qryBusca.SQL.Add('Select dCantidad from bitacoradeequipos ' +
      'where sContrato = :contrato And dIdFecha = :Fecha And iIdDiario = :Diario And ' +
      'sIdPernocta = :Pernocta And sIdEquipo = :Equipo');

    connection.qryBusca.Params.ParamByName('contrato').asString := param_global_contrato;
    connection.qryBusca.Params.ParamByName('fecha').asDate      := tdIdFecha.Date;
    connection.qryBusca.Params.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
    connection.qryBusca.Params.ParamByName('Pernocta').asString := sPlataforma;
    connection.qryBusca.Params.ParamByName('Equipo').asString   := Connection.configuracion.FieldValues['sEquipoSeguridad'];
    connection.qryBusca.Open;
    if connection.qryBusca.RecordCount > 0 then
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('UPDATE bitacoradeequipos SET dCantidad = :Cantidad WHERE ' +
        'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
      connection.zCommand.Params.ParamByName('contrato').asString := param_global_contrato;
      connection.zCommand.Params.ParamByName('fecha').asDate      := tdIdFecha.Date;
      connection.zCommand.Params.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
      connection.zCommand.Params.ParamByName('Pernocta').asString := sPlataforma;
      connection.zCommand.Params.ParamByName('Equipo').asString   := Connection.configuracion.FieldValues['sEquipoSeguridad'];
      connection.zCommand.Params.ParamByName('Cantidad').AsFloat  := connection.qryBusca.FieldValues['dCantidad'] + iEquiposSeguridad;
      connection.zCommand.ExecSQL;
    end
    else
      if Connection.configuracion.FieldValues['sEquipoSeguridad'] <> '' then
      begin
        BitacoradeEquipos.Append;
        BitacoradeEquipos.FieldValues['sIdPernocta'] := sPlataforma;
        BitacoradeEquipos.FieldValues['sIdEquipo']   := Connection.configuracion.FieldValues['sEquipoSeguridad'];
        BitacoradeEquipos.FieldValues['dCantidad']   := iEquiposSeguridad;

        BitacoradeEquipos.Post;
      end;

    qryPaquete.Destroy;
  end;
  BitacoradeEquipos.Active := False;
  BitacoradeEquipos.Open;

  BitacoradePersonal.Active := False;
  BitacoradePersonal.Open;
  sumadepersonal ;

end;

procedure TfrmBitacora2.tdIdFechaEnter(Sender: TObject);
begin
  tdIdFecha.Color := global_color_entrada
end;

procedure TfrmBitacora2.tsNumeroOrdenEnter(Sender: TObject);
begin
  tsNumeroOrden.Color := global_color_entrada
end;

procedure TfrmBitacora2.ListaObjetoDblClick(Sender: TObject);
begin
  if PageBitacora.ActivePageIndex = 0 then
    grid_bitacorapersonal.SetFocus
  else
    if PageBitacora.ActivePageIndex = 1 then
      grid_bitacoradeequipos.SetFocus
    else
      if PageBitacora.ActivePageIndex = 2 then
        Grid_Material.SetFocus;
end;

procedure TfrmBitacora2.optConsideraClick(Sender: TObject);
begin
    if chkConsidera.Checked = False then
    begin
        connection.QryBusca.Active := false;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('Update bitacoradeactividades set lRepitePersonal = "Si" where sContrato=:Contrato and dIdFecha =:Fecha and iIdDiario =:Diario ');
        connection.QryBusca.Params.ParamByName('contrato').asString   := param_global_contrato;
        connection.QryBusca.Params.ParamByName('fecha').asDate        := tdIdfecha.Date;
        connection.QryBusca.Params.ParamByName('Diario').AsInteger    := QryBitacora.FieldValues['iIdDiario'];
        connection.QryBusca.ExecSQL;
    end;

    if chkConsidera.Checked  then
    begin
        connection.QryBusca.Active := false;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('Update bitacoradeactividades set lRepitePersonal = "No" where sContrato=:Contrato and dIdFecha =:Fecha and iIdDiario =:Diario ');
        connection.QryBusca.Params.ParamByName('contrato').asString := param_global_contrato;
        connection.QryBusca.Params.ParamByName('fecha').asDate      := tdIdfecha.Date;
        connection.QryBusca.Params.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
        connection.QryBusca.ExecSQL;
    end;
    qryBitacora.Refresh;
end;



procedure TfrmBitacora2.IngresarTotaldelaVigencia1Click(Sender: TObject);
var
  dFecha: tDate;
  qryOrdenes: tzReadOnlyquery;
  { 20/feb/2012: adal, distinguir si es vigencia diaria o consolidada }
  sTipoVigencia: string;
  qry: TZReadOnlyQuery;
  sDescripcion: string;
begin
  qry := TZReadOnlyQuery.Create(nil);
  qry.Connection := Connection.zConnection;

  { 20/feb/2012: adal, obtener el tipo de vigencia}
  if d4 <> '' then
  begin
    sTipoVigencia := ''; //DIARIA o CONSOLIDADA
    Connection.Auxiliar.Active := False;
    Connection.Auxiliar.SQL.Clear;
    Connection.Auxiliar.SQL.Add('select sTipoVigencia from ordenesdetrabajogral where sContrato =:contrato And dFechaVigencia =:FechaVigencia');

    Connection.Auxiliar.Params.ParamByName('contrato').asString       := param_Global_Contrato;
    Connection.Auxiliar.Params.ParamByName('FechaVigencia').asString  := d4;
    Connection.Auxiliar.Open;
    if Connection.Auxiliar.RecordCount > 0 then
    begin
      sTipoVigencia := Connection.Auxiliar.FieldValues['sTipoVigencia'];
    end
    else
    begin
      MessageDlg('No Existe Vigencias Para esa Fecha', mtError, [mbOk], 0);
      exit;
    end;
  end
  else
  begin
    MessageDlg('No Existe Vigencias Para esa Fecha', mtError, [mbOk], 0);
    exit;
  end;

  Connection.Auxiliar.Active := False;
  Connection.Auxiliar.SQL.Clear;

     { 20/feb/2012: adal, leer datos segun el tipo de vigencia}
  if sTipoVigencia = 'DIARIA' then
    Connection.Auxiliar.SQL.Add('SELECT sNumeroActividad,dCantidad FROM detallerecursosxoficio ' +
      ' where sContrato = :Contrato and dFechaDia=:FechaVigencia and sAnexo=:Anexo');

  if sTipoVigencia = 'CONSOLIDADA' then
    Connection.Auxiliar.SQL.Add('select sNumeroActividad,dCantidad from movtorecursosxoficio ' +
      'Where scontrato = :Contrato And sAnexo =:Anexo And year(dFechaVigencia)=year(:FechaVigencia) and month(dFechaVigencia)=month(:FechaVigencia) ORDER by iItemOrden');
  if sTipoVigencia <> '' then
  begin
    if MessageDlg('Desea Cargar el Personal de la Vigencia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      qryOrdenes := tzReadOnlyQuery.Create(Self);
      qryOrdenes.Connection := connection.zConnection;
      vigencias;

      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.Params.ParamByName('Anexo').AsString         := global_labelPersonal;
      Connection.Auxiliar.Params.ParamByName('Contrato').AsString      := param_Global_Contrato;
      Connection.Auxiliar.Params.ParamByName('FechaVigencia').AsString := d4;
      Connection.Auxiliar.Open;

      if Connection.Auxiliar.RecordCount = 0 then
        MessageDlg('No Existe Vigencias Para esa Fecha', mtError, [mbOk], 0);

      dFecha := tdIdFecha.Date - 1;
      qryOrdenes.Active := False;
      qryOrdenes.SQL.Clear;
      qryOrdenes.SQL.Add('Select * FROM ordenesdetrabajo Where sContrato = :Contrato And sNumeroOrden = :Orden');
      qryOrdenes.Params.ParamByName('contrato').asString := param_global_Contrato;
      qryOrdenes.Params.ParamByName('Orden').asString    := tsNumeroOrden.Text;
      qryOrdenes.Open;
      if Connection.Auxiliar.RecordCount > 0 then
      begin
        while not Connection.Auxiliar.Eof do
        begin
        {Buscar descripcion del personal}
          Qry.Active := false;
          Qry.SQL.Clear;
          Qry.SQL.Add('select sDescripcion from personal where sContrato=:contrato and sIdPersonal=:personal');
          Qry.ParamByName('contrato').AsString := param_global_contrato;
          Qry.ParamByName('personal').AsString := Connection.Auxiliar.FieldValues['sNumeroActividad'];
          Qry.Open;
          sDescripcion := '';
          if Qry.RecordCount > 0 then
            sDescripcion := Qry.FieldValues['sDescripcion'];


         {insertar el personal obtenido de la vigencia}
          BitacoradePersonal.Append;
          BitacoradePersonal.FieldValues['sContrato'] := param_Global_Contrato;
          BitacoradePersonal.FieldValues['sIdPlataforma'] := qryOrdenes.FieldValues['sIdPlataforma'];
          BitacoradePersonal.FieldValues['sIdPersonal'] := Connection.Auxiliar.FieldValues['sNumeroActividad'];
          BitacoradePersonal.FieldValues['dCantidad'] := Connection.Auxiliar.FieldValues['dCantidad'];
          BitacoradePersonal.FieldValues['sIdPernocta'] := qryOrdenes.FieldValues['sIdPernocta'];
          BitacoradePersonal.FieldValues['sDescripcion'] := sDescripcion;
          BitacoradePersonal.FieldValues['iItemOrden'] := 0;
          BitacoradePersonal.FieldValues['sHoraInicio'] := '00:00';
          BitacoradePersonal.FieldValues['sHoraFinal'] := '00:00';
          BitacoradePersonal.FieldValues['sFactor'] := '';
          BitacoradePersonal.FieldValues['dCostoMN'] := 0;
          BitacoradePersonal.FieldValues['dCostoDLL'] := 0;
          BitacoradePersonal.FieldValues['sAgrupaPersonal'] := '*';
          BitacoradePersonal.FieldValues['sTipoPernocta'] := '1';

          BitacoradePersonal.Post;
          Connection.Auxiliar.Next
        end;
      end;
      MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
    end;


    if MessageDlg('Desea Cargar el Equipo de la Vigencia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.Params.ParamByName('Anexo').AsString         := global_labelEquipo;
      Connection.Auxiliar.Params.ParamByName('contrato').asString      := param_Global_Contrato;
      Connection.Auxiliar.Params.ParamByName('FechaVigencia').asString := d4;
      Connection.Auxiliar.Open;
      if Connection.Auxiliar.RecordCount = 0 then
        MessageDlg('No Existe Vigencias Para esa Fecha', mtError, [mbOk], 0);

      if Connection.Auxiliar.RecordCount > 0 then
      begin
        while not Connection.Auxiliar.Eof do
        begin
        {Buscar descripcion del equipo}
          Qry.Active := false;
          Qry.SQL.Clear;
          Qry.SQL.Add('select sDescripcion from equipos where sContrato=:contrato and sIdEquipo=:equipo');
          Qry.ParamByName('contrato').AsString := param_global_contrato;
          Qry.ParamByName('equipo').AsString := Connection.Auxiliar.FieldValues['sNumeroActividad'];
          Qry.Open;
          sDescripcion := '';
          if Qry.RecordCount > 0 then
            sDescripcion := Qry.FieldValues['sDescripcion'];

         {insertar el equipo obtenido de la vigencia}
          BitacoradeEquipos.Append;
          BitacoradeEquipos.FieldValues['sContrato'] := param_Global_Contrato;
          BitacoradeEquipos.FieldValues['sIdEquipo'] := Connection.Auxiliar.FieldValues['sNumeroActividad'];
          BitacoradeEquipos.FieldValues['dCantidad'] := Connection.Auxiliar.FieldValues['dCantidad'];
          BitacoradeEquipos.FieldValues['sIdPernocta'] := qryOrdenes.FieldValues['sIdPlataforma'];
          BitacoradeEquipos.FieldValues['sDescripcion'] := sDescripcion;
          BitacoradeEquipos.FieldValues['iItemOrden'] := 0;
          BitacoradeEquipos.FieldValues['sHoraInicio'] := '00:00';
          BitacoradeEquipos.FieldValues['sHoraFinal'] := '00:00';
          BitacoradeEquipos.FieldValues['sFactor'] := '';
          BitacoradeEquipos.FieldValues['dCostoMN'] := 0;
          BitacoradeEquipos.FieldValues['dCostoDLL'] := 0;
          BitacoradeEquipos.Post;
          Connection.Auxiliar.Next
        end;
      end;
      MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
    end;
  end
  else
    MessageDlg('No Existe Vigencias Para esa Fecha.', mtInformation, [mbOk], 0);
end;

{$REGION 'Insertar Analisis de la Partida'}
procedure TfrmBitacora2.InsertaMaterialClick(Sender: TObject);
begin
  if MessageDlg('Desea Cargar el Analisis de la Partida Seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
      //Analisis de la partida personal...
    if pageBitacora.ActivePageIndex = 0 then
    begin
      BitacoradePersonal.EmptyDataSet;
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.SQL.Clear;
      Connection.Auxiliar.SQL.Add('select r.sNumeroActividad, p.sIdPersonal, r.dCantidad as dSolicitado, p.iItemOrden, p.sDescripcion from recursospersonalnuevos r ' +
        'inner join personal p ' +
        'on (p.sContrato = r.sContrato and p.sIdPersonal = r.sIdPersonal) ' +
        'Where r.sContrato =:contrato and r.sWbs =:Wbs and r.sNumeroActividad =:Actividad ');
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.Params.ParamByName('contrato').asString  := param_global_contrato;
      Connection.Auxiliar.Params.ParamByName('Wbs').asString       := QryBitacora.FieldValues['sWbs'];
      Connection.Auxiliar.Params.ParamByName('Actividad').AsString := QryBitacora.FieldValues['sNumeroActividad'];
      Connection.Auxiliar.Open;

      if Connection.Auxiliar.RecordCount > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('delete from bitacoradepersonal where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:Diario ');
        connection.zCommand.ParamByName('contrato').asString := param_global_contrato;
        connection.zCommand.ParamByName('fecha').asDate      := tdIdFecha.Date;
        connection.zCommand.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
        connection.zCommand.ExecSQL;
        while not Connection.Auxiliar.Eof do
        begin
          BitacoradePersonal.Append;
          BitacoradePersonal.FieldValues['sContrato'] := param_Global_Contrato;
          BitacoradePersonal.FieldValues['dIdFecha'] := tdIdFecha.Date;
          BitacoradePersonal.FieldValues['iIdDiario'] := QryBitacora.FieldValues['iIdDiario'];
          BitacoradePersonal.FieldValues['sIdPersonal'] := Connection.Auxiliar.FieldValues['sIdPersonal'];
          BitacoradePersonal.FieldValues['sDescripcion'] := Connection.Auxiliar.FieldValues['sDescripcion'];
          BitacoradePersonal.FieldValues['sIdPernocta'] := OrdenesdeTrabajo.FieldValues['sIdPernocta'];
          BitacoradePersonal.FieldValues['sIdPlataforma'] := OrdenesdeTrabajo.FieldValues['sIdPlataforma'];
          BitacoradePersonal.FieldValues['sHoraInicio'] := '00:00';
          BitacoradePersonal.FieldValues['sHoraFinal'] := '00:00';
          BitacoradePersonal.FieldValues['dCantidad'] := 0;
          BitacoradePersonal.FieldValues['sFactor'] := '';
          BitacoradePersonal.FieldValues['dCostoMN'] := 0;
          BitacoradePersonal.FieldValues['dCostoDLL'] := 0;
          BitacoradePersonal.FieldValues['dMontoMN'] := 0;
          BitacoradePersonal.FieldValues['dMontoDLL'] := 0;
          BitacoradePersonal.FieldValues['mMotivos'] := '';
          BitacoradePersonal.FieldValues['solicitado'] := Connection.Auxiliar.FieldValues['dSolicitado'];
          BitacoradePersonal.FieldValues['iItemOrden'] := Connection.Auxiliar.FieldValues['iItemOrden'];
          BitacoradePersonal.Post;
          Connection.Auxiliar.Next
        end;

        MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
        ActualizaMaterialesxpartida();
      end
      else
        MessageDlg('No exite Analisis para esta partida.', mtInformation, [mbOk], 0);
    end;


      //Analisis de la partida equipos...
    if pageBitacora.ActivePageIndex = 1 then
    begin
      BitacoradeEquipos.EmptyDataSet;
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.SQL.Clear;
      Connection.Auxiliar.SQL.Add('select r.sNumeroActividad, e.sIdEquipo, r.dCantidad as dSolicitado, e.iItemOrden, e.sDescripcion from recursosequiposnuevos r ' +
        'inner join equipos e ' +
        'on (e.sContrato = r.sContrato and e.sIdEquipo = r.sIdEquipo)  ' +
        'Where r.sContrato =:contrato and r.sWbs =:Wbs and r.sNumeroActividad =:Actividad ');
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.Params.ParamByName('contrato').asString  := param_global_contrato;
      Connection.Auxiliar.Params.ParamByName('Wbs').asString       := QryBitacora.FieldValues['sWbs'];
      Connection.Auxiliar.Params.ParamByName('Actividad').AsString := QryBitacora.FieldValues['sNumeroActividad'];
      Connection.Auxiliar.Open;

      if Connection.Auxiliar.RecordCount > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('delete from bitacoradeequipos where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:Diario ');
        connection.zCommand.ParamByName('contrato').asString := param_global_contrato;
        connection.zCommand.ParamByName('fecha').asDate      := tdIdFecha.Date;
        connection.zCommand.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
        connection.zCommand.ExecSQL;
        while not Connection.Auxiliar.Eof do
        begin
          BitacoradeEquipos.Append;
          BitacoradeEquipos.FieldValues['sContrato']     := param_Global_Contrato;
          BitacoradeEquipos.FieldValues['dIdFecha']      := tdIdFecha.Date;
          BitacoradeEquipos.FieldValues['iIdDiario']     := QryBitacora.FieldValues['iIdDiario'];
          BitacoradeEquipos.FieldValues['sIdEquipo']     := Connection.Auxiliar.FieldValues['sIdEquipo'];
          BitacoradeEquipos.FieldValues['sDescripcion']  := Connection.Auxiliar.FieldValues['sDescripcion'];
          BitacoradeEquipos.FieldValues['sIdPernocta']   := OrdenesdeTrabajo.FieldValues['sIdPernocta'];
          BitacoradeEquipos.FieldValues['sHoraInicio']   := '00:00';
          BitacoradeEquipos.FieldValues['sHoraFinal']    := '00:00';
          BitacoradeEquipos.FieldValues['dCantidad']     := 0;
          BitacoradeEquipos.FieldValues['sFactor']       := '';
          BitacoradeEquipos.FieldValues['dCostoMN']      := 0;
          BitacoradeEquipos.FieldValues['dCostoDLL']     := 0;
          BitacoradeEquipos.FieldValues['dMontoMN']      := 0;
          BitacoradeEquipos.FieldValues['dMontoDLL']     := 0;
          BitacoradeEquipos.FieldValues['solicitado']    := Connection.Auxiliar.FieldValues['dSolicitado'];
          BitacoradeEquipos.FieldValues['iItemOrden']    := Connection.Auxiliar.FieldValues['iItemOrden'];
          BitacoradeEquipos.Post;
          Connection.Auxiliar.Next
        end;

        MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
        ActualizaMaterialesxpartida();
      end
      else
        MessageDlg('No exite Analisis para esta partida.', mtInformation, [mbOk], 0);
    end;
      // Analisis de la partida Materiales...
    if pageBitacora.ActivePageIndex = 2 then
    begin
      bitacorademateriales.EmptyDataSet;
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.SQL.Clear;
      Connection.Auxiliar.SQL.Add('select r.sNumeroActividad, r.sIdInsumo, r.dCantidad as dSolicitado, i.mDescripcion, i.sMedida from recursosanexosnuevos r ' +
        'inner join insumos i ' +
        'on (i.sContrato = r.sContrato and i.sIdInsumo = r.sIdInsumo) ' +
        'Where r.sContrato =:contrato and r.sWbs =:Wbs and r.sNumeroActividad =:Actividad ');
      Connection.Auxiliar.Active := False;
      Connection.Auxiliar.Params.ParamByName('contrato').asString  := param_global_contrato;
      Connection.Auxiliar.Params.ParamByName('Wbs').asString       := QryBitacora.FieldValues['sWbs'];
      Connection.Auxiliar.Params.ParamByName('Actividad').AsString := QryBitacora.FieldValues['sNumeroActividad'];
      Connection.Auxiliar.Open;

      if Connection.Auxiliar.RecordCount > 0 then
      begin
        connection.zCommand.Active := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('delete from bitacorademateriales where sContrato =:Contrato and dIdFecha =:Fecha and iIdDiario =:Diario and sWbs =:Wbs ');

        connection.zCommand.ParamByName('contrato').asString := param_global_contrato;
        connection.zCommand.ParamByName('fecha').asDate      := tdIdFecha.Date;
        connection.zCommand.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
        connection.zCommand.ParamByName('Wbs').asString      := QryBitacora.FieldValues['sWbs'];
        connection.zCommand.ExecSQL;
        while not Connection.Auxiliar.Eof do
        begin
          bitacorademateriales.Append;
          bitacorademateriales.FieldValues['sContrato'] := param_Global_Contrato;
          bitacorademateriales.FieldValues['dIdFecha'] := tdIdFecha.Date;
          bitacorademateriales.FieldValues['iIdDiario'] := QryBitacora.FieldValues['iIdDiario'];
          bitacorademateriales.FieldValues['sIdMaterial'] := Connection.Auxiliar.FieldValues['sIdInsumo'];
          bitacorademateriales.FieldValues['dCantidad'] := 0;
          bitacorademateriales.FieldValues['sDescripcion'] := MidStr(Connection.Auxiliar.FieldValues['mDescripcion'], 1, 255);
          bitacorademateriales.FieldValues['sMedida'] := Connection.Auxiliar.FieldValues['sMedida'];
          bitacorademateriales.FieldValues['dSolicitado'] := Connection.Auxiliar.FieldValues['dSolicitado'];
          bitacorademateriales.Post;
          Connection.Auxiliar.Next
        end;

        MessageDlg('Proceso Terminado Con Exito.', mtInformation, [mbOk], 0);
        ActualizaMaterialesxpartida();
      end
      else
        MessageDlg('No exiten Recursos para esta partida.', mtInformation, [mbOk], 0);
    end;
  end;
end;
{$ENDREGION}

procedure TfrmBitacora2.grid_bitacorapersonalGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
    if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
    if Bitacoradepersonal.RecordCount > 0 then
    begin
        AFont.Color := esColor(0);
        if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoObra').AsString = 'PU' then
        begin
            AFont.Color := esColor(0);
            Afont.Style := [fsBold];
            Background  := $00FFAE5E;
        end;
    end;

end;

{$REGION 'Traer Equipo y Personal del dia Anterior'}
procedure TfrmBitacora2.CargaAnteriorClick(Sender: TObject);
var
  dFecha: tDate;
  lEventoRealizado: boolean;
  QyrPersonalAnterior: tzReadOnlyquery;
begin
  siEntra :='CARGARDIAANTERIO' ;
  if lBorra then
   begin
     QyrPersonalAnterior := tzReadOnlyQuery.Create(Self);
     QyrPersonalAnterior.Connection := connection.zConnection;
     if QryBitacora.RecordCount > 0 then
       if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
        begin
        if MessageDlg('Desea adicionar todo el personal existente en el reporte anterior?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          dFecha := tdIdFecha.Date - 1;
          if global_dias = 0 then
            global_dias := 10;
          lEventoRealizado := False;
          while (dFecha >= (tdIdFecha.Date - global_dias)) and not lEventoRealizado do
          begin
            QyrPersonalAnterior.Active := False;
            QyrPersonalAnterior.SQL.Clear;
            QyrPersonalAnterior.SQL.Add('Select bp.* From bitacoradepersonal bp INNER JOIN bitacoradeactividades b ON ' +
              '(bp.sContrato = b.sContrato And bp.dIdFecha = b.dIdFecha And bp.iIdDiario = b.iIdDiario And ' +
              'b.sNumeroOrden = :Orden And b.sIdTurno = :Turno and b.sHoraInicio =:Inicio and b.sHoraFinal =:Final) ' +
              'Where bp.sContrato = :Contrato And bp.dIdFecha = :Fecha Order By bp.sIdPersonal');

            QyrPersonalAnterior.Params.ParamByName('contrato').asString  := param_global_Contrato;
            QyrPersonalAnterior.Params.ParamByName('Orden').asString     := tsNumeroOrden.Text;
            QyrPersonalAnterior.Params.ParamByName('fecha').asDate       := dFecha;
            QyrPersonalAnterior.Params.ParamByName('Turno').asString     := global_turno_reporte;
            QyrPersonalAnterior.Params.ParamByName('Inicio').asString    := QryBitacora.FieldValues['sHoraInicio'];
            QyrPersonalAnterior.Params.ParamByName('Final').asString     := QryBitacora.FieldValues['sHoraFinal'];
            QyrPersonalAnterior.Open;
            if QyrPersonalAnterior.RecordCount > 0 then
            begin
              lEventoRealizado := True;
              QyrPersonalAnterior.First;
              while not QyrPersonalAnterior.Eof do
              begin
                                // Checo si ya existe ....
                connection.qryBusca.Active := False;
                connection.qryBusca.SQL.Clear;
                connection.qryBusca.SQL.Add('Select dCantidad from bitacoradepersonal where sContrato = :contrato And dIdFecha = :Fecha And ' +
                  'iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdPlataforma = :Plataforma And sIdPersonal = :Personal and sTipoObra =:Tipo ');
                connection.qryBusca.Params.ParamByName('contrato').asString   := param_global_contrato;
                connection.qryBusca.Params.ParamByName('fecha').asDate        := tdIdFecha.Date;
                connection.qryBusca.Params.ParamByName('Diario').AsInteger    := QryBitacora.FieldValues['iIdDiario'];
                connection.qryBusca.Params.ParamByName('Pernocta').asString   := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                connection.qryBusca.Params.ParamByName('plataforma').asString := QyrPersonalAnterior.FieldValues['sIdPlataforma'];
                connection.qryBusca.Params.ParamByName('Personal').asString   := QyrPersonalAnterior.FieldValues['sIdPersonal'];
                connection.qryBusca.Params.ParamByName('Tipo').asString       := QyrPersonalAnterior.FieldValues['sTipoObra'];
                connection.qryBusca.Open;
                if connection.qryBusca.RecordCount > 0 then
                begin
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacoradepersonal SET dCantidad = :Cantidad WHERE ' +
                    'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And ' +
                    'sIdPernocta = :Pernocta And sIdPlataforma = :Plataforma And sIdPersonal = :Personal and sTipoObra =:Tipo ');
                  connection.zCommand.Params.ParamByName('contrato').asString   := param_global_contrato;
                  connection.zCommand.Params.ParamByName('fecha').asDate        := tdIdFecha.Date;
                  connection.zCommand.Params.ParamByName('Diario').AsInteger    := QryBitacora.FieldValues['iIdDiario'];
                  connection.zCommand.Params.ParamByName('Pernocta').asString   := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                  connection.zCommand.Params.ParamByName('Plataforma').asString := QyrPersonalAnterior.FieldValues['sIdPlataforma'];
                  connection.zCommand.Params.ParamByName('Personal').asString   := QyrPersonalAnterior.FieldValues['sIdPersonal'];
                  connection.zCommand.Params.ParamByName('Cantidad').asFloat    := connection.qryBusca.FieldValues['dCantidad'] + QyrPersonalAnterior.FieldValues['dCantidad'];
                  connection.zCommand.Params.ParamByName('Tipo').asString       := QyrPersonalAnterior.FieldValues['sTipoObra'];
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  sPernocta := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                  BitacoradePersonal.Append;
                  BitacoradePersonal.FieldByName('sIdPlataforma').asString    := QyrPersonalAnterior.FieldByName('sIdPlataforma').AsString;
                  BitacoradePersonal.FieldByName('sIdPersonal').AsString      := QyrPersonalAnterior.FieldByName('sIdPersonal').AsString;
                  BitacoradePersonal.FieldByName('dCantidad').asFloat         := QyrPersonalAnterior.FieldByName('dCantidad').AsFloat ;
                  BitacoradePersonal.FieldByName('sIdPernocta').AsString      := QyrPersonalAnterior.FieldByName('sIdPernocta').AsString;
                  BitacoradePersonal.FieldByName('sTipopernocta').AsString    := QyrPersonalAnterior.FieldByName('sTipoPernocta').AsString;
                  BitacoradePersonal.FieldByName('sTipoObra').AsString        := QyrPersonalAnterior.FieldByName('sTipoObra').AsString ;
                  BitacoradePersonal.FieldByName('lAplicaPernocta').AsString  := QyrPersonalAnterior.FieldByName('lAplicaPernocta').AsString;
                  BitacoradePersonal.FieldByName('sDescripcion').AsString     := QyrPersonalAnterior.FieldByName('sDescripcion').AsString;

                  BitacoradePersonal.Post;
                end;
                QyrPersonalAnterior.Next
              end
            end
            else
              dFecha := dFecha - 1
          end;
          if not lEventoRealizado then
            MessageDlg('No se encontraron registros de personal en los ' + inttostr(global_dias) + ' anteriores, modifique su configuracion o inserte manualmente el personal.', mtWarning, [mbOk], 0)
          else
          begin
            BitacoradePersonal.Active := False;
            BitacoradePersonal.Open;
          end
        end;

        sumadepersonal ;
        if MessageDlg('Desea adicionar todo el equipo existente en el reporte anterior?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          dFecha := tdIdFecha.Date - 1;
          if global_dias = 0 then
            global_dias := 10;
          lEventoRealizado := False;
          while (dFecha >= (tdIdFecha.Date - global_dias)) and not lEventoRealizado do
          begin
            QyrPersonalAnterior.Active := False;
            QyrPersonalAnterior.SQL.Clear;
            QyrPersonalAnterior.SQL.Add('Select bp.sTipoObra, bp.sIdPernocta, bp.sIdEquipo, Sum(bp.dCantidad) as dCantidad From bitacoradeequipos bp ' +
              'INNER JOIN bitacoradeactividades b ON (bp.sContrato = b.sContrato And bp.dIdFecha = b.dIdFecha And bp.iIdDiario = b.iIdDiario And b.sNumeroOrden = :Orden And b.sIdTurno = :Turno and b.sHoraInicio =:Inicio and b.sHoraFinal =:Final) ' +
              'Where bp.sContrato = :Contrato And bp.dIdFecha = :Fecha Group By  bp.sIdPernocta, bp.sIdEquipo Order By bp.sIdEquipo');
            QyrPersonalAnterior.Params.ParamByName('contrato').asString  := param_global_Contrato;
            QyrPersonalAnterior.Params.ParamByName('Orden').asString     := tsNumeroOrden.Text;
            QyrPersonalAnterior.Params.ParamByName('fecha').asDate       := dFecha;
            QyrPersonalAnterior.Params.ParamByName('Turno').asString     := global_turno_reporte;
            QyrPersonalAnterior.Params.ParamByName('Inicio').asString    := QryBitacora.FieldValues['sHoraInicio'];
            QyrPersonalAnterior.Params.ParamByName('Final').asString     := QryBitacora.FieldValues['sHoraFinal'];
            QyrPersonalAnterior.Open;
            if QyrPersonalAnterior.RecordCount > 0 then
            begin
              lEventoRealizado := True;
              QyrPersonalAnterior.First;
              while not QyrPersonalAnterior.Eof do
              begin
                connection.qryBusca.Active := False;
                connection.qryBusca.SQL.Clear;
                connection.qryBusca.SQL.Add('Select dCantidad from bitacoradeequipos where sContrato = :contrato And dIdFecha = :Fecha '+
                       'And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo and sTipoObra =:Tipo ');
                connection.qryBusca.Params.ParamByName('contrato').asString := param_global_contrato;
                connection.qryBusca.Params.ParamByName('fecha').asDate      := tdIdFecha.Date;
                connection.qryBusca.Params.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
                connection.qryBusca.Params.ParamByName('Pernocta').asString := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                connection.qryBusca.Params.ParamByName('Equipo').asString   := QyrPersonalAnterior.FieldValues['sIdEquipo'];
                connection.qryBusca.Params.ParamByName('Tipo').asString     := QyrPersonalAnterior.FieldValues['sTipoObra'];
                connection.qryBusca.Open;
                if connection.qryBusca.RecordCount > 0 then
                begin
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacoradeequipos SET dCantidad = :Cantidad WHERE ' +
                    'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo and sTipoObra =:Tipo ');
                  connection.zCommand.Params.ParamByName('contrato').asString := param_global_contrato;
                  connection.zCommand.Params.ParamByName('fecha').asDate      := tdIdFecha.Date;
                  connection.zCommand.Params.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
                  connection.zCommand.Params.ParamByName('Pernocta').asString := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                  connection.zCommand.Params.ParamByName('Equipo').asString   := QyrPersonalAnterior.FieldValues['sIdEquipo'];
                  connection.zCommand.Params.ParamByName('Cantidad').asFloat   := connection.qryBusca.FieldValues['dCantidad'] + QyrPersonalAnterior.FieldValues['dCantidad'];
                  connection.zCommand.Params.ParamByName('Tipo').asString     := QyrPersonalAnterior.FieldValues['sTipoObra'];
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  bitacoradeEquipos.Append;
                  BitacoradeEquipos.FieldValues['sIdPernocta'] := QyrPersonalAnterior.FieldValues['sIdPernocta'];
                  BitacoradeEquipos.FieldValues['sIdEquipo']   := QyrPersonalAnterior.FieldValues['sIdEquipo'];
                  BitacoradeEquipos.FieldValues['dCantidad']   := QyrPersonalAnterior.FieldValues['dCantidad'];
                  BitacoradeEquipos.FieldValues['sTipoObra']   := QyrPersonalAnterior.FieldValues['sTipoObra'];
                  BitacoradeEquipos.FieldValues['iItemOrden']  := 0;
                  bitacoradeEquipos.Post;
                end;
                QyrPersonalAnterior.Next
              end
            end
            else
              dFecha := dFecha - 1
          end;
          if not lEventoRealizado then
            MessageDlg('No se encontraron registros de personal en los ' + inttostr(global_dias) + ' anteriores, modifique su configuracion o inserte manualmente el personal.', mtWarning, [mbOk], 0)
          else
          begin
            BitacoradeEquipos.Active := False;
            BitacoradeEquipos.Open;
          end  ;
        end    ;

     {Ahora Importamos el Material de un dia anterior}
      if MessageDlg('Desea adicionar todo el material existente en el reporte anterior?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          dFecha := tdIdFecha.Date - 1;
          if global_dias = 0 then
            global_dias := 10;
          lEventoRealizado := False;
          while (dFecha >= (tdIdFecha.Date - global_dias)) and not lEventoRealizado do
          begin
            QyrPersonalAnterior.Active := False;
            QyrPersonalAnterior.SQL.Clear;
            QyrPersonalAnterior.SQL.Add('Select bm.sDescripcion, bm.sIdMaterial, Sum(bm.dCantidad) as dCantidad From bitacorademateriales bm '+
                                        'INNER JOIN bitacoradeactividades b ON (bm.sContrato = b.sContrato And bm.dIdFecha = b.dIdFecha '+
                                        'And bm.iIdDiario = b.iIdDiario And b.sNumeroOrden =:Orden And b.sIdTurno =:Turno ) '+
                                        'Where bm.sContrato =:Contrato And bm.dIdFecha =:fecha Group By  bm.sIdMaterial Order By bm.sIdMaterial ');
            QyrPersonalAnterior.Params.ParamByName('Contrato').AsString := param_global_Contrato;
            QyrPersonalAnterior.Params.ParamByName('Orden').AsString    := tsNumeroOrden.Text;
            QyrPersonalAnterior.Params.ParamByName('Fecha').asDate      := dFecha;
            QyrPersonalAnterior.Params.ParamByName('Turno').AsString    := global_turno_reporte;
            QyrPersonalAnterior.Open;
            if QyrPersonalAnterior.RecordCount > 0 then
            begin
              lEventoRealizado := True;
              QyrPersonalAnterior.First;
              while not QyrPersonalAnterior.Eof do
              begin
                connection.qryBusca.Active := False;
                connection.qryBusca.SQL.Clear;
                connection.qryBusca.SQL.Add('Select dCantidad from bitacorademateriales where sContrato = :contrato And dIdFecha = :Fecha '+
                       'And iIdDiario = :Diario And sIdMaterial = :Material  ');
                connection.qryBusca.Params.ParamByName('contrato').AsString := param_global_contrato;
                connection.qryBusca.Params.ParamByName('fecha').AsDate      := tdIdFecha.Date;
                connection.qryBusca.Params.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
                connection.qryBusca.Params.ParamByName('Material').AsString := QyrPersonalAnterior.FieldByName('sIdMaterial').AsString ;
                connection.qryBusca.Open;
                if connection.qryBusca.RecordCount > 0 then
                begin
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacorademateriales SET dCantidad = :Cantidad WHERE ' +
                    'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And sIdMaterial = :Material ');
                  connection.zCommand.Params.ParamByName('contrato').AsString  := param_global_contrato;
                  connection.zCommand.Params.ParamByName('fecha').asDate       := tdIdFecha.Date;
                  connection.zCommand.Params.ParamByName('Diario').AsInteger   := QryBitacora.FieldValues['iIdDiario'];
                  connection.zCommand.Params.ParamByName('Material').AsString  := QyrPersonalAnterior.FieldByName('sIdMaterial').AsString ;
                  connection.zCommand.Params.ParamByName('Cantidad').AsFloat   := connection.qryBusca.FieldValues['dCantidad'] + QyrPersonalAnterior.FieldValues['dCantidad'];
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  bitacorademateriales.Append;
                  bitacorademateriales.FieldByName('sIdMaterial').AsString   := QyrPersonalAnterior.FieldByName('sIdMaterial').AsString;
                  bitacorademateriales.FieldByName('dCantidad').AsFloat      := QyrPersonalAnterior.FieldByName('dCantidad').asFloat ;
                  bitacorademateriales.FieldByName('sDescripcion').AsString  := QyrPersonalAnterior.FieldByName('sDescripcion').AsString;
                  bitacorademateriales.Post;
                end;
                QyrPersonalAnterior.Next
              end
            end
            else
              dFecha := dFecha - 1
          end;
          if not lEventoRealizado then
            MessageDlg('No se encontraron registros de materiales en los ' + inttostr(global_dias) + ' anteriores, modifique su configuracion o inserte manualmente el material.', mtWarning, [mbOk], 0)
          else
           begin
             bitacorademateriales.Active := False;
             bitacorademateriales.Open;
           end
        end

      end;
    QyrPersonalAnterior.Destroy;
  end
  else
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
siEntra := 'YASALIO'  ;
end;
{$ENDREGION}

{$REGION 'Cargar Esto que hace'}
procedure TfrmBitacora2.CargarPEMxPartidaClick(Sender: TObject);
var
  dFecha: tDate;
  lEventoRealizado: boolean;
  qryDiaAnterior: tzReadOnlyquery;
begin
  if QryBitacora.FieldValues['sWbs'] = '' then
    exit;

  if lBorra then
  begin
    qryDiaAnterior := tzReadOnlyQuery.Create(Self);
    qryDiaAnterior.Connection := connection.zConnection;
    if QryBitacora.RecordCount > 0 then
      if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      begin
        if MessageDlg('Desea Adicionar el personal existente de la Partida ' + QryBitacora.FieldValues['sNumeroActividad'] + ' en el reporte anterior?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          dFecha := tdIdFecha.Date - 1;
          if global_dias = 0 then
            global_dias := 10;

          lEventoRealizado := False;
          while (dFecha >= (tdIdFecha.Date - global_dias)) and not lEventoRealizado do
          begin
            qryDiaAnterior.Active := False;
            qryDiaAnterior.SQL.Clear;
            qryDiaAnterior.SQL.Add('Select bp.* From bitacoradepersonal bp INNER JOIN bitacoradeactividades b ON ' +
              '(bp.sContrato = b.sContrato And bp.dIdFecha = b.dIdFecha And bp.iIdDiario = b.iIdDiario And ' +
              'b.sNumeroOrden = :Orden And b.sIdTurno = :Turno and b.sWbs =:Wbs ) ' +
              'Where bp.sContrato = :Contrato And bp.dIdFecha = :Fecha Order By bp.sIdPersonal');
            qryDiaAnterior.Params.ParamByName('contrato').asString := param_global_Contrato;
            qryDiaAnterior.Params.ParamByName('Orden').asString    := tsNumeroOrden.Text;
            qryDiaAnterior.Params.ParamByName('fecha').asDate      := dFecha;
            qryDiaAnterior.Params.ParamByName('Turno').asString    := global_turno_reporte;
            qryDiaAnterior.Params.ParamByName('Wbs').asString      := QryBitacora.FieldValues['sWbs'];
            qryDiaAnterior.Open;

            if qryDiaAnterior.RecordCount > 0 then
            begin
              lEventoRealizado := True;
              qryDiaAnterior.First;
              while not qryDiaAnterior.Eof do
              begin
                                // Checo si ya existe ....
                connection.qryBusca.Active := False;
                connection.qryBusca.SQL.Clear;
                connection.qryBusca.SQL.Add('Select dCantidad from bitacoradepersonal where sContrato = :contrato And dIdFecha = :Fecha And ' +
                  'iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdPlataforma = :Plataforma And sIdPersonal = :Personal');
                connection.qryBusca.Params.ParamByName('contrato').asString   := param_global_contrato;
                connection.qryBusca.Params.ParamByName('fecha').asDate        := tdIdFecha.Date;
                connection.qryBusca.Params.ParamByName('Diario').Value        := QryBitacora.FieldValues['iIdDiario'];
                connection.qryBusca.Params.ParamByName('Pernocta').asString   := qryDiaAnterior.FieldValues['sIdPernocta'];
                connection.qryBusca.Params.ParamByName('plataforma').asString := qryDiaAnterior.FieldValues['sIdPlataforma'];
                connection.qryBusca.Params.ParamByName('Personal').asString   := qryDiaAnterior.FieldValues['sIdPersonal'];
                connection.qryBusca.Open;
                if connection.qryBusca.RecordCount > 0 then
                begin
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacoradepersonal SET dCantidad = :Cantidad WHERE ' +
                    'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And ' +
                    'sIdPernocta = :Pernocta And sIdPlataforma = :Plataforma And sIdPersonal = :Personal');
                  connection.zCommand.Params.ParamByName('contrato').asString   := param_global_contrato;
                  connection.zCommand.Params.ParamByName('fecha').asDate        := tdIdFecha.Date;
                  connection.zCommand.Params.ParamByName('Diario').AsInteger    := QryBitacora.FieldValues['iIdDiario'];
                  connection.zCommand.Params.ParamByName('Pernocta').asString   := qryDiaAnterior.FieldValues['sIdPernocta'];
                  connection.zCommand.Params.ParamByName('Plataforma').asString := qryDiaAnterior.FieldValues['sIdPlataforma'];
                  connection.zCommand.Params.ParamByName('Personal').asString   := qryDiaAnterior.FieldValues['sIdPersonal'];
                  connection.zCommand.Params.ParamByName('Cantidad').AsFloat    := connection.qryBusca.FieldValues['dCantidad'] + qryDiaAnterior.FieldValues['dCantidad'];
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  BitacoradePersonal.Append;
                  BitacoradePersonal.FieldValues['sIdPlataforma'] := qryDiaAnterior.FieldValues['sIdPlataforma'];
                  BitacoradePersonal.FieldValues['sIdPersonal']   := qryDiaAnterior.FieldValues['sIdPersonal'];
                  BitacoradePersonal.FieldValues['dCantidad']     := qryDiaAnterior.FieldValues['dCantidad'];
                  BitacoradePersonal.FieldValues['sIdPernocta']   := qryDiaAnterior.FieldValues['sIdPernocta'];
                  BitacoradePersonal.FieldValues['sTipopernocta'] := qryDiaAnterior.FieldValues['sTipoPernocta'];
                  BitacoradePersonal.Post;
                end;
                qryDiaAnterior.Next
              end
            end
            else
              dFecha := dFecha - 1
          end;
          if not lEventoRealizado then
            MessageDlg('No se encontraron registros de personal para la Partida ' + QryBitacora.FieldValues['sNumeroActividad'] + ' en los ' + inttostr(global_dias) + ' anteriores, modifique su configuracion o inserte manualmente el personal.', mtWarning, [mbOk], 0)
          else
          begin
            BitacoradePersonal.Active := False;
            BitacoradePersonal.Open;
          end
        end;

        sumadepersonal ;
        if MessageDlg('Desea adicionar todo el equipo de la Partida ' + QryBitacora.FieldValues['sNumeroActividad'] + ' existente en el reporte anterior?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          dFecha := tdIdFecha.Date - 1;
          if global_dias = 0 then
            global_dias := 10;

          lEventoRealizado := False;
          while (dFecha >= (tdIdFecha.Date - global_dias)) and not lEventoRealizado do
          begin
            qryDiaAnterior.Active := False;
            qryDiaAnterior.SQL.Clear;
            qryDiaAnterior.SQL.Add('Select bp.sIdPernocta, bp.sIdEquipo, Sum(bp.dCantidad) as dCantidad From bitacoradeequipos bp ' +
              'INNER JOIN bitacoradeactividades b ON (bp.sContrato = b.sContrato And bp.dIdFecha = b.dIdFecha And bp.iIdDiario = b.iIdDiario and sWbs =:Wbs And b.sNumeroOrden = :Orden And b.sIdTurno = :Turno) ' +
              'Where bp.sContrato = :Contrato And bp.dIdFecha = :Fecha Group By  bp.sIdPernocta, bp.sIdEquipo Order By bp.sIdEquipo');
            qryDiaAnterior.Params.ParamByName('contrato').asString := param_global_Contrato;
            qryDiaAnterior.Params.ParamByName('Orden').asString    := tsNumeroOrden.Text;
            qryDiaAnterior.Params.ParamByName('fecha').asDate      := dFecha;
            qryDiaAnterior.Params.ParamByName('Turno').asString    := global_turno_reporte;
            qryDiaAnterior.Params.ParamByName('Wbs').asString      := QryBitacora.FieldValues['sWbs'];
            qryDiaAnterior.Open;

            if qryDiaAnterior.RecordCount > 0 then
            begin
              lEventoRealizado := True;
              qryDiaAnterior.First;
              while not qryDiaAnterior.Eof do
              begin
                connection.qryBusca.Active := False;
                connection.qryBusca.SQL.Clear;
                connection.qryBusca.SQL.Add('Select dCantidad from bitacoradeequipos where sContrato = :contrato And dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');

                connection.qryBusca.Params.ParamByName('contrato').asString := param_global_contrato;
                connection.qryBusca.Params.ParamByName('fecha').asDate      := tdIdFecha.Date;
                connection.qryBusca.Params.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
                connection.qryBusca.Params.ParamByName('Pernocta').asString := qryDiaAnterior.FieldValues['sIdPernocta'];
                connection.qryBusca.Params.ParamByName('Equipo').asString   := qryDiaAnterior.FieldValues['sIdEquipo'];
                connection.qryBusca.Open;
                if connection.qryBusca.RecordCount > 0 then
                begin
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacoradeequipos SET dCantidad = :Cantidad WHERE ' +
                    'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
                  connection.zCommand.Params.ParamByName('contrato').asString := param_global_contrato;
                  connection.zCommand.Params.ParamByName('fecha').asDate      := tdIdFecha.Date;
                  connection.zCommand.Params.ParamByName('Diario').asInteger  := QryBitacora.FieldValues['iIdDiario'];
                  connection.zCommand.Params.ParamByName('Pernocta').asString := qryDiaAnterior.FieldValues['sIdPernocta'];
                  connection.zCommand.Params.ParamByName('Equipo').asString   := qryDiaAnterior.FieldValues['sIdEquipo'];
                  connection.zCommand.Params.ParamByName('Cantidad').asFloat  := connection.qryBusca.FieldValues['dCantidad'] + qryDiaAnterior.FieldValues['dCantidad'];
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  bitacoradeEquipos.Append;
                  BitacoradeEquipos.FieldValues['sIdPernocta'] := qryDiaAnterior.FieldValues['sIdPernocta'];
                  BitacoradeEquipos.FieldValues['sIdEquipo'] := qryDiaAnterior.FieldValues['sIdEquipo'];
                  BitacoradeEquipos.FieldValues['dCantidad'] := qryDiaAnterior.FieldValues['dCantidad'];
                  bitacoradeEquipos.Post;
                end;
                qryDiaAnterior.Next
              end
            end
            else
              dFecha := dFecha - 1
          end;
          if not lEventoRealizado then
            MessageDlg('No se encontraron registros de Equipos de la Partida ' + QryBitacora.FieldValues['sNumeroActividad'] + ' en los ' + inttostr(global_dias) + ' anteriores, modifique su configuracion o inserte manualmente el Equipo.', mtWarning, [mbOk], 0)
          else
          begin
            BitacoradeEquipos.Active := False;
            BitacoradeEquipos.Open;
          end;
        end;

               //Materiales...
        if MessageDlg('Desea adicionar todo el material de la Partida ' + QryBitacora.FieldValues['sNumeroActividad'] + ' existente en el reporte anterior?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          dFecha := tdIdFecha.Date - 1;
          if global_dias = 0 then
            global_dias := 10;

          lEventoRealizado := False;
          while (dFecha >= (tdIdFecha.Date - global_dias)) and not lEventoRealizado do
          begin
            qryDiaAnterior.Active := False;
            qryDiaAnterior.SQL.Clear;
            qryDiaAnterior.SQL.Add('Select bp.sIdMaterial, bp.dCantidad From bitacorademateriales bp ' +
              'INNER JOIN bitacoradeactividades b ON (bp.sContrato = b.sContrato And bp.dIdFecha = b.dIdFecha And bp.iIdDiario = b.iIdDiario and b.sWbs =:Wbs And b.sNumeroOrden = :Orden And b.sIdTurno = :Turno) ' +
              'Where bp.sContrato = :Contrato And bp.dIdFecha = :Fecha Order by bp.sIdMaterial ');
            qryDiaAnterior.Params.ParamByName('contrato').asString := param_global_Contrato;
            qryDiaAnterior.Params.ParamByName('Orden').asString    := tsNumeroOrden.Text;
            qryDiaAnterior.Params.ParamByName('fecha').asDate      := dFecha;
            qryDiaAnterior.Params.ParamByName('Turno').asString    := global_turno_reporte;
            qryDiaAnterior.Params.ParamByName('Wbs').asString      := QryBitacora.FieldValues['sWbs'];
            qryDiaAnterior.Open;

            if qryDiaAnterior.RecordCount > 0 then
            begin
              lEventoRealizado := True;
              qryDiaAnterior.First;
              while not qryDiaAnterior.Eof do
              begin
                connection.qryBusca.Active := False;
                connection.qryBusca.SQL.Clear;
                connection.qryBusca.SQL.Add('Select dCantidad from bitacorademateriales where sContrato = :contrato And dIdFecha = :Fecha And iIdDiario = :Diario And sIdMaterial = :Material and sWbs =:Wbs ');
                connection.qryBusca.Params.ParamByName('contrato').asString := param_global_contrato;
                connection.qryBusca.Params.ParamByName('fecha').asDate      := tdIdFecha.Date;
                connection.qryBusca.Params.ParamByName('Diario').Value      := QryBitacora.FieldValues['iIdDiario'];
                connection.qryBusca.Params.ParamByName('Wbs').asString      := QryBitacora.FieldValues['sWbs'];
                connection.qryBusca.Params.ParamByName('Material').asString := qryDiaAnterior.FieldValues['sIdMaterial'];
                connection.qryBusca.Open;
                if connection.qryBusca.RecordCount > 0 then
                begin
                  connection.zCommand.Active := False;
                  connection.zCommand.SQL.Clear;
                  connection.zCommand.SQL.Add('UPDATE bitacorademateriales SET dCantidad = :Cantidad WHERE ' +
                    'sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And sWbs =:Wbs And sIdMaterial = :Material');
                  connection.zCommand.Params.ParamByName('contrato').asString := param_global_contrato;
                  connection.zCommand.Params.ParamByName('fecha').asDate      := tdIdFecha.Date;
                  connection.zCommand.Params.ParamByName('Diario').asInteger  := QryBitacora.FieldValues['iIdDiario'];
                  connection.zCommand.Params.ParamByName('Wbs').asString      := QryBitacora.FieldValues['sWbs'];
                  connection.zCommand.Params.ParamByName('Material').asString := qryDiaAnterior.FieldValues['sIdMaterial'];
                  connection.zCommand.Params.ParamByName('Cantidad').asFloat  := connection.qryBusca.FieldValues['dCantidad'] + qryDiaAnterior.FieldValues['dCantidad'];
                  connection.zCommand.ExecSQL;
                end
                else
                begin
                  bitacorademateriales.Append;
                  bitacorademateriales.FieldValues['sIdMaterial'] := qryDiaAnterior.FieldValues['sIdMaterial'];
                  bitacorademateriales.FieldValues['dCantidad'] := qryDiaAnterior.FieldValues['dCantidad'];
                  bitacorademateriales.Post;
                end;
                qryDiaAnterior.Next
              end
            end
            else
              dFecha := dFecha - 1
          end;
          if not lEventoRealizado then
            MessageDlg('No se encontraron registros de Materiales de la Partida ' + QryBitacora.FieldValues['sNumeroActividad'] + ' en los ' + inttostr(global_dias) + ' anteriores, modifique su configuracion o inserte manualmente el Material.', mtWarning, [mbOk], 0)
          else
          begin
            bitacorademateriales.Active := False;
            bitacorademateriales.Open;
          end
        end
      end;
    qryDiaAnterior.Destroy;
  end
  else
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
end;
procedure TfrmBitacora2.col_descripcionPropertiesChange(Sender: TObject);
begin

end;

{$ENDREGION}

procedure TfrmBitacora2.BitacoradePersonalAfterDelete(DataSet: TDataSet);
begin
  sumadepersonal ;
end;

procedure TfrmBitacora2.BitacoradePersonalAfterInsert(DataSet: TDataSet);
begin
  if lBorra = True then
    if QryBitacora.RecordCount > 0 then
      if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      begin

         BitacoradePersonal.FieldByName('dIdFecha').AsDateTime       := tdIdFecha.Date;
         BitacoradePersonal.FieldByName('sContrato').asString        := param_Global_Contrato;
         BitacoradePersonal.FieldByName('iIdDiario').asInteger       := QryBitacora.FieldValues['iIdDiario'];
         BitacoradePersonal.FieldByName('dCantidad').asFloat         :=  0;
         BitacoradePersonal.FieldByName('sHoraInicio').asString      := '00:00';
         BitacoradePersonal.FieldByName('sHoraFinal').AsString       := '00:00';
         BitacoradePersonal.FieldByName('sFactor').AsString          := '';
         BitacoradePersonal.FieldByName('dCostoMN').AsFloat          := 0;
         BitacoradePersonal.FieldByName('dCostoDLL').AsFloat         := 0;
         BitacoradePersonal.FieldByName('lAplicaPernocta').AsString  := 'Si';
         BitacoradePersonal.FieldByName('sHoraInicio').AsString      := QryBitacora.FieldValues['sHoraInicio'];
         BitacoradePersonal.FieldByName('sHoraFinal').AsString       := QryBitacora.FieldValues['sHoraFinal'];
         BitacoradePersonal.FieldByName('sTipoObra').AsString        := 'CO';
         BitacoradePersonal.FieldByName('dSolicitado').AsFloat       := 0 ;
         BitacoradePersonal.FieldByName('sTipoPernocta').AsString    := '1' ;
         BitacoradePersonal.FieldValues['iItemOrden']                := 0;
         BitacoradePersonal.FieldValues['sAgrupaPersonal']           := '*';
        if sPernocta = '' then
          if connection.configuracion.FieldValues['sIdPernocta'] = '' then
            bitacoradePersonal.FieldValues['sIdPernocta'] := OrdenesdeTrabajo.FieldValues['sIdPernocta']
          else
            bitacoradePersonal.FieldValues['sIdPernocta'] := connection.configuracion.FieldValues['sIdPernocta']
        else
          bitacoradePersonal.FieldValues['sIdPernocta'] := sPernocta;

        if sPlataforma = '' then
          BitacoradePersonal.FieldValues['sIdPlataforma'] := OrdenesdeTrabajo.FieldValues['sIdPlataforma']
        else
          BitacoradePersonal.FieldValues['sIdPlataforma'] := sPlataforma;
      end
      else
        BitacoradePersonal.Cancel
    else
      BitacoradePersonal.Cancel
  else
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    BitacoradePersonal.Cancel
  end;

  Indicar := 1;

end;



procedure TfrmBitacora2.BitacoradePersonalAfterPost(DataSet: TDataSet);
begin
 SumadePersonal ;
end;

procedure TfrmBitacora2.EliminarPerEqClick(Sender: TObject);
begin
  if lBorra then
  begin
    if (QryBitacora.RecordCount > 0) then
      if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      begin
        if MessageDlg('Desea Eliminar todo el Personal asignado?',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Delete from bitacoradepersonal where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
          connection.zCommand.Params.ParamByName('contrato').asString := param_Global_Contrato;
          connection.zCommand.Params.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
          connection.zCommand.Params.ParamByName('diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
          connection.zCommand.ExecSQL;
          BitacoradePersonal.Active := False;
          BitacoradePersonal.Open;
          tdTotalPersonal.Value := 0;
        end;
        if MessageDlg('Desea Eliminar todo el Equipo asignado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('Delete from bitacoradeequipos where sContrato = :contrato and dIdFecha = :fecha and iIdDiario = :diario');
          connection.zCommand.Params.ParamByName('contrato').asString := param_Global_Contrato;
          connection.zCommand.Params.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
          connection.zCommand.Params.ParamByName('diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
          connection.zCommand.ExecSQL;
          BitacoradeEquipos.Active := False;
          BitacoradeEquipos.Open;
        end
      end
  end
  else
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
end;


procedure TfrmBitacora2.Refresh1Click(Sender: TObject);
var
  qryPaquetes: tzReadOnlyQuery;
begin
  sPernocta := '';
  sPlataforma := '';

  tsPaquete.Items.Clear;
  qryPaquetes := tzReadOnlyQuery.Create(self);
  qryPaquetes.Connection := connection.zConnection;
  qryPaquetes.Active := False;
  qryPaquetes.SQL.Clear;
  qryPaquetes.SQL.Add('select sNumeroPaquete from paquetes_p Where sContrato = :contrato order by sNumeroPaquete DESC');
  qryPaquetes.Params.ParamByName('contrato').asString := param_global_contrato;
  qryPaquetes.Open;
  while not qryPaquetes.Eof do
  begin
    tsPaquete.Items.Add(qryPaquetes.FieldValues['sNumeroPaquete']);
    qryPaquetes.Next
  end;

  tsPaqueteEquipo.Items.Clear;
  qryPaquetes.Active := False;
  qryPaquetes.SQL.Clear;
  qryPaquetes.SQL.Add('select sNumeroPaquete from paquetes_e Where sContrato = :contrato order by sNumeroPaquete DESC');
  qryPaquetes.Params.ParamByName('contrato').asString := param_global_contrato;
  qryPaquetes.Open;
  while not qryPaquetes.Eof do
  begin
    tsPaqueteEquipo.Items.Add(qryPaquetes.FieldValues['sNumeroPaquete']);
    qryPaquetes.Next
  end;
  qryPaquetes.Destroy;

  connection.configuracion.refresh;

  QryBitacora.Active := False;
  QryBitacora.Open;

  BitacoradePersonal.Active := False;
  BitacoradePersonal.Open;

  BitacoradeEquipos.Active := False;
  BitacoradeEquipos.Open;

  ordenesdetrabajo.Active := False;
  OrdenesdeTrabajo.Open;

  PernoctaPersonal.Active := False;
  PernoctaPersonal.Open;

  PernoctaEquipo.Active := False;
  PernoctaEquipo.Open;

  Plataformas.Active := False;
  Plataformas.Open;
end;

procedure TfrmBitacora2.Salir1Click(Sender: TObject);
begin
  Close
end;


procedure TfrmBitacora2.ComentariosAdicionalesalaPartida1Click(
  Sender: TObject);
begin
  global_partida := QryBitacora.FieldValues['sNumeroActividad'];
  Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
  frmComentariosxAnexo.show;
end;


procedure TfrmBitacora2.ActualizaCostosClick(Sender: TObject);
begin
  if lBorra then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE bitacoradepersonal b, Personal p SET b.dCostoMN = p.dCostoMN, b.dCostoDLL = p.dCostoDLL WHERE ' +
      'b.sContrato = p.sContrato AND b.sIdPersonal = p.sIdPersonal AND b.sContrato = :Contrato And b.dIdFecha = :Fecha');
    connection.zcommand.Params.ParamByName('contrato').asString := param_Global_Contrato;
    connection.zcommand.Params.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
    connection.zCommand.ExecSQL;

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('UPDATE bitacoradeequipos b, Equipos p SET b.dCostoMN = p.dCostoMN, b.dCostoDLL = p.dCostoDLL WHERE ' +
      'b.sContrato = p.sContrato AND b.sIdEquipo = p.sIdEquipo AND b.sContrato = :Contrato And b.dIdFecha = :Fecha');
    connection.zcommand.Params.ParamByName('contrato').asString := param_Global_Contrato;
    connection.zcommand.Params.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
    connection.zCommand.ExecSQL;

    BitacoradePersonal.Active := False;
    BitacoradePersonal.Open;

    BitacoradeEquipos.Active := False;
    BitacoradeEquipos.Open;
  end
  else
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
end;

procedure TfrmBitacora2.BitacoradePersonalBeforeDelete(DataSet: TDataSet);
begin
    {Continua proceso..}
  Categoria := BitacoradePersonal.FieldValues['sIdPersonal'];
 if lBorra = False then
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    Abort;
  end
end;


procedure TfrmBitacora2.BitacoradeEquiposBeforeDelete(DataSet: TDataSet);
begin
  if lBorra = False then
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    Abort;
  end
end;

procedure TfrmBitacora2.BitacoradeEquiposBeforePost(DataSet: TDataSet);
  begin
      If  siEntra <> 'CARGARDIAANTERIO' Then
         BitacoradeEquipos.FieldByName('sIdEquipo').AsString    := zqrEquipos.FieldByName('sIdEquipo').AsString ;
  end;

procedure TfrmBitacora2.BitacoradePersonalBeforePost(DataSet: TDataSet);
  begin
      If  siEntra <> 'CARGARDIAANTERIO' Then
        BitacoradePersonal.fieldByName('sIdPersonal').asString := zqrPersonal.fieldByname('sIdPersonal').asString ;
  end;


procedure TfrmBitacora2.BorrarlasCategoriasen01Click(Sender: TObject);
begin
  if MessageDlg('Desea eliminar las Categorias de Personal en 0 ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('DELETE FROM bitacoradepersonal Where sContrato = :contrato ' +
      ' and iIdDiario = :diario and dCantidad=0 ');
    connection.zCommand.Params.ParamByName('Contrato').AsString  := param_Global_Contrato;
    connection.zCommand.Params.ParamByName('diario').AsInteger   := QryBitacora.FieldValues['iIdDiario'];
    connection.zCommand.ExecSQL();
    bitacoradepersonal.Refresh;
  end;

  if MessageDlg('Desea eliminar las Categorias de Equipo en 0 ?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('DELETE FROM bitacoradeequipos Where sContrato = :contrato ' +
      ' and iIdDiario = :diario and dCantidad=0 ');
    connection.zCommand.Params.ParamByName('Contrato').asString := param_Global_Contrato;
    connection.zCommand.Params.ParamByName('diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
    connection.zCommand.ExecSQL();
    bitacoradeequipos.Refresh;
  end;


end;

procedure TfrmBitacora2.BitacoradePersonalAfterEdit(DataSet: TDataSet);
begin
  if lBorra = True then
  begin
    if BitacoradePersonal.RecordCount = 0 then
      BitacoradePersonal.Cancel
    else
      if (QryBitacora.FieldValues['sIdTurno'] <> global_turno_reporte) then
        BitacoradePersonal.Cancel
  end
  else
  begin
    BitacoradePersonal.Cancel;
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
  end
end;


procedure TfrmBitacora2.BitacoradeEquiposAfterEdit(DataSet: TDataSet);
begin
  if lBorra = True then
  begin
    if BitacoradePersonal.RecordCount = 0 then
      BitacoradePersonal.Cancel
    else
      if (QryBitacora.FieldValues['sIdTurno'] <> global_turno_reporte) then
        BitacoradePersonal.Cancel
  end
  else
  begin
    BitacoradePersonal.Cancel;
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
  end;



end;

procedure TfrmBitacora2.BitacoradeEquiposAfterInsert(DataSet: TDataSet);
begin
  if lBorra = True then
    if QryBitacora.RecordCount > 0 then
      if (QryBitacora.FieldValues['sIdTurno'] = global_turno_reporte) then
      begin
        BitacoradeEquipos.FieldByName('dIdFecha').AsDateTime  := tdIdFecha.Date;
        BitacoradeEquipos.FieldByName('sContrato').AsString   := param_Global_Contrato;
        BitacoradeEquipos.FieldByName('iIdDiario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
        BitacoradeEquipos.FieldByName('dCantidad').AsInteger  := 0;
        BitacoradeEquipos.FieldByName('sHoraInicio').AsString := '00:00';
        BitacoradeEquipos.FieldByName('sHoraFinal').AsString  := '00:00';
        BitacoradeEquipos.FieldByName('sFactor').AsString     := '';
        BitacoradeEquipos.FieldByName('dCostoMN').AsFloat     := 0;
        BitacoradeEquipos.FieldByName('dCostoDLL').AsFloat    := 0;
        BitacoradeEquipos.FieldByName('dSolicitado').AsFloat  := 0;

        if sPernocta = '' then
          if connection.configuracion.FieldValues['sIdPernocta'] = '' then
            BitacoradeEquipos.FieldValues['sIdPernocta'] := OrdenesdeTrabajo.FieldValues['sIdPernocta']
          else
            BitacoradeEquipos.FieldValues['sIdPernocta'] := connection.configuracion.FieldValues['sIdPernocta']
        else
          BitacoradeEquipos.FieldValues['sIdPernocta'] := sPernocta;
      end
      else
        BitacoradePersonal.Cancel
    else
      BitacoradePersonal.Cancel
  else
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    BitacoradePersonal.Cancel
  end;
end;


procedure TfrmBitacora2.BitacoradeEquiposAfterPost(DataSet: TDataSet);
begin
 sumadeequipos() ;
end;

procedure TfrmBitacora2.BitacoradeEquipossIdEquipoChange(Sender: TField);
var
  sDescripcion: string;
  { 20/feb/2012: adal, distinguir si es vigencia diaria o consolidada }
  sTipoVigencia: string;
  qry: TZReadOnlyQuery;

begin
  qry := TZReadOnlyQuery.Create(nil);
  qry.Connection := Connection.zConnection;

  { 20/feb/2012: adal, obtener el tipo de vigencia}

  //Para las Programadas
  if (Global_Optativa = 'PROGRAMADA') or (Global_Equipo = 'No') then
  begin
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('select iItemOrden, sDescripcion, dCostoDLL, dCostoMN from equipos where sContrato = :Contrato and sIdEquipo = :Equipo');
    Connection.qryBusca.Params.ParamByName('Contrato').AsString  := param_global_contrato;
    Connection.qryBusca.Params.ParamByName('Equipo').AsString    := BitacoradeEquipossIdEquipo.Text;
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    begin
      BitacoradeEquipos.FieldValues['dCostoMN']     := Connection.qryBusca.FieldValues['dCostoMN'];
      BitacoradeEquipos.FieldValues['dCostoDLL']    := Connection.qryBusca.FieldValues['dCostoDLL'];
      BitacoradeEquipos.FieldValues['sDescripcion'] := Connection.qryBusca.FieldValues['sDescripcion'];
      BitacoradeEquipos.FieldValues['iItemOrden']   := Connection.qryBusca.FieldValues['iItemOrden'];
    end

  end;
end;

procedure TfrmBitacora2.bitacoradematerialesAfterEdit(DataSet: TDataSet);
begin
  if lBorra = True then
  begin
    if bitacorademateriales.RecordCount = 0 then
      bitacorademateriales.Cancel
    else
      if (QryBitacora.FieldValues['sIdTurno'] <> global_turno_reporte) then
        bitacorademateriales.Cancel
  end
  else
  begin
    bitacorademateriales.Cancel;
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
  end;
end;

procedure TfrmBitacora2.bitacoradematerialesAfterInsert(DataSet: TDataSet);
begin
  if lBorra = True then
    if QryBitacora.RecordCount > 0 then
      begin
         bitacorademateriales.FieldByName('dIdFecha').AsDateTime    := tdIdFecha.Date;
         bitacorademateriales.FieldByName('sContrato').AsString     := param_Global_Contrato;
         bitacorademateriales.FieldByName('iIdDiario').AsInteger    := QryBitacora.FieldByName('iIdDiario').AsInteger ;
         bitacorademateriales.FieldByName('sWbs').AsString          := QryBitacora.FieldByName('sWbs').AsString ;
         bitacorademateriales.FieldByName('dCantidad').AsInteger    := 0  ;
         bitacorademateriales.FieldByName('sAnexo').AsString        := 'SIN ANEX0' ;
         bitacorademateriales.FieldByName('sTrazabilidad').AsString := 'SIN TRAZABILIDAD'  ;
      end
    else
      bitacorademateriales.Cancel
  else
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    bitacorademateriales.Cancel
  end
end;

procedure TfrmBitacora2.bitacoradematerialesBeforeDelete(DataSet: TDataSet);
begin
  if lBorra = False then
  begin
    MessageDlg('El reporte diario del dia seleccionado se encuentra en proceso de VALIDACIÓN/AUTORIZACIÓN por lo tanto no podra hacer modificaciones al dia seleccionado.', mtWarning, [mbOk], 0);
    Abort;
  end
end;

procedure TfrmBitacora2.bitacoradematerialesBeforePost(DataSet: TDataSet);
begin
  try
      bitacorademateriales.FieldByName('sMedida').AsString      := zqrmaterial.FieldByName('sMedida').AsString  ;
      bitacorademateriales.FieldByName('sIdMaterial').AsString  := zqrmaterial.FieldByName('sIdInsumo').AsString ;
      if BitacoradeMateriales.fieldbyName('dcantidad').asfloat = 0 then
      begin
        messageDLG('No se Aceptan Cantidades en 0', mtInformation, [mbOk], 0);
        BitacoradeMateriales.Cancel;
      end;
  except
    abort;
    MessageDlg('Ocurrio un error al Actualizar el registro.', mtInformation, [mbOk], 0);
  end;

end;

procedure TfrmBitacora2.btnPaqueteEquipoClick(Sender: TObject);
var
  sNumeroPaquete: string;
  lContinua: Boolean;
  QryPaquete: tZReadOnlyQuery;
begin
  if sPernocta = '' then
    if connection.configuracion.FieldValues['sIdPernocta'] = '' then
      sPernocta := OrdenesdeTrabajo.FieldValues['sIdPernocta']
    else
      sPernocta := connection.configuracion.FieldValues['sIdPernocta'];

  sNumeroPaquete := tsPaqueteEquipo.Text;

  if sNumeroPaquete <> '' then
  begin
    QryPaquete := tzReadOnlyQuery.Create(Self);
    QryPaquete.Connection := connection.zconnection;
        // por ultimo si es paquete normal
    QryPaquete.Active := False;
    QryPaquete.SQL.Clear;
    QryPaquete.SQL.Add('select p.sIdEquipo, p.dCantidad from paquetesdeequipo p ' +
      'inner join equipos e on (p.scontrato = e.sContrato and p.sIdEquipo = e.sIdEquipo) ' +
      'where p.sContrato = :contrato And p.sNumeroPaquete = :paquete order by p.sIdEquipo');
    QryPaquete.Params.ParamByName('contrato').asString := param_global_contrato;
    QryPaquete.Params.ParamByName('paquete').asString  := sNumeroPaquete;
    QryPaquete.Open;
    if QryPaquete.RecordCount > 0 then
    begin
      connection.qryBusca2.Active := False;
      connection.qryBusca2.SQL.Clear;
      connection.qryBusca2.SQL.Add('Select sIdPernocta from paquetes_p where sContrato = :contrato And sNumeroPaquete = :paquete');
      connection.qryBusca2.Params.ParamByName('contrato').asString := param_global_contrato;
      connection.qryBusca2.Params.ParamByName('paquete').asString  := sNumeroPaquete;
      connection.qryBusca2.Open;
      if connection.qryBusca2.RecordCount > 0 then
        if connection.qryBusca2.FieldValues['sIdPernocta'] <> '' then
          sPernocta := connection.qryBusca2.FieldValues['sIdPernocta'];

      QryPaquete.First;
      while not QryPaquete.Eof do
      begin
        connection.qryBusca.Active := False;
        connection.qryBusca.SQL.Clear;
        connection.qryBusca.SQL.Add('Select dCantidad from bitacoradeequipos where sContrato = :contrato And dIdFecha = :Fecha And ' +
          'iIdDiario = :Diario And sIdPernocta = :Pernocta And sIdEquipo = :Equipo');
        connection.qryBusca.Params.ParamByName('contrato').asString  := param_global_contrato;
        connection.qryBusca.Params.ParamByName('fecha').AsDate       := tdIdFecha.Date;
        connection.qryBusca.Params.ParamByName('Diario').AsInteger   := QryBitacora.FieldValues['iIdDiario'];
        connection.qryBusca.Params.ParamByName('Pernocta').asString  := sPernocta;
        connection.qryBusca.Params.ParamByName('Equipo').asString    := QryPaquete.FieldValues['sIdEquipo'];
        connection.qryBusca.Open;
        if connection.qryBusca.RecordCount > 0 then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('UPDATE bitacoradeequipos SET dCantidad = :Cantidad ' +
            'WHERE sContrato = :contrato and dIdFecha = :Fecha And iIdDiario = :Diario And ' +
            'sIdPernocta = :Pernocta And sIdEquipo = :Equipo');

          connection.zCommand.Params.ParamByName('contrato').asString    := param_global_contrato;
          connection.zCommand.Params.ParamByName('fecha').asDate      := tdIdFecha.Date;
          connection.zCommand.Params.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
          connection.zCommand.Params.ParamByName('Pernocta').asString := sPernocta;
          connection.zCommand.Params.ParamByName('Equipo').asString   := QryPaquete.FieldValues['sIdEquipo'];
          connection.zCommand.Params.ParamByName('Cantidad').asFloat  := connection.qryBusca.FieldValues['dCantidad'] + QryPaquete.FieldValues['dCantidad'];
          connection.zCommand.ExecSQL;
        end
        else
        begin
          BitacoradeEquipos.Append;
          BitacoradeEquipos.FieldValues['sIdEquipo'] := QryPaquete.FieldValues['sIdEquipo'];
          BitacoradeEquipos.FieldValues['dCantidad'] := QryPaquete.FieldValues['dCantidad'];
          BitacoradeEquipos.FieldValues['sIdPernocta'] := sPernocta;
          BitacoradeEquipos.Post;
        end;
        QryPaquete.Next
      end
    end;
    qryPaquete.Destroy;
  end;
  BitacoradeEquipos.Active := False;
  BitacoradeEquipos.Open;


end;


procedure TfrmBitacora2.FormKeyPress(Sender: TObject; var Key: Char);
{ Manejador del evento OnKeyPress del Form }
{ También hay que establecer la propiedad KeyPreview del Form a True }
begin
  if Key = #13 then { si es la tecla <enter> }
    if not (ActiveControl is TDBGrid) then { si no es un TDBGrid }
    begin
      Key := #0; { nos comemos la tecla }
      Perform(WM_NEXTDLGCTL, 0, 0); { vamos al siguiente control }
    end
    else
      if (ActiveControl is TDBGrid) then { si es un TDBGrid }
        with TDBGrid(ActiveControl) do
          if selectedindex < (fieldcount - 1) then
            selectedindex := selectedindex + 1
          else
            selectedindex := 0;
end;


procedure TfrmBitacora2.PopupPrincipalPopup(Sender: TObject);
begin
  if QryBitacora.FieldValues['sWbs'] <> '' then
    InsertaMaterial.Enabled := True
  else
    InsertaMaterial.Enabled := False;
end;

 {$REGION 'llenado de Vigencias'}
procedure TfrmBitacora2.Vigencias();
begin
       //Aqui leo las categorias de Personal Y Verifico que existan en el Oficio
  Connection.QryBusca2.Active;
  Connection.QryBusca2.SQL.Clear;
  Connection.QryBusca2.SQL.Add('Select dFechaVigencia from ordenesdetrabajogral  ' +
    'Where sContrato =:Contrato order by dFechaVigencia ');
  Connection.QryBusca2.Params.ParamByName('Contrato').AsString := param_global_Contrato;
  Connection.QryBusca2.Open;
  if Bandera = True then
  begin
    dParamFecha := Global_Fecha;
    d3 := DateToStr(Global_Fecha);
  end
  else
  begin
    dParamFecha := tdIdFecha.DateTime;
    d3 := DateToStr(tdIdFecha.DateTime);
  end;

  if Connection.QryBusca2.RecordCount > 0 then
  begin
    while not Connection.QryBusca2.Eof do
    begin
      dFechaAnterior := Connection.QryBusca2.FieldValues['dFechaVigencia'];
      d1 := Connection.QryBusca2.FieldValues['dFechaVigencia'];
      Connection.QryBusca2.Next;
      dFechaActual := Connection.QryBusca2.FieldValues['dFechaVigencia'];
      d2 := Connection.QryBusca2.FieldValues['dFechaVigencia'];
      if ((dParamFecha > dFechaAnterior) and (dParamFecha > dFechaActual) or (dParamFecha > dFechaAnterior) and (dParamFecha < dFechaActual) or (dParamFecha >= dFechaAnterior) and (dParamFecha <= dFechaActual)) then
        d4 := d1;
    end;
  end;
end;
 {$ENDREGION}

 
{$REGION 'llenado de Suma de Personal'}
 procedure TfrmBitacora2.sumadepersonal() ;
begin
  try
    if not (BitacoradePersonal.State in [dsInsert, dsEdit]) then
    begin
      if QryBitacora.RecordCount > 0 then
      begin
        SumPersonal.Active := False;

        SumPersonal.Params.ParamByName('Contrato').AsString := param_Global_Contrato;
        SumPersonal.Params.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
        SumPersonal.Params.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
        SumPersonal.Open;
        if SumPersonal.RecordCount > 0 then
          tdTotalPersonal.Value := SumPersonal.FieldValues['dTotal']
        else
          tdTotalPersonal.Value := 0;
      end
      else
        tdTotalPersonal.Value := 0;
    end;
  except

  end;
end;
 {$ENDREGION}

{$REGION 'llenado de Suma de Equipos'}
 procedure TfrmBitacora2.sumadeequipos() ;
begin
  try
    if not (BitacoradeEquipos.State in [dsInsert, dsEdit]) then
    begin
      if QryBitacora.RecordCount > 0 then
      begin
        SumEquipo.Active := False;

        SumEquipo.Params.ParamByName('Contrato').AsString := param_Global_Contrato;
        SumEquipo.Params.ParamByName('Fecha').AsDate      := tdIdFecha.Date;
        SumEquipo.Params.ParamByName('Diario').AsInteger  := QryBitacora.FieldValues['iIdDiario'];
        SumEquipo.Open;
        if SumEquipo.RecordCount > 0 then
          tdTotalEquipo.Value := SumEquipo.FieldValues['dTotal']
        else
          tdTotalEquipo.Value := 0;
      end
      else
        tdTotalEquipo.Value := 0;
    end;
  except

  end;
end;
 {$ENDREGION}

procedure TfrmBitacora2.ActualizaPersonal();
begin
   BitacoradePersonal.Active := False;
   BitacoradePersonal.Params.ParamByName('contrato').AsString := param_global_contrato;
   BitacoradePersonal.Params.ParamByName('fecha').AsDate := tdIdFecha.Date;
   if QryBitacora.RecordCount > 0 then
     BitacoradePersonal.Params.ParamByName('Diario').AsInteger := QryBitacora.FieldValues['iIdDiario']
   else
     BitacoradePersonal.Params.ParamByName('Diario').AsInteger := -1;
   BitacoradePersonal.Open;
   btnPaquetePersonal.Enabled := True;
end;

procedure TfrmBitacora2.ActualizaEquipos();
begin
  BitacoradeEquipos.Active := False;
  BitacoradeEquipos.Params.ParamByName('contrato').AsString  := param_global_contrato;
  BitacoradeEquipos.Params.ParamByName('fecha').AsDate       := tdIdFecha.Date;
  if QryBitacora.RecordCount > 0 then
    BitacoradeEquipos.Params.ParamByName('Diario').AsInteger := QryBitacora.FieldValues['iIdDiario']
  else
    BitacoradeEquipos.Params.ParamByName('Diario').AsInteger := -1;
  BitacoradeEquipos.Open;
  btnPaqueteEquipo.Enabled := True;
end;

procedure TfrmBitacora2.ActualizaMaterialesxPartida();
begin
     bitacorademateriales.Active := False;
     bitacorademateriales.Params.ParamByName('contrato').AsString := param_global_contrato;
     bitacorademateriales.Params.ParamByName('fecha').asDate      := tdIdFecha.Date;
     if QryBitacora.RecordCount > 0 then
       bitacorademateriales.Params.ParamByName('Diario').AsInteger := QryBitacora.FieldValues['iIdDiario']
     else
       bitacorademateriales.Params.ParamByName('Diario').Value := -1;
       bitacorademateriales.Params.ParamByName('Wbs').AsString := QryBitacora.FieldByName('sWbs').AsString ;
       bitacorademateriales.Open;
end;


 end.

