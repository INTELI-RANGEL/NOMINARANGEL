unit frm_SalidaAlmacen;

interface

uses
  frm_tiposdeMovimiento,frm_ordenes,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, DBCtrls, global, strUtils,
  DBTables, Mask, OleCtrls, Grids, DBGrids, frm_barra, ExtCtrls, Utilerias,
  Menus, frxClass, frxDBSet, RXDBCtrl,  RxLookup, DateUtils, RXCtrls, CheckLst,
  ToolWin, RxMemDS, ZAbstractRODataset, ZDataset, Newpanel, rxCurrEdit,
  rxToolEdit, AdvGlowButton, UnitValidacion, udbgrid, unitexcepciones,
  unittbotonespermisos, unitactivapop, UFunctionsGHH, ZAbstractDataset, jpeg,
  JvExStdCtrls, JvEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtons, cxControls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, UnitValidaTexto, masUtilerias,
  FormAutoScaler, cxContainer, cxGroupBox, dxCheckGroupBox, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxTextEdit, cxDropDownEdit, cxDBEdit,
  cxInplaceContainer, cxDBTL, cxTLData, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dblookup, JvExMask, JvToolEdit, JvCombobox, UInteliDialog,
  UDosCapas;

type
  TfrmSalidaAlmacen = class(TForm)
    ds_anexo_suministro: TDataSource;
    frxDBEntrada: TfrxDBDataset;
    ds_pedido: TDataSource;
    frxEntrada: TfrxReport;
    Pedido: TZReadOnlyQuery;
    Almacen: TZReadOnlyQuery;
    ds_almacen: TDataSource;
    ds_pSalidas: TDataSource;
    pSalidas: TZReadOnlyQuery;
    Reporte: TZReadOnlyQuery;
    GroupBox3: TGroupBox;
    frmBarra2: TfrmBarra;
    PgControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    tsPlataforma: TLabel;
    imgNotas: TImage;
    frmBarra1: TfrmBarra;
    Label7: TLabel;
    Label3: TLabel;
    tdIdFecha: TDateTimePicker;
    Label17: TLabel;
    tsNumeroOrden: TComboBox;
    tmComentarios: TMemo;
    Label6: TLabel;
    lblEncabezado: TStaticText;
    Label16: TLabel;
    txtNombre: TEdit;
    StaticText1: TStaticText;
    PedidosContrato: TWideStringField;
    PedidosIdInsumo: TWideStringField;
    PedidosTipoActividad: TWideStringField;
    PedidomDescripcion: TMemoField;
    PedidodFechaInicio: TDateField;
    PedidodCostoMN: TFloatField;
    PedidodCostoDll: TFloatField;
    PedidodVentaMN: TFloatField;
    PedidodVentaDLL: TFloatField;
    PedidosMedida: TWideStringField;
    PedidodCantidad: TFloatField;
    PedidodInstalado: TFloatField;
    PedidosIdFase: TWideStringField;
    PedidodPorcentaje: TFloatField;
    PedidosIdGrupo: TWideStringField;
    PedidodNuevoPrecio: TFloatField;
    PedidodExistencia: TFloatField;
    PedidoDescripcion: TWideStringField;
    pSalidassContrato: TWideStringField;
    pSalidasiFolioSalida: TIntegerField;
    pSalidasdFechaSalida: TDateField;
    pSalidassIdInsumo: TWideStringField;
    pSalidassIdAlmacen: TWideStringField;
    pSalidasdCantidad: TFloatField;
    pSalidassIdUsuario: TWideStringField;
    pSalidassNumeroOrden: TWideStringField;
    pSalidasmDescripcion: TWideStringField;
    pSalidassDescripcion: TWideStringField;
    iFolio: TCurrencyEdit;
    dtsPartidas: TDataSource;
    Partidas: TZReadOnlyQuery;
    pSalidassNumeroActividad: TWideStringField;
    Label1: TLabel;
    ds_tipomovimiento: TDataSource;
    zq_tipomovimiento: TZReadOnlyQuery;
    tsTipomovimiento: TDBLookupComboBox;
    anexo_suministro: TZQuery;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    edtFolio: TJvEdit;
    pSalidasdCantidadPendiente: TFloatField;
    Grid_Entradas: TcxGrid;
    cxgsalidas: TcxGridDBTableView;
    col_numsal: TcxGridDBColumn;
    col_folsalida: TcxGridDBColumn;
    col_fechaSalida: TcxGridDBColumn;
    col_tMovim: TcxGridDBColumn;
    col_status: TcxGridDBColumn;
    Grid_EntradasLevel1: TcxGridLevel;
    PanelInsumos: TPanel;
    Grid_Pedido: TcxGrid;
    cxgGridReq: TcxGridDBTableView;
    col_Insumo: TcxGridDBColumn;
    col_descripcion: TcxGridDBColumn;
    col_medida: TcxGridDBColumn;
    col_existencia: TcxGridDBColumn;
    col_costo: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Salvar: TcxButton;
    Cancelar: TcxButton;
    Label10: TLabel;
    tsAlmacen: TDBLookupComboBox;
    Label14: TLabel;
    tdCantidad: TRxCalcEdit;
    tsInsumo: TEdit;
    Panel1: TPanel;
    Agregar: TcxButton;
    Editar: TcxButton;
    Eliminar: TcxButton;
    Imprimir: TcxButton;
    GridPartidas: TcxGrid;
    GridPartidasView: TcxGridDBTableView;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    Copiar1: TMenuItem;
    Pegar1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N4: TMenuItem;
    Salir1: TMenuItem;
    btn1: TButton;
    btn2: TButton;
    ValedeResguardo1: TMenuItem;
    frmtsclr1: TFormAutoScaler;
    dsReferencia: TDataSource;
    QReferencia: TZQuery;
    ChkGbxRequisicion: TdxCheckGroupBox;
    Label2: TLabel;
    edtTransporta: TEdit;
    DbTeLstContratos: TcxDBTreeList;
    col1: TcxDBTreeListColumn;
    DbTeLstContratoscxDBTreeListColumn2: TcxDBTreeListColumn;
    DbPoEdtContratos: TcxDBPopupEdit;
    QRequisiciones: TZQuery;
    dsRequisiciones: TDataSource;
    ColumnRequerido: TcxGridDBColumn;
    Pedidorequerido: TFloatField;
    col_Contrato: TcxGridDBColumn;
    cbbRequisicion: TJvCheckedComboBox;
    strngfldPedidosNumFolio: TWideStringField;
    col_Requisicion: TcxGridDBColumn;
    col_Frente: TcxGridDBColumn;
    col_transporte: TcxGridDBColumn;
    col_Recibe: TcxGridDBColumn;
    col_Usuario: TcxGridDBColumn;
    col_Req: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Refresh1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsIsometricoReferenciaKeyPress(Sender: TObject;
      var Key: Char);
    procedure GridPartidasCellClick(Column: TColumn);
    procedure frxReport50GetValue(const VarName: String;
      var Value: Variant);
    procedure frmBarra2btnAddClick(Sender: TObject);
    procedure frmBarra2btnEditClick(Sender: TObject);
    procedure frmBarra2btnPostClick(Sender: TObject);
    procedure frmBarra2btnDeleteClick(Sender: TObject);
    procedure frmBarra2btnRefreshClick(Sender: TObject);
    procedure frmBarra2btnCancelClick(Sender: TObject);
    procedure frmBarra2btnExitClick(Sender: TObject);
    procedure tdIdFechaEnter(Sender: TObject);
    procedure tdIdFechaExit(Sender: TObject);
    procedure tsOrigenKeyPress(Sender: TObject; var Key: Char);
    procedure tmComentariosEnter(Sender: TObject);
    procedure tmComentariosExit(Sender: TObject);
    procedure tdCantidadEnter(Sender: TObject);
    procedure tdCantidadExit(Sender: TObject);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure frxEntradaGetValue(const VarName: String;
      var Value: Variant);
    procedure ComentariosAdicionalesClick(Sender: TObject);
    procedure tdFechaAvisoKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenEnter(Sender: TObject);
    procedure tsNumeroOrdenExit(Sender: TObject);
    procedure ActivaBotones(Sender :boolean);
    procedure ActivaBotones2(Sender :boolean);
    procedure Grid_PedidoCellClick(Column: TColumn);
    procedure Grid_PedidoMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
   
    procedure mComentariosKeyPress(Sender: TObject; var Key: Char);
    procedure tsFamiliaKeyPress(Sender: TObject; var Key: Char);
    procedure tsNumeroOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tmComentariosKeyPress(Sender: TObject; var Key: Char);
    procedure Grid_PedidoKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra2btnPrinterClick(Sender: TObject);
    procedure tsAlmacenExit(Sender: TObject);
    procedure AgregarClick(Sender: TObject);
    procedure EditarClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure EliminarClick(Sender: TObject);
    procedure txtNombreEnter(Sender: TObject);
    procedure txtNombreContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure txtNombreExit(Sender: TObject);
    procedure tsInsumoExit(Sender: TObject);
    procedure tsInsumoKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadKeyPress(Sender: TObject; var Key: Char);
    procedure tsInsumoEnter(Sender: TObject);
    procedure tsAlmacenEnter(Sender: TObject);
    procedure txtNombreKeyPress(Sender: TObject; var Key: Char);
    procedure iFolioKeyPress(Sender: TObject; var Key: Char);
    procedure tdIdFechaKeyPress(Sender: TObject; var Key: Char);
    procedure iFolioEnter(Sender: TObject);
    procedure iFolioExit(Sender: TObject);
    procedure tsAlmacenKeyPress(Sender: TObject; var Key: Char);
    procedure dbPartidasKeyPress(Sender: TObject; var Key: Char);
    procedure mDescripcionKeyPress(Sender: TObject; var Key: Char);

    procedure tdCantidadChange(Sender: TObject);
    procedure iFolioChange(Sender: TObject);
    procedure tsTipomovimientoEnter(Sender: TObject);
    procedure edtFolioEnter(Sender: TObject);
    procedure edtFolioExit(Sender: TObject);
    procedure edtFolioKeyPress(Sender: TObject; var Key: Char);
    procedure tsTipomovimientoKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarFolio1Click(Sender: TObject);

    procedure Label2Click(Sender: TObject);
    procedure PedidoAfterScroll(DataSet: TDataSet);
    procedure pSalidasAfterScroll(DataSet: TDataSet);
    procedure ValedeResguardo1Click(Sender: TObject);
    procedure cxgsalidasCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgGridReqCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgGridReqKeyPress(Sender: TObject; var Key: Char);
    procedure cxgGridReqMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure GridPartidasViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure tsTipomovimientoExit(Sender: TObject);
    procedure CargarFrentes;
    procedure ChkGbxRequisicionPropertiesChange(Sender: TObject);
    procedure DbTeLstContratosDblClick(Sender: TObject);
    procedure DbTeLstContratosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DbPoEdtContratosPropertiesChange(Sender: TObject);
    procedure DbPoEdtContratosPropertiesInitPopup(Sender: TObject);
    procedure PgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure llenado () ;
    procedure cxgsalidasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxgsalidasKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
  sMenuP: String;
    { Private declarations }
    procedure SetDatos;
    procedure PartidasRequisicion;
  public
    { Public declarations }
  end;

var
  frmSalidaAlmacen: TfrmSalidaAlmacen;
  OpcButton1, FechaEAnt, txtAux, sDescripcion    : String ;
  lNuevo          : Boolean ;
  SavePlace       : TBookmark;
  sBackup,
  IdInsumo        : String ;
  filtro, buscar  : string;
  Cantidad        : Double;
  TipoExplosion   : string;
  Requisicion     : TZReadOnlyQuery ;

  botonpermiso:tbotonespermisos;
implementation

uses frm_connection , frm_comentariosxanexo, Func_Genericas ,frm_TipoMovto;

{$R *.dfm}

procedure TfrmSalidaAlmacen.PartidasRequisicion;
Var
 vchar, vCadena, sLinea, sql,sql2 : string ;
 i,i2, vcontador : Integer ;
 arreglo : array[1..10] of string;

begin
   sLinea := anexo_suministro.FieldByName('sNumFolio').AsString;
   vContador := 1 ;
       for i:= 1 to Length(sLinea) do
        begin
          vChar := Copy(sLinea, i, 1);
          if vChar = ',' then
            begin
              Inc(vContador);
              vCadena := '' ;
            end
          Else
           vCadena  :=vCadena + vChar;
           arreglo[vContador] := vCadena
        end;
    sql := '' ;
      for i2 := 1 to vContador do
        begin
          sql2 := 'Or a2.sNumFolio =' ;
          sql := sql + '"'+arreglo[i2] +'"' + ' ' ;
          if i2 <> vContador then
             sql := sql + sql2 ; ;
        end;

    Pedido.close;
    Pedido.SQL.Text:='Select a2.sNumFolio, i.mDescripcion, i.sTipoActividad,i.sContrato,i.sIdAlmacen,'+
                    'i.sIdInsumo,i.sMedida,i.dExistencia,i.dCostoMN,i.dFechaInicio,'+
                    'i.dCostoDll,i.dVentaMN,i.dVentaDLL,i.dCantidad,i.dInstalado,i.sIdFase,i.dPorcentaje,' +
                    'i.sIdGrupo,i.dNuevoPrecio, LEFT(i.mDescripcion, 200) as Descripcion, a1.dcantidad as requerido '+
                    'from anexo_prequisicion a1 ' +
                    'inner join anexo_requisicion a2  on (a1.sContrato = a2.sContrato And a1.iFolioRequisicion = a2.sNumFolio) '  +
                    'inner join insumos i on ((:Principal=-1 or (:Principal<>-1 and a1.sContrato = i.sContrato)) And a1.sIdInsumo = i.sIdInsumo '+
                    'AND a1.sIdAlmacen = i.sIdAlmacen) ' +
                    'where a2.sContrato=:Contrato and a1.sIdAlmacen=:Almacen ' +
                    'and (a2.sNumFolio ='+ sql + ')'   ;

  Pedido.ParamByName('Contrato').AsString  :=anexo_suministro.FieldByName('sContrato').AsString;

  If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
      Pedido.ParamByName('Principal').AsString := 'No'
  else
    Pedido.ParamByName('Principal').AsInteger :=-1;
  Pedido.Params.ParamByName('Almacen').AsString     := tsAlmacen.KeyValue ;

  Pedido.Open ;

end;

procedure TfrmSalidaAlmacen.SetDatos;
begin
  if DbTeLstContratos.Count>0 then
    with DbPoEdtContratos do
    begin
      EditingText := VarToStr(DbTeLstContratos.FocusedNode.Values[1]);
      EditModified := True;
      DroppedDown := False;
    end;
  SelectNext(ActiveControl,true, true);
end;

procedure TfrmSalidaAlmacen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Requisicion.Destroy;

  botonpermiso.Free;
  action := cafree ;
end;

procedure TfrmSalidaAlmacen.FormShow(Sender: TObject);
begin
  try
    Requisicion            := TZReadOnlyQuery.Create(Nil);
    Requisicion.Connection := connection.ZConnection ;

    if Not CrearConjunto(Almacen, 'almacenesxusuario', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Almacenes por Usuario']);

    sMenuP:=stMenu;
    BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'MnuSalAlmacen', PopupPrincipal);

    ActivaBotones(False);
    Almacen.Active := False;
    Almacen.Params.ParamByName('sIdUsuario').AsString := Global_Usuario;
    Almacen.Open;
    if Almacen.RecordCount > 0 then
       tsAlmacen.KeyValue := Almacen.FieldValues['sIdAlmacen'];

    CargarFrentes;

    anexo_suministro.Active := False ;
    if connection.contrato.FieldByName('sTipoObra').AsString='PRINCIPAL' then
      anexo_suministro.Params.ParamByName('Contrato').AsInteger:=-1
    else
      anexo_suministro.Params.ParamByName('Contrato').AsString    := global_contrato;
    anexo_suministro.Open ;

    zq_tipomovimiento.Active := False;
    zq_tipomovimiento.Open;

    ActivaBotones2(False);

    Partidas.Active := False;
    Partidas.ParamByName('Contrato').AsString    := global_contrato;
    Partidas.ParamByName('Convenio').AsString    := global_convenio;
    Partidas.Open;

    if connection.configuracion.FieldValues['sExplosion'] = 'Recursos por Concepto/Partida' then
       TipoExplosion := 'recursosanexo'
    else
       TipoExplosion := 'recursosanexosnuevos';

    if connection.contrato.FieldByName('sTipoObra').AsString='PRINCIPAL' then
    begin
      QReferencia.Active:=False;
      QReferencia.Open;
      tsNumeroOrden.Visible:=False;
    end
    else
      DbPoEdtContratos.Visible:=False;
    llenado() ;
    BotonPermiso.permisosBotones(frmBarra1);
    BotonPermiso.permisosBotones(frmBarra2);
  except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TfrmSalidaAlmacen.BtnExitClick(Sender: TObject);
begin
    Close ;
end;

procedure TfrmSalidaAlmacen.BuscarFolio1Click(Sender: TObject);
Var
    sNumeroPartida : String ;
begin
    If anexo_suministro.RecordCount > 0 Then
    Begin
        sNumeroPartida := UPPERCASE(InputBox('Inteligent','Inserte el Folio a buscar?', anexo_suministro.FieldValues['sFolioSalida'])) ;
        anexo_suministro.Locate('sFolioSalida', sNumeroPartida, [loCaseInsensitive])
    End
end;

procedure TfrmSalidaAlmacen.frmBarra1btnExitClick(Sender: TObject);
begin
  Insertar1.Enabled := True ;
  Editar1.Enabled := True ;
  Registrar1.Enabled := False ;
  Can1.Enabled := False ;
  Eliminar1.Enabled := True ;
  Refresh1.Enabled := True ;
  frmBarra1.btnExitClick(Sender);
end;

procedure TfrmSalidaAlmacen.Insertar1Click(Sender: TObject);
begin
    frmBarra2.btnAdd.Click
end;

procedure TfrmSalidaAlmacen.Label2Click(Sender: TObject);
begin
  if TLabel(Sender).Caption = 'Descripcion' then
    TLabel(Sender).Caption := 'Id'
  else
    TLabel(Sender).Caption := 'Descripcion';
end;

procedure TfrmSalidaAlmacen.Editar1Click(Sender: TObject);
begin
    frmBarra2.btnEdit.Click
end;

procedure TfrmSalidaAlmacen.EditarClick(Sender: TObject);
begin
     If anexo_suministro.RecordCount > 0 Then
     Begin
        if anexo_suministro.FieldValues['sEstatus'] = 'AUTORIZADO' then
            messageDLG('La Salida de Material se encuentra Autorizada.', mtInformation, [mbOk], 0)
        else
          begin
            OpcButton         := 'Edit';
            Agregar.Enabled   := False ;
            Editar.Enabled    := False ;
            Salvar.Enabled    := True ;
            Cancelar.Enabled  := True ;
            Eliminar.Enabled  := False ;
            Imprimir.Enabled  := False ;

            ActivaBotones2(true);
            tdCantidad.ReadOnly := False;
            tsAlmacen.Enabled   := False;
            if anexo_suministro.FieldByName('sNumFolio').AsString<>'' then
             begin
               PartidasRequisicion;
               ColumnRequerido.Visible:=True;
            end
            else
               ColumnRequerido.Visible:=false;

               pedido.Locate('sIdInsumo', pSalidas.FieldByName('sIdInsumo').AsString, [loCaseInsensitive]);
               SavePlace := cxgGridReq.DataController.DataSource.DataSet.GetBookmark ;
               try
                 cxgGridReq.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
               Except
               Else
                 cxgGridReq.DataController.DataSource.DataSet.FreeBookmark(SavePlace);
               end ;
              grid_pedido.Enabled := False;
          end;
     End;
  BotonPermiso.permisosBotones(frmBarra1);
  Crear_Form(PanelInsumos, 'Catalogo de Materiales', 285, 943, [])
end;

procedure TfrmSalidaAlmacen.edtFolioEnter(Sender: TObject);
begin
  edtFolio.Color:=global_color_entradaERP;
end;

procedure TfrmSalidaAlmacen.edtFolioExit(Sender: TObject);
begin
   edtFolio.Color:=global_color_salidaERP;
end;

procedure TfrmSalidaAlmacen.edtFolioKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    tdIdFecha.SetFocus
end;

procedure TfrmSalidaAlmacen.Registrar1Click(Sender: TObject);
begin
    frmBarra2.btnPost.Click 
end;

procedure TfrmSalidaAlmacen.Can1Click(Sender: TObject);
begin
    frmBarra2.btnCancel.Click 
end;

procedure TfrmSalidaAlmacen.CancelarClick(Sender: TObject);
begin
    Agregar.Enabled  := True ;
    Editar.Enabled   := True;
    Salvar.Enabled   := False ;
    Cancelar.Enabled := False ;
    Eliminar.Enabled := True ;
    Imprimir.Enabled := False ;
    ActivaBotones2(False);
    GridPartidas.Enabled := True;
    BotonPermiso.permisosBotones(frmBarra1);      
end;

procedure TfrmSalidaAlmacen.Eliminar1Click(Sender: TObject);
begin
    frmBarra2.btnDelete.Click
end;

procedure TfrmSalidaAlmacen.EliminarClick(Sender: TObject);
var
  dCantSalida:Double;
begin
     If pSalidas.RecordCount > 0 Then
     Begin
        if anexo_suministro.FieldValues['sEstatus'] = 'AUTORIZADO' then
        begin
            messageDLG('La Salida de Material se encuentra Autorizada.', mtInformation, [mbOk], 0);
            exit;
        end;
        Pedido.Active := False;
        if MessageDlg('Desea Eliminar el Insumo:  ' + #10 + pSalidas.FieldByName('mDescripcion').AsString + ' ', mtConfirmation, [mbYes,mbNo], 0) = mrYes then begin
          dCantSalida:=  pSalidas.FieldByName('dcantidad').AsFloat;
          IdInsumo:=pSalidas.FieldByName('sIdInsumo').AsString;
          try
             connection.zCommand.Active := False ;
             connection.zCommand.SQL.Clear ;
             connection.zCommand.SQL.Add ('Delete from bitacoradesalida where sContrato = :Contrato ' +
                                          'and iFolioSalida =:Folio and sIdInsumo =:Insumo and sNumeroActividad =:Actividad and sIdAlmacen =:Almacen and dFechaSalida =:Fecha ') ;;
             connection.zcommand.Params.ParamByName('Contrato').AsString    := anexo_suministro.FieldByName('sContrato').AsString ;
             connection.zcommand.Params.ParamByName('Folio').AsInteger      := anexo_suministro.FieldValues['iFolioSalida'] ;
             connection.zcommand.Params.ParamByName('Insumo').AsString      := IdInsumo ;
             connection.zcommand.Params.ParamByName('Almacen').AsString     := tsAlmacen.KeyValue ;;
             connection.zcommand.Params.ParamByName('Fecha').AsDate         := anexo_suministro.FieldValues['dFechaSalida'] ;
             connection.zCommand.Params.ParamByName('Actividad').AsString   := pSalidas.FieldValues['sNumeroActividad'];
             connection.zCommand.ExecSQL  ;

             // Consulta de Insumo antes de Actualizar...
             //*************************************************
             connection.QryBusca.Active := False;
             connection.QryBusca.SQL.Clear;
             connection.QryBusca.SQL.Add('select dExistencia from insumos where (:Contrato=-1 or (:Contrato<>-1 and sContrato =:Contrato)) and sIdInsumo =:Insumo and sIdAlmacen =:Almacen ');
             If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
             begin
               connection.QryBusca.ParamByName('Contrato').AsString   := global_contrato;
             end
             else
              connection.QryBusca.ParamByName('Contrato').AsInteger:=-1;
             connection.QryBusca.ParamByName('Insumo').AsString      := IdInsumo ;
             connection.QryBusca.ParamByName('Almacen').AsString     := tsAlmacen.KeyValue ;
             connection.QryBusca.Open;

             //soad -> Actualizacion de los insumos...
             //**************************************************
             connection.QryBusca2.Active := False;
             connection.QryBusca2.SQL.Clear;
             connection.QryBusca2.SQL.Add('UPDATE insumos SET dExistencia =:Cantidad '+
                                          'WHERE (:Contrato=-1 or (:Contrato<>-1 and sContrato =:Contrato)) And sIdInsumo =:Insumo and sIdAlmacen =:Almacen ');
             If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
             begin
               connection.QryBusca2.ParamByName('Contrato').AsString      := global_contrato;
             end
             else
              connection.QryBusca2.ParamByName('Contrato').AsInteger   :=-1;
             connection.QryBusca2.ParamByName('Insumo').AsString       := IdInsumo ;
             connection.QryBusca2.ParamByName('Almacen').AsString      := tsAlmacen.KeyValue ;
             connection.QryBusca2.ParamByName('Cantidad').AsFloat      := connection.QryBusca.FieldValues['dExistencia'] + dCantSalida;
             connection.QryBusca2.ExecSQL;

              //Actualiza consulta de las existencias...
              Pedido.Active := False ;
              Pedido.SQL.Clear;
              Pedido.SQL.Add('Select *, LEFT(mDescripcion, 200) as Descripcion, 0.00 as requerido  from insumos where (:Contrato=-1 or (:Contrato<>-1 and sContrato =:Contrato)) and sIdAlmacen =:Almacen ');
              Pedido.Params.ParamByName('Almacen').AsString    := tsAlmacen.KeyValue ;
              If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
                Pedido.ParamByName('Contrato').AsString := global_contrato
              else
                Pedido.ParamByName('Contrato').AsInteger :=-1;

              Pedido.Open ;

              //Pedido.Locate('sIdInsumo;sContrato;sIdAlmacen;', VarArrayOf([pSalidas.FieldByName('sIdInsumo').AsString, global_contrato, tsAlmacen.KeyValue]), [loPartialkey]);
              Pedido.Locate('sIdInsumo', pSalidas.FieldByName('sIdInsumo').AsString, []);
              //Pedido.Locate('sIdInsumo;sIdAlmacen;', VarArrayOf([pSalidas.FieldByName('sIdInsumo').AsString, tsAlmacen.KeyValue]), [loPartialkey]);
              SavePlace := Pedido.GetBookmark ;
              Pedido.GotoBookmark(SavePlace);

              SavePlace := pSalidas.GetBookmark ;
              pSalidas.Refresh ;

              Try
                 pSalidas.GotoBookmark(SavePlace);
              Except
              Else
                pSalidas.FreeBookmark(SavePlace);
              End;
          Except
               MessageDlg('Ocurrio un error al eliminar el registro.', mtInformation, [mbOk], 0);
          End
        end
        else begin
          Pedido.Active := False ;
          Pedido.SQL.Clear;
          Pedido.SQL.Add('Select *, LEFT(mDescripcion, 200) as Descripcion, 0.00 as requerido from insumos where (:Contrato=-1 or (:Contrato<>-1 and sContrato =:Contrato)) and sIdAlmacen =:Almacen ');
          If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
            Pedido.ParamByName('Contrato').AsString := global_contrato
          else
            Pedido.ParamByName('Contrato').AsInteger :=-1;

          Pedido.Params.ParamByName('Almacen').AsString     := tsAlmacen.KeyValue ;
          Pedido.Open ;
        end;//fin de if confirmation
     End
end;

procedure TfrmSalidaAlmacen.Refresh1Click(Sender: TObject);
begin
    frmBarra2.btnRefresh.Click
end;

procedure TfrmSalidaAlmacen.Imprimir1Click(Sender: TObject);
begin
    frmBarra1.btnRefresh.Click
end;

procedure TfrmSalidaAlmacen.Salir1Click(Sender: TObject);
begin
    frmBarra2.btnExit.Click
end;

procedure TfrmSalidaAlmacen.SalvarClick(Sender: TObject);
var
  dActExistencia:Extended;
begin
  dActExistencia:=0;
  //Salida de materiales..
  If OpcButton = 'New' then
  Begin
    // Consulta de Insumo antes de insertar.
    //*************************************************
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select dExistencia from insumos where (:Contrato=-1 or (:Contrato<>-1 and sContrato =:Contrato)) and sIdInsumo =:Insumo and sIdAlmacen =:Almacen ');
    If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    begin
      connection.QryBusca.ParamByName('Contrato').AsString     := global_contrato;
    end
    else
      connection.QryBusca.ParamByName('Contrato').AsInteger :=-1;
    connection.QryBusca.ParamByName('Insumo').AsString      := tsInsumo.Text;
    connection.QryBusca.ParamByName('Almacen').AsString     := tsAlmacen.KeyValue ;
    connection.QryBusca.Open;
    if connection.QryBusca.RecordCount >= 0 then begin
      if connection.QryBusca.FieldValues['dExistencia'] < tdCantidad.Value then
       begin
        showmessage('No se puede proporcionar la Cantidad Solicitada, verificar Existencias !');
        exit;
       end;
       if connection.QryBusca.FieldValues['dExistencia'] = 0 then begin
        showmessage('La Existencia es Igual a Cero  !');
        Cancelar.Click;
        exit;
       end;

    end;


    connection.QryBusca2.Active := False ;
    connection.QryBusca2.SQL.Clear ;
    connection.QryBusca2.SQL.Add ('select sIdInsumo, dCantidad,dCantidadpendiente from bitacoradesalida where sContrato =:Contrato and iFolioSalida =:Folio and sIdInsumo =:Insumo '+
                                'and sIdAlmacen =:Almacen ') ;
    connection.QryBusca2.Params.ParamByName('Contrato').AsString     := anexo_suministro.FieldByName('sContrato').AsString ;
    connection.QryBusca2.Params.ParamByName('Folio').AsString        := anexo_suministro.FieldValues['iFolioSalida'] ;
    connection.QryBusca2.Params.ParamByName('Insumo').AsString       := tsInsumo.Text;
    connection.QryBusca2.Params.ParamByName('Almacen').AsString      := tsAlmacen.KeyValue ;
    connection.QryBusca2.Open ;

    if connection.QryBusca2.RecordCount = 0 then
    begin
        // soad -> Inbsercion de los datos en la bitacora de salida....
        //****************************************************************
        connection.zCommand.Active := False ;
        connection.zCommand.SQL.Clear ;
        connection.zCommand.SQL.Add ( 'INSERT INTO bitacoradesalida ( sContrato, iFolioSalida, dFechaSalida,sRequisicion, sIdInsumo, dCantidad,dCantidadpendiente, sIdUsuario, sIdAlmacen, sNumeroOrden, sNumeroActividad,sstatus ) ' +
                                      'VALUES (:Contrato, :Folio, :FechaS, :Requisicion,:Insumo, :Cantidad,:Cantidad, :Usuario, :Almacen, :Orden, "","Pendiente")') ;

        connection.zCommand.Params.ParamByName('Contrato').AsString    := anexo_suministro.FieldByName('sContrato').AsString ;
        connection.zCommand.Params.ParamByName('Folio').AsString       := anexo_suministro.FieldValues['iFolioSalida'] ;
        connection.zCommand.Params.ParamByName('FechaS').AsDate        := anexo_suministro.FieldValues['dFechaSalida'];
        connection.zCommand.Params.ParamByName('Insumo').AsString      := pedido.FieldValues['sIdInsumo'];
        connection.zCommand.Params.ParamByName('Cantidad').AsFloat     := tdCantidad.Value ;
        connection.zCommand.Params.ParamByName('Usuario').AsString     := anexo_suministro.FieldValues['sIdUsuario'];
        connection.zCommand.Params.ParamByName('Almacen').AsString     := tsAlmacen.KeyValue ;
        connection.zCommand.Params.ParamByName('Orden').AsString       := anexo_suministro.FieldValues['sNumeroOrden'];
        connection.zCommand.Params.ParamByName('Requisicion').AsString := Pedido.FieldByName('sNumFolio').AsString;
        connection.zCommand.ExecSQL;
        dActExistencia:=tdCantidad.Value;
    end
    else
    begin
        if messageDLG('Ya existe una salida para el Insumo desea Actualizar la salida?', mtInformation, [mbYes,mbNo], 0) = mrYes then
        begin
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ('UPDATE bitacoradesalida SET dCantidad =:Cantidad,dCantidadpendiente =:pendiente where sContrato =:Contrato and iFolioSalida =:Folio '+
                                       'and sIdInsumo =:Insumo and sIdAlmacen =:Almacen ') ;
          connection.zCommand.Params.ParamByName('Contrato').AsString     := anexo_suministro.FieldByName('sContrato').AsString ;
          connection.zCommand.Params.ParamByName('Folio').AsString        := anexo_suministro.FieldValues['iFolioSalida'] ;
          connection.zCommand.Params.ParamByName('Insumo').AsString       := tsInsumo.Text;
          connection.zCommand.Params.ParamByName('Cantidad').AsFloat      := tdCantidad.Value + connection.QryBusca2.FieldValues['dCantidad'];
          connection.zCommand.Params.ParamByName('pendiente').AsFloat     := tdCantidad.Value + connection.QryBusca2.FieldValues['dCantidadpendiente'];
          connection.zCommand.Params.ParamByName('Almacen').AsString      := tsAlmacen.KeyValue ;

          connection.zCommand.ExecSQL ;
          dActExistencia:=tdCantidad.Value;
        end
        else
          Exit;
    end;
    //soad -> Actualizacion de los insumos...
    //**************************************************
    connection.QryBusca2.Active := False;
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Add('UPDATE insumos SET dExistencia =:Cantidad '+
                                'WHERE (:Contrato=-1 or (:Contrato<>-1 and sContrato =:Contrato)) And sIdInsumo =:Insumo and sIdAlmacen =:Almacen ');
    If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    begin
      connection.QryBusca2.ParamByName('Contrato').Value     := global_contrato;
    end
    else
      connection.QryBusca2.ParamByName('Contrato').AsInteger :=-1;
    connection.QryBusca2.ParamByName('Insumo').AsString      := tsInsumo.Text;
    connection.QryBusca2.ParamByName('Almacen').AsString     := tsAlmacen.KeyValue ;
    connection.QryBusca2.ParamByName('Cantidad').AsFloat     := (connection.QryBusca.FieldValues['dExistencia'] - tdCantidad.Value) ;
    connection.QryBusca2.ExecSQL;
  End;

  If OpcButton = 'Edit' then
  Begin
    // Consulta de Insumo antes de insertar.
    //*************************************************
    connection.QryBusca.Active := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select dExistencia from insumos where (:Contrato=-1 or (:Contrato<>-1 and sContrato =:Contrato)) and sIdInsumo =:Insumo and sIdAlmacen =:Almacen ');
    If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
    begin
      connection.QryBusca.ParamByName('Contrato').AsString     := global_contrato;
    end
    else
      connection.QryBusca.ParamByName('Contrato').AsInteger :=-1;
      connection.QryBusca.ParamByName('Insumo').AsString    := tsInsumo.Text;
      connection.QryBusca.ParamByName('Almacen').AsString   := tsAlmacen.KeyValue ;
      connection.QryBusca.Open;
    if connection.QryBusca.RecordCount > 0 then
      if connection.QryBusca.FieldValues['dExistencia'] + Cantidad < tdCantidad.Text then
      begin
        showmessage('No se puede proporcionar la Cantidad Solicitada, verificar Existencias !');
        exit;
      end;

    try
      // soad -> Insercion de los datos en la bitacora de Entrada....
      //****************************************************************
      dActExistencia:=(pSalidas.FieldByName('dcantidad').AsFloat- pSalidas.FieldByName('dcantidadpendiente').AsFloat);

      if AnsiCompareText(zq_tipomovimiento.FieldByName('sclasificacion').AsString,'Traspaso Salida')=0 then
        if tdCantidad.Value<dActExistencia then
        begin
          showmessage('No se puede proporcionar la Cantidad Solicitada. Ya se asigno material al almacen y esa cantidad no cumple con lo asignado');
          exit;
        end;

      connection.zCommand.Active := False ;
      connection.zCommand.SQL.Clear ;
      connection.zCommand.SQL.Add ('UPDATE bitacoradesalida SET dCantidad =:Cantidad,dCantidadpendiente =:pendiente where sContrato =:Contrato and iFolioSalida =:Folio '+
                                   'and sIdInsumo =:Insumo and sIdAlmacen =:Almacen and sNumeroActividad =:Actividad ') ;
      connection.zCommand.Params.ParamByName('Contrato').AsString    := anexo_suministro.FieldByName('sContrato').AsString ;
      connection.zCommand.Params.ParamByName('Folio').AsString       := anexo_suministro.FieldValues['iFolioSalida'] ;
      connection.zCommand.Params.ParamByName('Insumo').AsString      := tsInsumo.Text;
      connection.zCommand.Params.ParamByName('Cantidad').AsFloat     := tdCantidad.Value ;
      connection.zCommand.Params.ParamByName('pendiente').AsFloat    := tdCantidad.Value-dActExistencia ;
      connection.zCommand.Params.ParamByName('Almacen').AsString     := tsAlmacen.KeyValue ;
      connection.zCommand.Params.ParamByName('Actividad').AsString   := pSalidas.FieldValues['sNumeroActividad'];
      connection.zCommand.ExecSQL ;
    except
      MessageDlg('Ocurrio un error al actualizar el registro', mtWarning, [mbOk], 0);
      exit;
    End;
      //soad -> Actualizacion de los insumos...
      //**************************************************
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('UPDATE insumos SET dExistencia =:Cantidad '+
                                  'WHERE (:Contrato=-1 and (:Contrato<>-1 and sContrato =:Contrato)) And sIdInsumo =:Insumo and sIdAlmacen =:Almacen ');
      If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
      begin
        connection.QryBusca2.ParamByName('Contrato').AsString     := global_contrato ;
      end
      else
        connection.QryBusca2.ParamByName('Contrato').AsInteger    :=-1;
        connection.QryBusca2.ParamByName('Insumo').AsString       := tsInsumo.Text;
        connection.QryBusca2.ParamByName('Almacen').AsString      := tsAlmacen.KeyValue ;
        connection.QryBusca2.ParamByName('Cantidad').AsFloat      := ((connection.QryBusca.FieldValues['dExistencia'] + Cantidad) - tdCantidad.Value);
        connection.QryBusca2.ExecSQL;

      Agregar.Enabled  := True ;
      Editar.Enabled   := True ;
      Salvar.Enabled   := False ;
      Cancelar.Enabled := true ;
      Eliminar.Enabled := True ;
      Imprimir.Enabled := True ;
  End;


  pSalidas.Refresh ;
  SavePlace := pSalidas.GetBookmark ;
  pSalidas.FreeBookmark(SavePlace);

  pSalidas.Locate('sIdInsumo', Pedido.FieldByName('sIdInsumo').AsString, []);
  SavePlace := pSalidas.GetBookmark ;
  //pSalidas.FreeBookmark(SavePlace);
  Pedido.Refresh;
      //Actualiza consulta de las existencias...


  Try
     pSalidas.GotoBookmark(SavePlace);
     //Pedido.Locate('sIdInsumo;sContrato;sIdAlmacen;', VarArrayOf([pSalidas.FieldByName('sIdInsumo').AsString, global_contrato, tsAlmacen.KeyValue]), [loPartialkey]);
     Pedido.Locate('sIdInsumo', pSalidas.FieldByName('sIdInsumo').AsString, []);
     //Pedido.Locate('sIdInsumo;sIdAlmacen;', VarArrayOf([pSalidas.FieldByName('sIdInsumo').AsString, tsAlmacen.KeyValue]), [loPartialkey]);
     SavePlace := Pedido.GetBookmark ;
     Pedido.GotoBookmark(SavePlace);
  Except
    pSalidas.FreeBookmark(SavePlace);
  End;

  tsInsumo.text := '';
  tdCantidad.Text  := '';
  BotonPermiso.permisosBotones(frmBarra1);
  Salvar.Enabled := True;
  Imprimir.Enabled := False;
end;


procedure TfrmSalidaAlmacen.tsIsometricoReferenciaKeyPress(
  Sender: TObject; var Key: Char);
begin
    If Key = #13 Then
        tmComentarios.SetFocus
end;


procedure TfrmSalidaAlmacen.GridPartidasCellClick(Column: TColumn);
begin
     if pSalidas.RecordCount > 0 then
     begin
         GridPartidas.Hint  := pSalidas.FieldValues['mDescripcion'];
         IdInsumo           := pSalidas.FieldValues['sIdInsumo'];
         Cantidad           := pSalidas.FieldValues['dCantidad'];
         tsInsumo.Text      := pSalidas.FieldValues['sIdInsumo'];
         tsAlmacen.KeyValue := pSalidas.FieldValues['sIdAlmacen'];
         tdCantidad.Value   := pSalidas.FieldValues['dCantidad'];
     end;
end;



procedure TfrmSalidaAlmacen.frxReport50GetValue(const VarName: String;
  var Value: Variant);
begin
  If CompareText(VarName, 'ANEXO') = 0 then
  Begin
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select sAnexo From convenios Where sContrato = :Contrato And sIdConvenio = :convenio') ;
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato ;
      Connection.qryBusca.Params.ParamByName('convenio').DataType := ftString ;
      Connection.qryBusca.Params.ParamByName('convenio').Value := global_convenio ;
      Connection.qryBusca.Open ;
      If Connection.qryBusca.RecordCount > 0 Then
          Value := Connection.qryBusca.FieldValues ['sAnexo']
      Else
          Value := '' ;
  End ;

  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisor ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisor ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;
end;


procedure TfrmSalidaAlmacen.frmBarra2btnAddClick(Sender: TObject);
Var
  dFechaFinal : tDate ;
  iCheck      : Integer ;
begin
  activapop(frmSalidaAlmacen,popupprincipal);
  Try
  OpcButton1 := 'New' ;

    frmBarra2.btnAddClick(Sender);
    frmBarra1.btnCancel.Click ;
    pgControl.ActivePageIndex := 0 ;

    ActivaBotones(True);
    tdIdFecha.Date     := Date ;
    tmComentarios.Text := '' ;
    txtNombre.text     := '';
    edtFolio.Text:='';
    tsNumeroOrden.ItemIndex := 0 ;
    tdIdFecha.Enabled := True;

    edtTransporta.Text:= '*' ;
    txtNombre.Text    := '*' ;

    tsTipomovimiento.SetFocus;
    anexo_suministro.Append;
    BotonPermiso.permisosBotones(frmBarra2);
    Grid_Entradas.Enabled := False;
  except
    on e : exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'frm_EntradaAlmacen', 'Al agregar registro ', 0);
    end;
  end;
end;

procedure TfrmSalidaAlmacen.frmBarra2btnEditClick(Sender: TObject);
begin
    activapop(frmSalidaAlmacen, popupprincipal);
    If anexo_suministro.RecordCount > 0 then
    Begin
        if anexo_suministro.FieldValues['sEstatus'] = 'AUTORIZADO' then
        begin
            messageDLG('La Salida de Material se encuentra Autorizada.', mtInformation, [mbOk], 0);
            exit;
        end;
        OpcButton1 := 'Edit' ;
        pgControl.ActivePageIndex := 0 ;
        anexo_suministro.Edit;
        ActivaBotones(True);
        frmBarra2.btnEditClick(Sender);


        if (anexo_suministro.FieldByName('sNumFolio').AsString  <> '') then
          ChkGbxRequisicion.CheckBox.Checked:=True;

        if (pSalidas.RecordCount>0) then
        begin
          if connection.contrato.FieldByName('sTipoObra').AsString='PRINCIPAL' then
            DbTeLstContratos.Enabled:=False;

          ChkGbxRequisicion.Enabled:=False;

        end;





    End;
    BotonPermiso.permisosBotones(frmBarra2);
    Grid_Entradas.Enabled := False;

end;

procedure TfrmSalidaAlmacen.frmBarra2btnPostClick(Sender: TObject);
var
   nombres, cadenas : TStringList;
   i, posicion, Maximo :integer;

   Folio, Numdigitos: string;
begin
  posicion:=anexo_suministro.RecNo;
  desactivapop(popupprincipal);
  If OpcButton1 = 'New' then
  Begin
      //empieza validacion
      nombres:=TStringList.Create;cadenas:=TStringList.Create;
      nombres.Add('Tipo Movimiento');
      nombres.Add('Referencia');
      nombres.Add('Nombre Recibe');
     // nombres.Add('Comentarios');
    //  if ChkGbxRequisicion.CheckBox.Checked then
    //    nombres.Add('Requisicion');


      cadenas.Add(tsTipomovimiento.Text);
      if connection.contrato.FieldByName('sTipoObra').AsString='PRINCIPAL' then
        cadenas.Add(DbPoEdtContratos.Text)
      else
        cadenas.Add(tsNumeroOrden.Text);

      cadenas.Add(txtNombre.Text);
      //cadenas.Add(tmComentarios.Text);
      //if ChkGbxRequisicion.CheckBox.Checked then
      //  cadenas.Add(DbLkpCmbRequisicion.Text);

      if not validaTexto(nombres, cadenas,'','') then
      begin
          MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
          exit;
      end;

       with connection.QryBusca do
       begin
         Active := False;
         SQL.Text := 'select sAlmPrefijoSal, iAlmNumSal, ( iAlmConsecutivoSal + 1 ) as iAlmConsecutivoSal from configuracion where sContrato = :contrato';
         ParamByName( 'contrato' ).AsString := global_contrato;
         Open;
       end;


        //BUSCAMOS EL MAXIMO
       connection.zCommand.Active := False;
       connection.zCommand.SQL.Clear;
       connection.zCommand.SQL.Add('select max(iFolioSalida) + 1 as Folio FROM almacen_salida where sFolioSalida like :sSalida ');
       connection.zCommand.ParamByName('sSalida').AsString := connection.QryBusca.FieldByName( 'sAlmPrefijoSal' ).AsString + '%';
       connection.zCommand.Open;

       if connection.QryBusca.FieldByName( 'iAlmConsecutivoSal' ).AsInteger < connection.zCommand.FieldByName( 'Folio' ).AsInteger then
         Maximo := Connection.zCommand.FieldByName('Folio').AsInteger
       else
        Maximo := connection.QryBusca.FieldByName( 'iAlmConsecutivoSal' ).AsInteger;


       Numdigitos := '';
       for i := 1 to connection.QryBusca.FieldByName( 'iAlmNumSal' ).AsInteger do
        Numdigitos := Numdigitos + '0';

       Folio := connection.QryBusca.FieldByName( 'sAlmPrefijoSal' ).AsString + formatfloat(Numdigitos,Maximo);

       connection.zCommand.Active := False ;
       connection.zCommand.SQL.Clear ;
       connection.zCommand.SQL.Add ('select sContrato, iFolioSalida from almacen_salida where sContrato =:Contrato and iFolioSalida =:Folio ');
       connection.zCommand.params.ParamByName('Contrato').AsString    := Global_Contrato ;
       connection.zCommand.params.ParamByName('Folio').AsFloat     := iFolio.Value ;
       connection.zCommand.Open ;

      try
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'INSERT INTO almacen_salida ( sContrato, iFolioSalida, sfolioSalida, dFechaSalida, sIdTipo, sNombre, ' +
                                        'sNumeroOrden, sIdUsuario, mComentarios,sNumFolio,sNombreTransporta) ' +
                                        'VALUES (:Contrato, :FolioS, :FolioSalida, :Fechas, :Tipo, :Nombre, :Orden, :Usuario, ' +
                                        ':Comentarios,:NumFolio,:Transporta)') ;
          connection.zCommand.params.ParamByName('Contrato').DataType    := ftString ;

         if connection.contrato.FieldByName('sTipoObra').AsString='PRINCIPAL' then
            connection.zCommand.params.ParamByName('Contrato').AsString   := DbTeLstContratos.FocusedNode.Values[0]
         else
            connection.zCommand.params.ParamByName('Contrato').value      := global_contrato  ;

           connection.zCommand.params.ParamByName('FolioS').AsInteger     := Maximo;
           connection.zCommand.params.ParamByName('FechaS').AsDate        := tdIdFecha.Date ;
           connection.zCommand.params.ParamByName('Tipo').AsString        := tsTipoMovimiento.KeyValue ;
           connection.zCommand.params.ParamByName('Nombre').AsString       := txtNombre.Text ;
           if connection.contrato.FieldByName('sTipoObra').AsString='PRINCIPAL' then
             connection.zCommand.params.ParamByName('Orden').AsString      :=DbPoEdtContratos.Text
           else
             connection.zCommand.params.ParamByName('Orden').AsString      := tsNumeroOrden.Text;
           connection.zCommand.params.ParamByName('Usuario').AsString      := Global_Usuario;
           connection.zCommand.params.ParamByName('Comentarios').AsMemo    := tmCOmentarios.Text;
           connection.zCommand.params.ParamByName('Transporta').AsString   := edtTransporta.Text;
           connection.zCommand.ParamByName('FolioSalida').AsString         := Folio;
           if ChkGbxRequisicion.CheckBox.Checked then
            connection.zCommand.ParamByName('NumFolio').AsString:=cbbRequisicion.Text ;
           connection.zCommand.ExecSQL ;

           connection.zCommand.Active := False;
           connection.zCommand.SQL.Text := 'update configuracion set iAlmConsecutivoSal = :valor where sContrato = :contrato';
           connection.zCommand.ParamByName( 'contrato' ).AsString := global_contrato;
           connection.zCommand.ParamByName( 'valor' ).AsInteger := Maximo;
           connection.zCommand.ExecSQL;


          // Actualizo Kardex del Sistema ....
          connection.zCommand.Active := False ;
          connection.zCommand.SQL.Clear ;
          connection.zCommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
                                        'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
;
          connection.zCommand.Params.ParamByName('Contrato').AsString     := Global_Contrato ;
          connection.zCommand.Params.ParamByName('Usuario').AsString      := Global_Usuario ;
          connection.zCommand.Params.ParamByName('Fecha').AsDate          := Date ;
          connection.zCommand.Params.ParamByName('Hora').AsString         := FormatDateTime('hh:mm:ss', Now) ;
          connection.zCommand.Params.ParamByName('Descripcion').AsString  := 'Registro de Salida al Almacen No. ' + FloatToStr(iFolio.Value) + ' El dia  ['+ DateToStr(Date())+ ']  Usuario [ ' + global_usuario + ']' ;
          connection.zCommand.Params.ParamByName('Origen').AsString       := 'Reporte Diario' ;
          connection.zCommand.ExecSQL ;
      Except
       on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Salidas Almacen', 'Al salvar registro', 0);
       end;
      End
  End
  Else
  If OpcButton1 = 'Edit' then
  Begin
      try
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'UPDATE almacen_salida SET  sNumeroOrden = :Orden,sfoliosalida=:foliosalida, sNombre =:Nombre, sIdTipo =:Tipo, mComentarios = :Comentarios, ' +
                                          'dFechaSalida=:FechaS,sNumFolio=:NumFolio,sNombreTransporta=:Transporta '   +
                                          'WHERE sContrato =:Contrato and iFolioSalida =:Folio ') ;
            connection.zCommand.Params.ParamByName('Contrato').AsString       := anexo_suministro.FieldByName('sContrato').AsString ;
            connection.zCommand.Params.ParamByName('Folio').AsInteger         := anexo_suministro.FieldValues['iFolioSalida'] ;
            if connection.contrato.FieldByName('sTipoObra').AsString='PRINCIPAL' then
            begin
              if DbTeLstContratos.Enabled then
                connection.zCommand.Params.ParamByName('Orden').AsString:=DbPoEdtContratos.Text
              else
                connection.zCommand.Params.ParamByName('Orden').AsString:=anexo_suministro.FieldByName('sNumeroOrden').AsString;

            end
            else
              connection.zCommand.Params.ParamByName('Orden').AsString     := tsNumeroOrden.Text ;
            connection.zCommand.Params.ParamByName('Tipo').AsString        := tsTipomovimiento.KeyValue;
            connection.zCommand.Params.ParamByName('Nombre').AsString      := txtNombre.Text ;
            connection.zCommand.Params.ParamByName('Comentarios').asMemo    := tmCOmentarios.Text ;
            connection.zCommand.ParamByName('FolioSalida').AsString:=Trim(edtFolio.Text);
            connection.zCommand.params.ParamByName('FechaS').DataType      := ftDate ;
            connection.zCommand.params.ParamByName('FechaS').value         := tdIdFecha.Date ;
            if (ChkGbxRequisicion.Enabled) and (ChkGbxRequisicion.CheckBox.Checked ) then
              connection.zCommand.ParamByName('NumFolio').AsString         := cbbRequisicion.Text
            else
              connection.zCommand.ParamByName('NumFolio').AsString:=anexo_suministro.FieldByName('sNumFolio').AsString;
            connection.zCommand.params.ParamByName('Transporta').AsString         := edtTransporta.Text ;
            connection.zCommand.ExecSQL ;

            // Actualizo Kardex del Sistema ....
            connection.zCommand.Active := False ;
            connection.zCommand.SQL.Clear ;
            connection.zCommand.SQL.Add ( 'Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
                                          'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
            connection.zCommand.Params.ParamByName('Contrato').AsString    := Global_Contrato ;
            connection.zCommand.Params.ParamByName('Usuario').AsString     := Global_Usuario ;
            connection.zCommand.Params.ParamByName('Fecha').AsDate         := Date ;
            connection.zCommand.Params.ParamByName('Hora').value           := FormatDateTime('hh:mm:ss', Now) ;
            connection.zCommand.Params.ParamByName('Descripcion').AsString := 'Modificación de Salida al Alamacen No. ' + IntToStr(anexo_suministro.FieldValues['iFolioSalida']) + ' El día ['+ DateToStr(Date())+ '] Usuario [ ' + global_usuario + ']' ;

            connection.zCommand.Params.ParamByName('Origen').AsString      := 'Reporte Diario' ;
            connection.zCommand.ExecSQL ;
      except
       on e : exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Salidas Almacen', 'Al salvar registro', 0);
       end;
      End;
   End ;


   SavePlace := cxgsalidas.DataController.DataSource.DataSet.GetBookmark ;

   anexo_suministro.Cancel;
  // anexo_suministro.Active := False ;
   anexo_suministro.Refresh;
   try
       cxgsalidas.DataController.DataSource.DataSet.GotoBookmark(SavePlace);
   Except
   Else
       cxgsalidas.DataController.DataSource.DataSet.FreeBookmark(SavePlace);
   end ;

   if OpcButton1 = 'New' then
      anexo_suministro.Last;

   OpcButton1 := '' ;
   ActivaBotones(False);
   frmbarra2.btnCancel.Click;
   BotonPermiso.permisosBotones(frmBarra2);
   Grid_Entradas.Enabled := True;
   DbTeLstContratos.Enabled:=true;
   ChkGbxRequisicion.Enabled:=true;
end;

procedure TfrmSalidaAlmacen.frmBarra2btnPrinterClick(Sender: TObject);
begin
     If anexo_suministro.RecordCount > 0 Then
     begin
         Reporte.Active := False;
         Reporte.SQL.Clear;
         Reporte.SQL.Add('select alm.*, s.*, b.*, i.dExistencia, i.dCostoMN, i.mDescripcion, i.sMedida, i.sModelo, ma.sMarca, m.sDescripcion as Tipomovimiento from almacen_salida s '+
                         'inner join bitacoradesalida b '+
                         'on(b.sContrato = s.sContrato and b.iFolioSalida = s.iFolioSalida) '+
                         'inner join almacenes alm '+
                         'on (alm.sIdAlmacen = b.sIdAlmacen) '+
                         'inner join insumos i '+
                         'on ((:Principal=-1 or (:Principal<>-1 and i.sContrato = s.sContrato)) and i.sIdInsumo = b.sIdInsumo and i.sIdAlmacen =b.sidalmacen ) '+
                         'inner join movimientosdealmacen m '+
                         'on (m.sIdTipo = s.sIdTipo) '+
                         'left join marcas ma on (i.sIdMarca=ma.sIdMarca) '+
                         'where s.sContrato =:Contrato and s.iFolioSalida =:Folio ');
         Reporte.ParamByName('Contrato').AsString    := anexo_suministro.FieldByName('sContrato').AsString ;
         Reporte.ParamByName('Folio').AsInteger     := anexo_suministro.FieldValues['iFolioSalida'];
         If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
          Reporte.ParamByName('Principal').AsInteger:=0
        else
          Reporte.ParamByName('Principal').AsInteger :=-1;
         Reporte.open;
         frxDBEntrada.FieldAliases.Clear;
         frxEntrada.PreviewOptions.MDIChild := False ;
         frxEntrada.PreviewOptions.Modal := True ;
         frxEntrada.PreviewOptions.Maximized := lCheckMaximized () ;
         frxEntrada.PreviewOptions.ShowCaptions := False ;
         frxEntrada.Previewoptions.ZoomMode := zmPageWidth ;
         frxEntrada.LoadFromFile (global_files + global_miReporte+'_ALMValeSalida.fr3') ;
         if not FileExists(global_files + global_miReporte + '_ALMValeSalida.fr3') then

          showmessage('El archivo de reporte '+global_Mireporte+'_ALMValeSalida.fr3 no existe, notifique al administrador del sistema');


         frxEntrada.ShowReport; //(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
     end;
end;

procedure TfrmSalidaAlmacen.frmBarra2btnDeleteClick(Sender: TObject);
begin
     If anexo_suministro.RecordCount > 0 Then
        If MessageDlg('Desea eliminar el Folio seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
           Begin
              if anexo_suministro.FieldValues['sEstatus'] = 'AUTORIZADO' then
                 messageDLG('La Salida de Material se encuentra Autorizada.', mtInformation, [mbOk], 0)
              else
               if pSalidas.RecordCount > 0 then
                   showmessage('No se puede Eliminar!, Existen Materiales para esta Salida.')
                 else
                   begin
                      // Actualizo Kardex del Sistema ....
                      try
                      connection.zCommand.Active := False ;
                      connection.zCommand.SQL.Clear ;
                      connection.zCommand.SQL.Add ('Insert Into kardex_sistema (sContrato, sIdUsuario, dIdFecha, sHora, sDescripcion, lOrigen) ' +
                                           'Values (:Contrato, :Usuario, :Fecha, :Hora, :Descripcion, :Origen)') ;
                      connection.zCommand.Params.ParamByName('Contrato').AsString     := Global_Contrato ;
                      connection.zCommand.Params.ParamByName('Usuario').AsString      := Global_Usuario ;
                      connection.zCommand.Params.ParamByName('Fecha').AsDate          := Date ;
                      connection.zCommand.Params.ParamByName('Hora').AsString         := FormatDateTime('hh:mm:ss', Now) ;
                      connection.zCommand.Params.ParamByName('Descripcion').AsString  := 'Eliminación de Salida al Almacen ' + IntToStr(anexo_suministro.FieldValues['iFolioSalida']) + ' El día [' + DateToStr(Date())+ '] Usuario [ ' + global_usuario + ']' ;
                      connection.zCommand.Params.ParamByName('Origen').AsString       := 'Reporte Diario' ;
                      connection.zCommand.ExecSQL ;

                      connection.zCommand.Active := False ;
                      connection.zCommand.SQL.Clear ;
                      connection.zCommand.SQL.Add ( 'Delete from almacen_salida where sContrato =:Contrato and iFolioSalida =:Folio ') ;
                      connection.zcommand.Params.ParamByName('Contrato').AsString    := anexo_suministro.FieldByName('sContrato').AsString ;
                      connection.zcommand.Params.ParamByName('Folio').AsInteger     := anexo_suministro.FieldValues['iFolioSalida'] ;
                      connection.zCommand.ExecSQL ;

                      SavePlace := anexo_suministro.GetBookmark ;
                       anexo_suministro.Refresh ;

              Try
                 anexo_suministro.GotoBookmark(SavePlace);
              Except
              Else
                anexo_suministro.FreeBookmark(SavePlace);
              End;

              except
               on e : exception do begin
                  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Salidas Almacen', 'Al eliminar registro', 0);
                end;
              end;
          end
           end;
End;


procedure TfrmSalidaAlmacen.frmBarra2btnRefreshClick(Sender: TObject);
begin
    //anexo_suministro.Active := False ;
    anexo_suministro.Refresh ;
end;

procedure TfrmSalidaAlmacen.frmBarra2btnCancelClick(Sender: TObject);
begin
  desactivapop(popupprincipal);
  ActivaBotones(False);
  frmBarra2.btnCancelClick(Sender);
  //Grid_Entradas.SetFocus ;
  BotonPermiso.permisosBotones(frmBarra2);

  Grid_Entradas.Enabled := True;
  DbTeLstContratos.Enabled:=true;
  ChkGbxRequisicion.Enabled:=true;
  anexo_suministro.cancel;
end;

procedure TfrmSalidaAlmacen.frmBarra2btnExitClick(Sender: TObject);
begin
  frmBarra2.btnExitClick(Sender);
  close
end;

procedure TfrmSalidaAlmacen.tdIdFechaEnter(Sender: TObject);
begin
    tdIdFecha.Color := global_color_entrada
end;

procedure TfrmSalidaAlmacen.tdIdFechaExit(Sender: TObject);
begin
    tdIdFecha.Color := global_color_salida
end;

procedure TfrmSalidaAlmacen.tdIdFechaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    tsTipomovimiento.SetFocus
end;

procedure TfrmSalidaAlmacen.tsOrigenKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tmComentarios.SetFocus
end;

procedure TfrmSalidaAlmacen.tsTipomovimientoEnter(Sender: TObject);
begin
 tsTipomovimiento.Color := global_color_entradaERP
end;

procedure TfrmSalidaAlmacen.tsTipomovimientoExit(Sender: TObject);
begin
  tsTipomovimiento.Color := global_color_salidaERP
end;

procedure TfrmSalidaAlmacen.tsTipomovimientoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsnumeroorden.SetFocus
end;

procedure TfrmSalidaAlmacen.txtNombreContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
    txtNombre.Color := global_color_salida
end;

procedure TfrmSalidaAlmacen.txtNombreEnter(Sender: TObject);
begin
    txtNombre.Color := global_color_entradaERP
end;

procedure TfrmSalidaAlmacen.txtNombreExit(Sender: TObject);
begin
    txtNombre.Color := global_color_salidaERP
end;

procedure TfrmSalidaAlmacen.txtNombreKeyPress(Sender: TObject; var Key: Char);
begin
      If Key = #13 Then
          tmComentarios.SetFocus
end;

procedure TfrmSalidaAlmacen.ValedeResguardo1Click(Sender: TObject);
begin
  If anexo_suministro.RecordCount > 0 Then
     begin
         Reporte.Active := False;
         Reporte.SQL.Clear;
         Reporte.SQL.Add('select alm.*, s.*, b.*, i.dExistencia, i.dCostoMN, i.mDescripcion, i.sMedida, i.sModelo, ma.sMarca, m.sDescripcion as Tipomovimiento from almacen_salida s '+
                         'inner join bitacoradesalida b '+
                         'on(b.sContrato = s.sContrato and b.iFolioSalida = s.iFolioSalida) '+
                         'inner join almacenes alm '+
                         'on (alm.sIdAlmacen = b.sIdAlmacen) '+
                         'inner join insumos i '+
                         'on ((:Principal=-1 or (:Principal<>-1 and i.sContrato = s.sContrato)) and i.sIdInsumo = b.sIdInsumo and i.sIdAlmacen =b.sidalmacen ) '+
                         'inner join movimientosdealmacen m '+
                         'on (m.sIdTipo = s.sIdTipo) '+
                         'inner join marcas ma on (i.sIdMarca=ma.sIdMarca) '+
                         'where s.sContrato =:Contrato and s.iFolioSalida =:Folio ');
         Reporte.ParamByName('Contrato').AsString     := anexo_suministro.FieldByName('sContrato').AsString ;
         Reporte.ParamByName('Folio').AsInteger        := anexo_suministro.FieldValues['iFolioSalida'];
         If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
            Reporte.ParamByName('Principal').AsInteger:=0
         else
            Reporte.ParamByName('Principal').AsInteger :=-1;
         Reporte.open;

         frxEntrada.PreviewOptions.MDIChild := False ;
         frxEntrada.PreviewOptions.Modal := True ;
         frxEntrada.PreviewOptions.Maximized := lCheckMaximized () ;
         frxEntrada.PreviewOptions.ShowCaptions := False ;
         frxEntrada.Previewoptions.ZoomMode := zmPageWidth ;
         frxEntrada.LoadFromFile (global_files + global_miReporte+'_ALMValeResguardo.fr3') ;
            if not FileExists(global_files + global_miReporte + '_ALMValeResguardo.fr3') then
           showmessage('El archivo de reporte '+global_Mireporte+'_ALMValeResguardo.fr3 no existe, notifique al administrador del sistema');
         frxEntrada.ShowReport; //(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

     end;
end;

procedure TfrmSalidaAlmacen.cxgsalidasCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
 llenado() ;
end;

procedure TfrmSalidaAlmacen.cxgsalidasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 llenado () ;
end;

procedure TfrmSalidaAlmacen.cxgsalidasKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 llenado () ;
end;

procedure TfrmSalidaAlmacen.Grid_PedidoCellClick(Column: TColumn);
begin
     if Pedido.RecordCount > 0 then
     begin
          tsInsumo.Text     := Pedido.FieldValues['sIdInsumo'];
          tdCantidad.Value  := Pedido.FieldValues['dExistencia'];
     end;
end;

procedure TfrmSalidaAlmacen.Grid_PedidoKeyPress(Sender: TObject;
  var Key: Char);
begin
       If Key = #13 Then
       begin
            tdCantidad.Value  := Pedido.FieldValues['dExistencia'];
            tdCantidad.SetFocus;
       end;
end;

procedure TfrmSalidaAlmacen.Grid_PedidoMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
     if Pedido.RecordCount > 0 then
     begin
          tsInsumo.Text     := Pedido.FieldValues['sIdInsumo'];
          tdCantidad.Value  := Pedido.FieldValues['dExistencia'];

     end;
end;

procedure TfrmSalidaAlmacen.iFolioChange(Sender: TObject);
begin
  TCurrenCiEditChangef(iFolio, 'No. Salida');
end;

procedure TfrmSalidaAlmacen.iFolioEnter(Sender: TObject);
begin
  ifolio.Color:= global_color_entradaERP;
end;

procedure TfrmSalidaAlmacen.iFolioExit(Sender: TObject);
begin
  ifolio.color:= global_color_salidaERP;
end;

procedure TfrmSalidaAlmacen.iFolioKeyPress(Sender: TObject; var Key: Char);
begin
if not keyFiltrotCurrencyEdit(iFolio,key) then
   key:=#0;
 if tdidfecha.Enabled=true then
  begin
  if key = #13 then
    tdidfecha.SetFocus
  end;
end;

procedure TfrmSalidaAlmacen.tmComentariosEnter(Sender: TObject);
begin
    tmComentarios.Color := global_color_entradaERP
end;

procedure TfrmSalidaAlmacen.tmComentariosExit(Sender: TObject);
begin
    tmComentarios.Color := global_color_salidaERP
end;


procedure TfrmSalidaAlmacen.tmComentariosKeyPress(Sender: TObject;
  var Key: Char);
begin
       If Key = #13 Then
       tsTipomovimiento.SetFocus;
end;

procedure TfrmSalidaAlmacen.tdCantidadChange(Sender: TObject);
begin
TRxCalcEditChangef(tdCantidad,'Cantidad');
end;

procedure TfrmSalidaAlmacen.tdCantidadEnter(Sender: TObject);
begin
    tdCantidad.Color := global_color_entradaERP;
end;

procedure TfrmSalidaAlmacen.tdCantidadExit(Sender: TObject);
begin
    tdCantidad.Color := global_color_salidaERP;
end;

procedure TfrmSalidaAlmacen.tdCantidadKeyPress(Sender: TObject; var Key: Char);
begin
  if not keyFiltroTRxCalcEdit(tdCantidad,key) then
   key:=#0;
  If Key = #13 Then
  Salvar.SetFocus;
end;

procedure TfrmSalidaAlmacen.tsAlmacenEnter(Sender: TObject);
begin
      tsAlmacen.Color := global_color_entradaERP;
end;

procedure TfrmSalidaAlmacen.tsAlmacenExit(Sender: TObject);
begin
    tsAlmacen.Color := global_color_salidaERP;
  if anexo_suministro.Active then
  begin
    if anexo_suministro.FieldByName('sNumFolio').AsString<>'' then
    begin
      PartidasRequisicion;
      ColumnRequerido.Visible:=True;
    end
    else
    begin
      ColumnRequerido.Visible:=False;

      Pedido.Active := False ;
      Pedido.SQL.Clear;
      Pedido.SQL.Add('Select sContrato, sIdInsumo, sTipoActividad, mDescripcion, dFechaInicio, dCostoMN, dCostoDLL, dVentaMN, dVentaDLL, sMedida, dCantidad, dInstalado, sIdFase, dPorcentaje, sIdGrupo, dNuevoPrecio,  '+
                   'dExistencia, LEFT(mDescripcion, 200) as Descripcion, 0.00 as requerido from insumos where (:Contrato=-1 or (:Contrato<>-1 and sContrato =:Contrato)) and sIdAlmacen =:Almacen ');
      If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
      Pedido.ParamByName('Contrato').AsString := global_contrato
      else
      Pedido.ParamByName('Contrato').AsInteger :=-1;
      Pedido.Params.ParamByName('Almacen').AsString    := tsAlmacen.KeyValue ;
      Pedido.Open ;
    end;
  end;
end;

procedure TfrmSalidaAlmacen.tsAlmacenKeyPress(Sender: TObject; var Key: Char);
begin
 if tsinsumo.Enabled=true then
  begin
  if key = #13 then
    Grid_Pedido.SetFocus;
  end;
end;

procedure TfrmSalidaAlmacen.tsFamiliaKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
        tdCantidad.SetFocus
end;

procedure TfrmSalidaAlmacen.tsInsumoEnter(Sender: TObject);
begin
    tsInsumo.Color := global_color_entrada
end;

procedure TfrmSalidaAlmacen.tsInsumoExit(Sender: TObject);
begin
      tsInsumo.Color := global_color_salida;  
end;

procedure TfrmSalidaAlmacen.tsInsumoKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       grid_pedido.SetFocus;

end;

procedure TfrmSalidaAlmacen.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tdCantidad.SetFocus
end;

procedure TfrmSalidaAlmacen.mComentariosKeyPress(Sender: TObject;
  var Key: Char);
begin
      If Key = #13 Then
        frmBarra1.btnPost.SetFocus
end;

procedure TfrmSalidaAlmacen.mDescripcionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tdcantidad.SetFocus
end;

procedure TfrmSalidaAlmacen.PedidoAfterScroll(DataSet: TDataSet);
begin
  if Pedido.RecordCount > 0 then
   begin
        tsInsumo.Text     := Pedido.FieldValues['sIdInsumo'];
        if anexo_suministro.FieldByName('sNumFolio').AsString<>'' then
          tdCantidad.Value  := Pedido.FieldByname('requerido').AsFloat
        else
          tdCantidad.Value  := Pedido.FieldValues['dExistencia'];
   end;
end;

procedure TfrmSalidaAlmacen.Pegar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftpegar)
end;

procedure TfrmSalidaAlmacen.PgControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange:=True;
  if anexo_suministro.State in [dsInsert,dsEdit] then
    AllowChange:=false;
end;

procedure TfrmSalidaAlmacen.pSalidasAfterScroll(DataSet: TDataSet);
begin
  if GridPartidasView.ItemCount  > 1 then
    if pSalidas.RecordCount > 0 then
    begin
      GridPartidas.Hint  := pSalidas.FieldValues['mDescripcion'];
      IdInsumo           := pSalidas.FieldValues['sIdInsumo'];
      Cantidad           := pSalidas.FieldValues['dCantidad'];
      tsInsumo.Text      := pSalidas.FieldValues['sIdInsumo'];
      tsAlmacen.KeyValue := pSalidas.FieldValues['sIdAlmacen'];
      tdCantidad.Value   := pSalidas.FieldValues['dCantidad'];
    end;
end;

procedure TfrmSalidaAlmacen.frxEntradaGetValue(const VarName: String; var Value: Variant);
var
  zConsulta,zFirmas : TZQuery;
  sSQL      : string;
begin
  If CompareText(VarName, 'TIPO_ENTRADA') = 0 then
      Value := '' ;

  If CompareText(VarName, 'FECHA') = 0 then
      Value := anexo_suministro.FieldByName('dFechaSalida').AsDateTime ;


  If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
      Value := sSuperIntendente ;
  If CompareText(VarName, 'SUPERVISOR') = 0 then
      Value := sSupervisor ;
  If CompareText(VarName, 'SUPERVISOR_TIERRA') = 0 then
      Value := sSupervisorTierra ;

  If CompareText(VarName, 'PUESTO_SUPERINTENDENTE') = 0 then
      Value := sPuestoSuperIntendente ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR') = 0 then
      Value := sPuestoSupervisor ;
  If CompareText(VarName, 'PUESTO_SUPERVISOR_TIERRA') = 0 then
      Value := sPuestoSupervisorTierra ;

  zFirmas := TZQuery.Create(self);
  zFirmas.Connection := connection.zConnection;
  zFirmas.Active := False;
  zFirmas.SQL.Clear;
  zFirmas.SQL.Add('SELECT sNombre FROM almacen_salida WHERE sContrato = :Contrato AND sFolioSalida = :FSalida');
  zFirmas.Params.ParamByName('Contrato').DataType := ftString;
  zFirmas.Params.ParamByName('Contrato').Value    := anexo_suministro.FieldByName('sContrato').AsString;
  zFirmas.Params.ParamByName('FSalida').DataType  := ftString;
  zFirmas.Params.ParamByName('FSalida').Value     := edtFolio.Text;
  zFirmas.Open;

   connection.QryBusca2.Active := False;
   connection.QryBusca2.SQL.Clear;
   connection.QryBusca2.SQL.Add('select mDescripcion FROM contratos where sContrato =:Contrato ');
   connection.QryBusca2.ParamByName('Contrato').AsString := anexo_suministro.FieldByName('sContrato').AsString ;
   connection.QryBusca2.Open;
   if CompareText(VarName, 'DESCRIPCION') = 0 then
       Value := connection.QryBusca2.FieldByNAme('mDescripcion').AsString;

  zConsulta := TZQuery.Create(self);
  zConsulta.Connection := connection.zConnection;
  zConsulta.Active := False;
  zConsulta.SQL.Clear;
  zConsulta.SQL.Add('SELECT sNombre FROM usuarios WHERE sIdUsuario = :Usuario');
  zConsulta.Params.ParamByName('Usuario').AsString := global_usuario;
  zConsulta.Open;

  if zFirmas.RecordCount>0 then begin
    If CompareText(VarName, 'ENTREGA_FIRMA') = 0 then
        Value := zConsulta.FieldValues['sNombre'];
    If CompareText(VarName, 'RECIBE_FIRMA') = 0 then
        Value := zFirmas.FieldValues['sNombre'];
  end;
  zConsulta.free;
end;

procedure TfrmSalidaAlmacen.ComentariosAdicionalesClick(Sender: TObject);
begin
    Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
    frmComentariosxAnexo.show ;
end;

procedure TfrmSalidaAlmacen.Copiar1Click(Sender: TObject);
begin
ModificarPortaPapeles(self.ActiveControl, ftcopiar)
end;

procedure TfrmSalidaAlmacen.cxgGridReqCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if Pedido.RecordCount > 0 then
   begin
        tsInsumo.Text     := Pedido.FieldValues['sIdInsumo'];
        //tdCantidad.Value  := Pedido.FieldValues['dExistencia'];
         if anexo_suministro.FieldByName('sNumFolio').AsString<>'' then
          tdCantidad.Value  := Pedido.FieldByname('requerido').AsFloat
        else
          tdCantidad.Value  := Pedido.FieldValues['dExistencia'];
   end;
end;

procedure TfrmSalidaAlmacen.cxgGridReqKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 Then
   begin
     if anexo_suministro.FieldByName('sNumFolio').AsString<>'' then
        tdCantidad.Value  := Pedido.FieldByname('requerido').AsFloat
      else
        tdCantidad.Value  := Pedido.FieldValues['dExistencia'];
        //tdCantidad.Value  := Pedido.FieldValues['dExistencia'];
        tdCantidad.SetFocus;
   end;
end;

procedure TfrmSalidaAlmacen.cxgGridReqMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
   if Pedido.RecordCount > 0 then
   begin
        tsInsumo.Text     := Pedido.FieldValues['sIdInsumo'];
         if anexo_suministro.FieldByName('sNumFolio').AsString<>'' then
          tdCantidad.Value  := Pedido.FieldByname('requerido').AsFloat
        else
          tdCantidad.Value  := Pedido.FieldValues['dExistencia'];
        //tdCantidad.Value  := Pedido.FieldValues['dExistencia'];
   end
end;

procedure TfrmSalidaAlmacen.GridPartidasViewCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   if pSalidas.RecordCount > 0 then
   begin
       GridPartidas.Hint  := pSalidas.FieldValues['mDescripcion'];
       IdInsumo           := pSalidas.FieldValues['sIdInsumo'];
       Cantidad           := pSalidas.FieldValues['dCantidad'];
       tsInsumo.Text      := pSalidas.FieldValues['sIdInsumo'];
       tsAlmacen.KeyValue := pSalidas.FieldValues['sIdAlmacen'];
       tdCantidad.Value   := pSalidas.FieldValues['dCantidad'];
   end;
end;

procedure TfrmSalidaAlmacen.dbPartidasKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    grid_pedido.SetFocus
end;

procedure TfrmSalidaAlmacen.DbPoEdtContratosPropertiesChange(Sender: TObject);
begin
  if anexo_suministro.State in [dsInsert,dsEdit] then
    if TcxDBPopupEdit(Sender).Text<>'' then
      SetDatos;

  ChkGbxRequisicionPropertiesChange(Sender);
end;

procedure TfrmSalidaAlmacen.DbPoEdtContratosPropertiesInitPopup(
  Sender: TObject);

begin
  DbTeLstContratos.Width:=TcxDBPopupEdit(Sender).Width;
  if anexo_suministro.State in [dsInsert,dsEdit] then
    with TcxDBPopupEdit(Sender) do
    begin

      if QReferencia.Locate('sNumeroOrden',anexo_suministro.FieldByName('sNumeroOrden').AsString, []) then
        DbTeLstContratos.TopVisibleNode := DbTeLstContratos.FocusedNode;

    end;
end;

procedure TfrmSalidaAlmacen.DbTeLstContratosDblClick(Sender: TObject);
begin
  if anexo_suministro.State in [dsInsert,dsEdit] then
    SetDatos;
end;

procedure TfrmSalidaAlmacen.DbTeLstContratosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if anexo_suministro.State in [dsInsert,dsEdit] then
    if Key = VK_RETURN then
      SetDatos;
end;

procedure TfrmSalidaAlmacen.tdFechaAvisoKeyPress(Sender: TObject;
  var Key: Char);
begin
    If Key = #13 Then
        tsNumeroOrden.SetFocus 
end;

procedure TfrmSalidaAlmacen.tsNumeroOrdenEnter(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_entradaERP
end;

procedure TfrmSalidaAlmacen.tsNumeroOrdenExit(Sender: TObject);
begin
    tsNumeroOrden.Color := global_color_salidaERP
end;

procedure TfrmSalidaAlmacen.tsNumeroOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
       If Key = #13 Then
          txtNombre.SetFocus
end;

procedure TfrmSalidaAlmacen.ActivaBotones(Sender: Boolean);
begin
    if sender then
    begin

        tsNumeroOrden.Enabled   := True ;
        tmComentarios.ReadOnly  := False ;
        tdIdFecha.Enabled      := true ;
        txtNombre.ReadOnly:=False;
        //aqui entra al agregar/editar

    end
    else
    begin
         iFolio.ReadOnly        := True ;
         tdIdFecha.Enabled      := False ;
         tsNumeroOrden.Enabled  := False ;
         tmComentarios.ReadOnly := True ;
         tdCantidad.ReadOnly    := True ;      ///Aqui entra al Cancelar
         edtFolio.ReadOnly:=True;
         txtNombre.ReadOnly:=True;
    end;
end;

procedure TfrmSalidaAlmacen.ActivaBotones2(Sender: Boolean);
begin
    if sender then
    begin
        tdCantidad.Enabled := True;
        tsInsumo.Enabled   := True;
    end
    else
    begin
        tdCantidad.Enabled := False;
        tsInsumo.Enabled   := False;
    end;    
end;

procedure TfrmSalidaAlmacen.AgregarClick(Sender: TObject);
begin
     tsInsumo.text := '';
     tdCantidad.Text  := '';
     If (anexo_suministro.RecordCount > 0) Then
     Begin
          if anexo_suministro.FieldValues['sEstatus'] = 'AUTORIZADO' then
          begin
             messageDLG('La Salida de Material se encuentra Autorizada.', mtInformation, [mbOk], 0);
             exit;
          end;
          OpcButton := 'New';
          Agregar.Enabled  := False ;
          Editar.Enabled   := False ;
          Salvar.Enabled   := True ;
          Cancelar.Enabled := True ;
          Eliminar.Enabled := False ;
          Imprimir.Enabled := False ;
          ActivaBotones2(true);
          tsInsumo.ReadOnly   := False;
          tdCantidad.ReadOnly := False;
          tsAlmacen.Enabled   := True;
          grid_pedido.Enabled := True;
          if anexo_suministro.FieldByName('sNumFolio').AsString<>'' then
          begin
            PartidasRequisicion;
            ColumnRequerido.Visible:=True;
          end
          else
            ColumnRequerido.Visible:=False;

    End;
  BotonPermiso.permisosBotones(frmBarra1);

  Grid_Pedido.Enabled:=True;
  Crear_Form(PanelInsumos, 'Catalogo de Materiales', 288, 966, [])
end;


procedure TfrmSalidaAlmacen.btn1Click(Sender: TObject);
begin

   if True then
  global_frmActivo := 'frmMovtos';
  Application.CreateForm(TfrmMovtos,frmMovtos);
    frmMovtos.show

end;

procedure TfrmSalidaAlmacen.btn2Click(Sender: TObject);
begin
   if True then
  global_frmActivo := 'frm_salidaalmacen';
  Application.CreateForm(TfrmOrdenes,frmOrdenes);
  frmOrdenes.Show;
end;

procedure TfrmSalidaAlmacen.CargarFrentes;
begin
  try
    Connection.qryBusca.Close;
    if Not CrearConjunto(Connection.qryBusca, 'ordenesdetrabajo_soloorden', ccSelect) then
      raise InteligentException.CreateByCode(5, ['Ordenes de Trabajo']);

    {Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select sNumeroOrden from ordenesdetrabajo where sContrato = :Contrato and ' +
                                'cIdStatus = :status order by sNumeroOrden');}
    Connection.qryBusca.Params.ParamByName('sContrato').AsString := Global_Contrato;
    Connection.qryBusca.Params.ParamByName('cIdStatus').AsString := Connection.Configuracion.FieldByName('cStatusProceso').AsString;
    Connection.qryBusca.Open ;

    if Connection.QryBusca.RecordCount = 0 then
      raise InteligentException.CreateByCode(22, ['Ordenes de Trabajo']);

    While NOT Connection.qryBusca.Eof Do
    Begin
      tsNumeroOrden.Items.Add(Connection.qryBusca.FieldValues['sNumeroOrden']) ;
      Connection.qryBusca.Next
    End;

    tsNumeroOrden.ItemIndex := 0 ;
  finally
    Connection.QryBusca.Close;
  end;
end;

procedure TfrmSalidaAlmacen.ChkGbxRequisicionPropertiesChange(Sender: TObject);
begin
  if ChkGbxRequisicion.CheckBox.Checked then
  begin
     Requisicion.Active := False ;
     Requisicion.SQL.Clear ;
     Requisicion.SQL.Add('select sNumFolio from anexo_requisicion Where sContrato = :Contrato and sStatus = "AUTORIZADO" ' +
                        'and sEstado = "PENDIENTE" ') ;

     if connection.contrato.FieldByName('sTipoObra').AsString='PRINCIPAL' then
        Requisicion.ParamByName('Contrato').AsString:= DbTeLstContratos.FocusedNode.Values[0]
      else
        Requisicion.Params.ParamByName('Contrato').AsString := global_contrato ;
     Requisicion.Open ;
     if requisicion.RecordCount > 0 then
        begin
          cbbRequisicion.Clear;
            while not requisicion.Eof do
             begin
               cbbRequisicion.Items.Add(requisicion.FieldValues['sNumFolio']);
               requisicion.Next;
             end;
        end;

    if anexo_suministro.State in [dsInsert,dsEdit] then
    begin
      QRequisiciones.Close;
      if connection.contrato.FieldByName('sTipoObra').AsString='PRINCIPAL' then
        QRequisiciones.ParamByName('Contrato').AsString:= qReferencia.FieldByName('sContrato').AsString
      else
        QRequisiciones.ParamByName('Contrato').AsString:=global_contrato;
      QRequisiciones.ParamByName('sNumFolio').AsInteger:=-1;
      QRequisiciones.Open;
    end;
  end;
end;

procedure TfrmSalidaAlmacen.Llenado() ;
begin
  if anexo_suministro.RecordCount > 0 then
  begin
    if anexo_suministro.State = dsBrowse then
    begin
          iFolio.Value           := anexo_suministro.FieldValues['iFolioSalida'];
          cbbRequisicion.Text    := anexo_suministro.FieldByName('sNumFolio').AsString;
          tdIdFecha.Date         := anexo_suministro.FieldValues['dFechaSalida'];
          tsNumeroOrden.Text     := anexo_suministro.FieldValues['sNumeroOrden'];
          txtNombre.Text         := anexo_suministro.FieldValues['sNombre'];
          edtTransporta.Text     :=  anexo_suministro.FieldByName('sNombreTransporta').AsString;
          tmComentarios.Text     := anexo_suministro.FieldValues['mComentarios'];
          edtFolio.Text:=anexo_suministro.FieldByName('sfoliosalida').AsString;
          tsNumeroOrden.ItemIndex:=tsNumeroOrden.Items.IndexOf(anexo_suministro.FieldByname('sNumeroOrden').AsString);

          QRequisiciones.Close;
          QRequisiciones.ParamByName('Contrato').AsString:= anexo_suministro.FieldByName('sContrato').AsString;
          QRequisiciones.ParamByName('sNumFolio').AsString:= anexo_suministro.FieldByName('sNumFolio').AsString;
          QRequisiciones.Open;
          
          pSalidas.Active := False;
          pSalidas.ParamByName('Contrato').AsString    := anexo_suministro.FieldByName('sContrato').AsString;
          pSalidas.ParamByName('Folio').AsInteger      := anexo_suministro.FieldValues['iFolioSalida'];
          If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
            pSalidas.ParamByName('Principal').AsInteger:=0
          else
            pSalidas.ParamByName('Principal').AsInteger :=-1;
          pSalidas.Open;
    end;
  end;
end;
End.

