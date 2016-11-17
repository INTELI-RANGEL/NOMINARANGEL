unit Frm_EstatusOrdenCompra;

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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  dxLayoutContainer, dxLayoutControl, cxCheckBox, dxLayoutcxEditAdapters,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, cxCheckGroup,
  dxLayoutControlAdapters, Menus, StdCtrls, cxButtons, ZAbstractRODataset,
  ZDataset, cxCurrencyEdit, frxClass, frxDBSet, ZAbstractDataset;

type
  TFrmEstatusOrdenCompra = class(TForm)
    GBx1: TcxGroupBox;
    GBx2: TcxGroupBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    ChkCmbContratos: TcxCheckComboBox;
    dxLayoutControl1Item1: TdxLayoutItem;
    ChkGrEstatus: TcxCheckGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    btnConsulta: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    pmLista: TPopupMenu;
    mniMarcar: TMenuItem;
    mniDesmarcar: TMenuItem;
    QrConsulta: TZReadOnlyQuery;
    dsConsulta: TDataSource;
    Grid_Entradas: TcxGrid;
    dbg_OCVista: TcxGridDBTableView;
    Col_ifoliopedido: TcxGridDBColumn;
    Col_ordenCompra: TcxGridDBColumn;
    Col_fecha: TcxGridDBColumn;
    Col_fechasuministro: TcxGridDBColumn;
    Col_montomn: TcxGridDBColumn;
    Col_status: TcxGridDBColumn;
    Col_grid_EntradasDBTableView1Column1: TcxGridDBColumn;
    Col_Contacto: TcxGridDBColumn;
    Col_autorizo: TcxGridDBColumn;
    Col_folio: TcxGridDBColumn;
    Col_Frente: TcxGridDBColumn;
    Col_lugarentrega: TcxGridDBColumn;
    dbgLevOC: TcxGridLevel;
    zimgfirmas: TZQuery;
    anexo_zimgfirmasbimagen14: TBlobField;
    anexo_zimgfirmasbimagen16: TBlobField;
    zimgfirmasbImagen14Sello: TBlobField;
    Reporte: TZQuery;
    RptReporte: TfrxReport;
    frxDBReporte: TfrxDBDataset;
    datasetfrximgfirmas: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mniMarcarClick(Sender: TObject);
    procedure mniDesmarcarClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure RptReporteGetValue(const VarName: string; var Value: Variant);
    procedure dbg_OCVistaDblClick(Sender: TObject);

  private
    { Private declarations }
    MontoTotal,MontoSinIva:Double;
    procedure SetSelection(IsSelect:Boolean=True);
    function GetEstatus:string;
  public
    { Public declarations }
  end;

var
  FrmEstatusOrdenCompra: TFrmEstatusOrdenCompra;

implementation

uses frm_connection, global, Utilerias, UnitExcepciones,Math;



{$R *.dfm}

function TFrmEstatusOrdenCompra.GetEstatus:String;
var
  CadRes:string;
begin
  CadRes:='';
  if ChkGrEstatus.States[0]=cbsChecked then
    if CadRes='' then
      CadRes:='PENDIENTE'
    else
      CadRes:=CadRes + ',PENDIENTE';

  if ChkGrEstatus.States[1]=cbsChecked then
    if CadRes='' then
      CadRes:='VALIDADO'
    else
      CadRes:=CadRes + ',VALIDADO';
      
  if ChkGrEstatus.States[2]=cbsChecked then
    if CadRes='' then
      CadRes:='AUTORIZADO'
    else
      CadRes:=CadRes + ',AUTORIZADO';

  Result:=CadRes;
end;

procedure TFrmEstatusOrdenCompra.SetSelection(IsSelect:Boolean=True);
var
  i:Integer;
begin
  with ChkCmbContratos.Properties do
    for I := 0  to Items.Count - 1 do
      if IsSelect then
        ChkCmbContratos.States[I] := cbsChecked
      else
        ChkCmbContratos.States[I] := cbsUnchecked;

end;

procedure TFrmEstatusOrdenCompra.btnConsultaClick(Sender: TObject);
begin
  QrConsulta.Active:=False;

  QrConsulta.ParamByName('Contrato').AsString:=ChkCmbContratos.Text;
  QrConsulta.ParamByName('estatus').AsString:=GetEstatus;
  QrConsulta.Open;
end;

procedure TFrmEstatusOrdenCompra.dbg_OCVistaDblClick(Sender: TObject);
var
  sNameFile,sCampo,sLeyenda:string;
  dIVA:Double;
begin
  if (QrConsulta.Active) and (QrConsulta.RecordCount>0) then
  
  try
    rDiarioFirmas(QrConsulta.FieldByName('sContrato').AsString,QrConsulta.FieldByName('sNumeroOrden').AsString, 'A', QrConsulta.FieldByNAme('dIdFecha').AsDateTime, self);
    sCampo:='sOrdenCompra';
    sLeyenda:='Orden Compra';

    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select Sum(r.dCantidad * r.dCosto) as dMontoMN From anexo_ppedido r ' +
    'Where r.sContrato = :Contrato And r.iFolioPedido = :Folio and r.aplicaIva="Si" Group By r.iFolioPedido');
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Contrato').Value := QrConsulta.FieldByName('sContrato').AsString;
    connection.qryBusca.Params.ParamByName('Folio').DataType := ftInteger;
    connection.qryBusca.Params.ParamByName('Folio').Value := QrConsulta.FieldValues['iFolioPedido'];
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
    MontoTotal := Connection.qryBusca.fieldValues['dMontoMN']-QrConsulta.FieldValues['dDescuento'];

    MontoSinIva:=0;
    Connection.qryBusca.Active := False;
    Connection.qryBusca.SQL.Clear;
    Connection.qryBusca.SQL.Add('Select Sum(r.dCantidad * r.dCosto) as dMontoMN From anexo_ppedido r ' +
    'Where r.sContrato = :Contrato And r.iFolioPedido = :Folio and r.aplicaIva="No" Group By r.iFolioPedido');
    connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('Contrato').Value := QrConsulta.FieldByName('sContrato').AsString;
    connection.qryBusca.Params.ParamByName('Folio').DataType := ftInteger;
    connection.qryBusca.Params.ParamByName('Folio').Value := QrConsulta.FieldValues['iFolioPedido'];
    Connection.qryBusca.Open;
    if Connection.qryBusca.RecordCount > 0 then
      MontoSinIva := Connection.qryBusca.fieldValues['dMontoMN']-QrConsulta.FieldValues['dDescuento'];

    zimgfirmas.Active := False ;
    zimgfirmas.Params.ParamByName('Contrato').Value := QrConsulta.FieldByName('sContrato').AsString ;
    zimgfirmas.Params.ParamByName('Orden').Value    := QrConsulta.FieldByName('sNumeroOrden').AsString;
    zimgfirmas.Params.ParamByName('Fecha').Value    := QrConsulta.FieldValues['dIdFecha'];
    zimgfirmas.Open ;

    Reporte.Active := False ;
    Reporte.SQL.Text:='Select fp.sDescripcion as fp, a1.sComentarioPart, a2.*, p.*, a1.iItem, a1.dCantidad, a1.mDescripcion, a1.sMedida, a1.dCosto, a3.iItemOrden, u.sNombre as sElabora, '+
                      'm.sDescripcion as moneda, (a1.dCosto - a1.dDescuento) as DescuentoMat, ' +
                      'a1.sIdInsumo,a1.aplicaIva, i.sModelo, ma.sMarca, a1.sNumeroActividad, ar.mComentarios as mComReq, ar.lCertificados, ar.lHojas '+
                      'from anexo_ppedido a1 ' +
                      'inner join anexo_pedidos a2 on (a1.sContrato = a2.sContrato and a1.iFolioPedido = a2.iFolioPedido) ' +
                      'left join actividadesxanexo a3 on (a3.sContrato = a1.sContrato and a3.sIdConvenio =:Convenio ' +
                      'and a3.sNumeroActividad = a1.sNumeroActividad and a3.sTipoActividad ="Actividad") ' +
                      'inner join proveedores p on (a2.sIdProveedor = p.sIdProveedor) ' +
                      'left join usuarios u on (u.sIdUsuario = a2.sElaboro) ' +
                      'inner join tiposdemoneda m on (a2.sMoneda = m.sIdMoneda) ' +
                      'left join almacenes alm on (alm.lPrincipal = "Si") '+
                      'inner join insumos i on (alm.sIdAlmacen = i.sIdAlmacen and a1.sIdInsumo=i.sIdInsumo) '+
                      'left join marcas ma on (i.sIdMarca=ma.sIdMarca) '+
                      'Inner Join formas_pago fp On (fp.sIdFormaPago=a2.sFormaPago)' +
                      'left join anexo_requisicion ar on (a2.sContrato=ar.sContrato And FIND_IN_SET(ar.sNumFolio,a2.sFolioRequisicion))'+
                      'Where a1.sContrato = :Contrato And a1.iFolioPedido = :Folio group by a1.sIdInsumo,a1.iItem order by a3.iItemOrden ';

    Reporte.Params.ParamByName('Contrato').DataType := ftString ;
    Reporte.Params.ParamByName('Contrato').Value    := QrConsulta.FieldByName('sContrato').AsString ;

    Reporte.Params.ParamByName('Folio').DataType      := ftInteger;
    Reporte.Params.ParamByName('Folio').Value         := QrConsulta.FieldValues['iFolioPedido'];

    if QrConsulta.FieldValues['sFolioRequisicion'] <> '' then
    begin
      Reporte.Params.ParamByName('Convenio').DataType := ftString;
      Reporte.Params.ParamByName('Convenio').Value    := global_convenio;
    end;


    Reporte.Open ;

    if Reporte.RecordCount>0 then
    begin
      frxDBReporte.FieldAliases.Clear;

      RptReporte.LoadFromFile(global_files + global_miReporte + '_ALMOrdCompra.fr3');
      dIVA := (QrConsulta.FieldByNAme('dIVA').asfloat / 100);
      RptReporte.Variables.Variables['MONTOIVA']:= roundto(Montototal * dIVA, -2) ;

      RptReporte.ShowReport();

    end;

  except
    on e : exception do
    begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Requisicion de Materiales', 'Al imprimir', 0);
    end;

  end;
end;


procedure TFrmEstatusOrdenCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrmEstatusOrdenCompra.FormShow(Sender: TObject);
var
  QrContratos:TzReadonlyQuery;
begin
  QrContratos:=TZReadOnlyQuery.Create(nil);
  try
    QrContratos.Connection:=connection.zConnection;
    QrContratos.SQL.Text:='select *,concat_ws(".-",sContrato,MID(mDescripcion,1,100)) as descripcion from contratos where (:contrato=-1 or (:Contrato<>-1 and sContrato=:Contrato))';
    if connection.contrato.FieldByName('sTipoObra').AsString='PRINCIPAL' then
      QrContratos.ParamByName('contrato').AsInteger:=-1
    else
      QrContratos.ParamByName('contrato').AsString:=global_contrato;
    QrContratos.Open;

    while not QrContratos.Eof do
    begin
      with ChkCmbContratos.Properties.Items.Add do
      begin
        Description:=QrContratos.FieldByName('Descripcion').AsString;
        ShortDescription:=QrContratos.FieldByName('sContrato').AsString;
      end;

      QrContratos.Next;
    end;
  finally
    QrContratos.Destroy;
  end;
end;

procedure TFrmEstatusOrdenCompra.mniDesmarcarClick(Sender: TObject);
begin
  SetSelection(False);
end;

procedure TFrmEstatusOrdenCompra.mniMarcarClick(Sender: TObject);
begin
  SetSelection
end;

procedure TFrmEstatusOrdenCompra.RptReporteGetValue(const VarName: string;
  var Value: Variant);
Var
  sCadena : String ;
  iValorNumerico   : LongInt  ;
  Resultado        : Real     ;
  zConsulta  : TZQuery;
  sSQL       : string;
  iva: Currency;
  dIVA: double;
  Tipo_Moneda: string;
begin
  if CompareText(VarName, 'CANTIDAD_LETRA') = 0 then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select dIVA,sDescripcionCorta, sDescripcion, sSigla from tiposdemoneda where sIdMoneda =:Moneda');
    connection.zCommand.ParamByName('Moneda').AsString := QrConsulta.FieldValues['sMoneda'];
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
      dIVA := (QrConsulta.FieldValues['dIVA'] / 100)
    else
      dIVA := 1;

    iVa := (Montototal * dIVA);
    MontoTotal := roundto(Montototal + iva + MontoSinIva, -2) ;
    iValorNumerico := Trunc(Montototal);
    sCadena := xIntToLletres(iValorNumerico);
    Resultado := roundto(MontoTotal - iValorNumerico, -2);
    Resultado := Resultado * 100;
    iValorNumerico := Trunc(Resultado);
    if QrConsulta.FieldValues['dCambio'] > 0 then
      Tipo_Moneda:='MONEDA NACIONAL'
    else
      Tipo_Moneda:=connection.zCommand.FieldByName('sDescripcion').AsString;

    if iValorNumerico<10 then
      sCadena := sCadena+ ' ' + connection.zCommand.FieldValues['sDescripcioncorta'] + ', 0' + IntToStr(iValorNumerico) + '/100 ' + connection.zCommand.FieldByName('sSigla').AsString
    else
      sCadena := sCadena +  ' ' + connection.zCommand.FieldValues['sDescripcioncorta'] + ', ' + IntToStr(iValorNumerico) + '/100 ' + connection.zCommand.FieldByName('sSigla').AsString;
    Value := sCadena
  end;

  if CompareText(VarName, 'TipoMoneda') = 0 then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select dIVA,sDescripcionCorta, sDescripcion, sSigla from tiposdemoneda where sIdMoneda =:Moneda');
    connection.zCommand.ParamByName('Moneda').AsString := QrConsulta.FieldValues['sMoneda'];
    connection.zCommand.Open;
    if QrConsulta.FieldValues['dCambio'] > 0 then
      Tipo_Moneda:='MONEDA NACIONAL'
    else
      Tipo_Moneda:=connection.zCommand.FieldByName('sDescripcion').AsString;
    Value:=Tipo_Moneda;
  end;

  sSQL := 'SELECT * FROM firmas WHERE sContrato = :contrato and sNumeroOrden =:Orden AND dIdFecha <= :fecha ORDER BY dIdFecha DESC';
  zConsulta := TZQuery.Create(self);
  zConsulta.Connection := connection.zConnection;
  zConsulta.Active := False;
  zConsulta.SQL.Clear;
  zConsulta.SQL.Add(sSQL);
  zConsulta.Params.ParamByName('contrato').DataType := ftString;
  zConsulta.Params.ParamByName('contrato').Value    := QrConsulta.FieldByName('sContrato').AsString;
  zConsulta.Params.ParamByName('orden').DataType    := ftString;
  zConsulta.Params.ParamByName('orden').Value       := QrConsulta.FieldByName('sNUmeroOrden').AsString ;
  zConsulta.Params.ParamByName('fecha').DataType    := ftDate;
  zConsulta.Params.ParamByName('fecha').Value       := QrConsulta.FieldValues['dIdFecha'];
  zConsulta.Open;
  if zConsulta.RecordCount > 0 then
  begin
    if CompareText(VarName, 'REALIZO_PUESTO') = 0 then
      Value := zConsulta.FieldValues['sPuesto14'];
    if CompareText(VarName, 'REVISO_PUESTO') = 0 then
      Value := zConsulta.FieldValues['sPuesto15'];
    if CompareText(VarName, 'AUTORIZO_PUESTO') = 0 then
      Value := zConsulta.FieldValues['sPuesto16'];
    if CompareText(VarName, 'REALIZO_FIRMA') = 0 then
      Value := zConsulta.FieldValues['sFirmante14'];

    if CompareText(VarName, 'FIRMA1D') = 0 then
      Value := zConsulta.FieldValues['sFirmante14'];

    if CompareText(VarName, 'REVISO_FIRMA') = 0 then
      Value := zConsulta.FieldValues['sFirmante15'];
    if CompareText(VarName, 'AUTORIZO_FIRMA') = 0 then
      Value := zConsulta.FieldValues['sFirmante16'];
  end
  else
  begin
    if CompareText(VarName, 'REALIZO_PUESTO') = 0 then
      Value := '';
    if CompareText(VarName, 'REVISO_PUESTO') = 0 then
      Value := '';
    if CompareText(VarName, 'AUTORIZO_PUESTO') = 0 then
      Value := '';
    if CompareText(VarName, 'REALIZO_FIRMA') = 0 then
      Value := '';
    if CompareText(VarName, 'REVISO_FIRMA') = 0 then
      Value := '';
    if CompareText(VarName, 'AUTORIZO_FIRMA') = 0 then
      Value := '';
  end;
  zConsulta.free;

end;

end.