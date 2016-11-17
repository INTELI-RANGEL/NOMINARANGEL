unit Frm_ExportPDF;

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
  cxProgressBar, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, dxmdaset,StrUtils,Math, ExtCtrls, AeroLabel, StdCtrls, JvExStdCtrls,
  JvWinampLabel, cxLabel, Frm_SendMail;

type
  TFrmExportPdf = class(TForm)
    frxDBReporte: TfrxDBDataset;
    MdDatos: TdxMemData;
    Reporte: TZQuery;
    tmrStart: TTimer;
    RptReporte: TfrxReport;
    ProgresoExport: TcxProgressBar;
    cxlbl1: TcxLabel;
    zimgfirmas: TZQuery;
    anexo_zimgfirmasbimagen14: TBlobField;
    anexo_zimgfirmasbimagen16: TBlobField;
    zimgfirmasbImagen14Sello: TBlobField;
    datasetfrximgfirmas: TfrxDBDataset;
    procedure frxEntradaGetValue(const VarName: string; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure tmrStartTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    const
      SqlReportes:array[1..2] of string=( 'Select a2.*, a1.iItem, a1.dCantidad, a1.mDescripcion, a1.sMedida, a1.dFechaRequerimiento,' + #13#10 +
                                        'a1.sNumeroActividad,a1.iFolioRequisicion, a2.sNumFolio, a2.sPrioridad, a2.mObsUrgencia, a1.dCosto, '+
                                        'i.dCostoMN, a3.iItemOrden, a1.sIdInsumo,if(i.dexistencia>0,''X'','''') as esi,' + #13#10 +
                                        'if(i.dexistencia<=0,''X'','''') as eno,i.sModelo,i.sNumeroserie,i.dexistencia,' + #13#10 +
                                        'm.sMarca,d.sdescripcion as departamento,p.sdescripcion as lugarentrega,' + #13#10 +
                                        'ot.sdescripcioncorta as destino,ot.mdescripcion as mreferencia,u.sNombre as AutorizoR,'+
                                        'u.sPuesto as CargoAutorizo,u2.sPuesto as cargosolicito,fm.sIdFamilia,' + #13#10 +
                                        'fm.sDescripcion as Familia' + #13#10 +
                                        'from anexo_prequisicion a1' + #13#10 +
                                        'inner join anexo_requisicion a2 '+
                                        'on (a1.sContrato = a2.sContrato And a1.iFolioRequisicion = a2.sNumFolio)' + #13#10 +
                                        'left join actividadesxanexo a3 '+
                                        'on (a3.sContrato = a1.sContrato and a3.sIdConvenio =:Convenio' + #13#10 +
                                        'and a3.sNumeroActividad = a1.sNumeroActividad and a3.sTipoActividad =''Actividad'')' + #13#10 +
                                        'inner join insumos i '+
                                        'on ((:Principal=''Si'' or (:Principal=''No'' and a1.sContrato = i.sContrato)) and a1.sIdInsumo =i.sIdInsumo )' + #13#10 +
                                        'left join marcas m '+
                                        'on (i.sIdMarca=m.sIdMarca)' + #13#10 +
                                        'inner join departamentos d '+
                                        'on(a2.siddepartamento=d.siddepartamento)' + #13#10 +
                                        'left join pernoctan p '+
                                        'on(p.sidpernocta=a2.slugarentrega)' + #13#10 +
                                        'inner join ordenesdetrabajo ot '+
                                        'on(ot.snumeroorden=a2.snumeroorden)' + #13#10 +
                                        'left join usuarios u '+
                                        'on (u.sIdUsuario=a2.sAutorizo)' + #13#10 +
                                        'left join usuarios u2 '+
                                        'on (u2.sIdUsuario=a2.sIdUsuario)' + #13#10 +
                                        'left join familias fm' + #13#10 +
                                        'on(fm.sIdFamilia= i.sIdGrupo)' + #13#10 +
                                        'Where a1.sContrato = :Contrato And a1.iFolioRequisicion = :Folio '+
                                        'GROUP BY a1.sIdInsumo, a1.iItem' + #13#10 +
                                        'order by i.sidgrupo,a3.iItemOrden'
                                        ,
                                        'Select fp.sDescripcion as fp, a1.sComentarioPart, a2.*, p.*, a1.iItem, a1.dCantidad, a1.mDescripcion, a1.sMedida, a1.dCosto, a3.iItemOrden, u.sNombre as sElabora, '+
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
                                        'Where a1.sContrato = :Contrato And a1.iFolioPedido = :Folio group by a1.sIdInsumo,a1.iItem order by a3.iItemOrden '
                                        );
    var
      MontoTotal,MontoSinIva:Double;





    Function Imprimir:Boolean;
    procedure ExPortar;
  public
    { Public declarations }
   // Datosref:TRecordset;
   DirTmp:TFileName;
   CadFile:string;
   Tipo:tDocMAil;
  end;

var
  FrmExportPdf: TFrmExportPdf;

implementation

uses frm_connection, UnitExcepciones, Utilerias, global;

{$R *.dfm}


procedure TFrmExportPdf.ExPortar;
var
  sEmpty:string;
  sCampo:string;
begin
  sEmpty:='';

  if Tipo=DcReCo then
    sCampo:='sNumFolio';

  if Tipo=DcOrco then
    sCampo:='sOrdenCompra';

  ProgresoExport.Properties.Max:=MdDatos.RecordCount;
  ProgresoExport.Position:=0;
  MdDatos.First;
  while not MdDatos.Eof do
  begin
    if not Imprimir then
      if sEmpty='' then
        sEmpty:='Folio: ' + MdDatos.FieldByName(sCampo).AsString
      else
        sEmpty:=sEmpty + #13 + #10+ 'Folio: ' + MdDatos.FieldByName(sCampo).AsString;

    ProgresoExport.Position:=MdDatos.RecNo;
    MdDatos.Next;
    Application.ProcessMessages;
  end;
  if sEmpty<>'' then
    MessageDlg('Los Siguientes documentos no tienen informacion.' + #13 + #10 + sEmpty + #13 + #10 + 'No se generaron sus Pdf�s.',
              mtError,[mbOK],0);


end;


Function TFrmExportPdf.Imprimir:Boolean;
var
  sNameFile,sCampo,sLeyenda:string;
  imprimio:Boolean;
  dIVA:Double;
begin
  try
    imprimio:=False;
    if Tipo=DcReCo  then
    begin
      rDiarioFirmasReq (global_contrato,MdDatos.FieldByName('sNumeroOrden').AsString, 'A',MdDatos.FieldByName('sIdDepartamento').AsString, MdDatos.FieldByNAme('dIdFecha').AsDateTime, self) ;
      sCampo:='sNumFolio';
      sLeyenda:='Requisicion';
    end;
    if Tipo=DcOrCo  then
    begin
      rDiarioFirmas(global_contrato,MdDatos.FieldByName('sNumeroOrden').AsString, 'A', MdDatos.FieldByNAme('dIdFecha').AsDateTime, self);
      sCampo:='sOrdenCompra';
      sLeyenda:='Orden Compra';
    end;


    if Tipo=DcReCo  then
    begin
      connection.configuracion.refresh;
      Connection.qryBusca.Active := False ;
      Connection.qryBusca.SQL.Clear ;
      Connection.qryBusca.SQL.Add('Select Sum(r.dCantidad * r.dCosto) as dMontoMN From anexo_prequisicion r ' +
                                  'Where r.sContrato = :Contrato And r.iFolioRequisicion = :Folio Group By r.iFolioRequisicion');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato ;
      connection.qryBusca.Params.ParamByName('Folio').DataType := ftString ;
      connection.qryBusca.Params.ParamByName('Folio').Value := MdDatos.FieldByName('sNumFolio').AsString ;
      Connection.qryBusca.Open ;



      If Connection.qryBusca.RecordCount > 0 Then
          MontoTotal :=  Connection.qryBusca.fieldValues['dMontoMN'] ;
    end;

    if Tipo=DcOrco then
    begin
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select Sum(r.dCantidad * r.dCosto) as dMontoMN From anexo_ppedido r ' +
      'Where r.sContrato = :Contrato And r.iFolioPedido = :Folio and r.aplicaIva="Si" Group By r.iFolioPedido');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
      connection.qryBusca.Params.ParamByName('Folio').DataType := ftInteger;
      connection.qryBusca.Params.ParamByName('Folio').Value := MdDatos.FieldValues['iFolioPedido'];
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
      MontoTotal := Connection.qryBusca.fieldValues['dMontoMN']-MdDatos.FieldValues['dDescuento'];

      MontoSinIva:=0;
      Connection.qryBusca.Active := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select Sum(r.dCantidad * r.dCosto) as dMontoMN From anexo_ppedido r ' +
      'Where r.sContrato = :Contrato And r.iFolioPedido = :Folio and r.aplicaIva="No" Group By r.iFolioPedido');
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_Contrato;
      connection.qryBusca.Params.ParamByName('Folio').DataType := ftInteger;
      connection.qryBusca.Params.ParamByName('Folio').Value := MdDatos.FieldValues['iFolioPedido'];
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
        MontoSinIva := Connection.qryBusca.fieldValues['dMontoMN']-MdDatos.FieldValues['dDescuento'];

      zimgfirmas.Active := False ;
      zimgfirmas.Params.ParamByName('Contrato').Value := global_contrato ;
      zimgfirmas.Params.ParamByName('Orden').Value    := MdDatos.FieldByName('sNumeroOrden').AsString;
      zimgfirmas.Params.ParamByName('Fecha').Value    := MdDatos.FieldValues['dIdFecha'];
      zimgfirmas.Open ;

    end;

    Reporte.Active := False ;
    Reporte.SQL.Text:=SqlReportes[Ord(Tipo)];
    Reporte.Params.ParamByName('Contrato').DataType := ftString ;
    Reporte.Params.ParamByName('Contrato').Value    := global_contrato ;
    if Tipo=DcReCo then
    begin
      Reporte.Params.ParamByName('Convenio').DataType := ftString ;
      Reporte.Params.ParamByName('Convenio').Value    := global_convenio ;
      Reporte.Params.ParamByName('Folio').DataType    := ftString ;
      Reporte.Params.ParamByName('Folio').Value       :=MdDatos.FieldByName('sNumFolio').AsString ;
      If Connection.configuracion.fieldValues['sAlmcon'] = 'CONTRATOS' Then
        Reporte.ParamByName('Principal').AsString:='No'
      else
        Reporte.ParamByName('Principal').AsString:='Si';
    end;

    if Tipo=DcOrco then
    begin
      Reporte.Params.ParamByName('Folio').DataType      := ftInteger;
      Reporte.Params.ParamByName('Folio').Value         := MdDatos.FieldValues['iFolioPedido'];

      if MdDatos.FieldValues['sFolioRequisicion'] <> '' then
      begin
       Reporte.Params.ParamByName('Convenio').DataType := ftString;
       Reporte.Params.ParamByName('Convenio').Value    := global_convenio;
      end;

    end;

    Reporte.Open ;

    if Reporte.RecordCount>0 then
    begin
      frxDBReporte.FieldAliases.Clear;

      if Tipo=DcReCo then
        RptReporte.LoadFromFile (global_files + global_miReporte +'_ALMRequisicion.fr3') ;

      if Tipo=DcOrco then
      begin
        RptReporte.LoadFromFile(global_files + global_miReporte + '_ALMOrdCompra.fr3');
        dIVA := (MdDatos.FieldByNAme('dIVA').asfloat / 100);
        RptReporte.Variables.Variables['MONTOIVA']:= roundto(Montototal * dIVA, -2) ;

      end;

      connection.frxPDFExport1.ShowProgress := False;
      connection.frxPDFExport1.ShowDialog := False;
     // if MdDatos.RecNo=1 then
    // RptReporte.DataSets.Find('frxDBReporte').DataSet



      RptReporte.PrepareReport(true) ;
    //  else

     //  frxEntrada.PrepareReport(true);
    // frxEntrada.ShowReport(true);
      GetTempPath(SizeOf(global_TempPath), global_TempPath);

      if (DirTmp='') then
      begin
        DirTmp:=global_TempPath ;//+'\' +formatdatetime('dd-mm-yyyy hhnnss', now);
        DirTmp:=DirTmp  +formatdatetime('dd-mm-yyyy hhnnss', now);
      end;

      if not DirectoryExists(DirTmp+ '\') then
        CreateDir(DirTmp);

      connection.frxPDFExport1.DefaultPath :=DirTmp; //global_TempPath; // se extrae la ruta de la carpeta temporal

      sNameFile := MdDatos.FieldByName(sCampo).AsString;
      sNameFile := AnsireplaceStr(sNameFile, '\', '');
      sNameFile := AnsireplaceStr(sNameFile, '/', '');
      sNameFile := AnsireplaceStr(sNameFile, '.', '');
      sNameFile:=sLeyenda + ' ' + sNameFile + ' ' + formatdatetime('dd-mm-yyyy', MdDatos.FieldByName('dIdFecha').AsDateTime) + '.pdf';
      connection.frxPDFExport1.FileName := sNameFile ;
      if RptReporte.Export(connection.frxPDFExport1) then
      begin
        if CadFile='' then
          CadFile:=  sNameFile
        else
          CadFile:=CadFile + ',' +  sNameFile;
        imprimio:=True;
      end;
    end;
   {if EsUltimo  then
    begin
      SendMail(connection.QryBusca2.FieldValues['sMailPrincipal'],
        connection.QryBusca2.FieldValues['clave'],
        connection.QryBusca2.FieldValues['sDestino'],
        connection.QryBusca2.FieldValues['sCC'],
        connection.QryBusca2.FieldValues['sCCO'],
        connection.QryBusca2.FieldValues['sAsunto'],
        connection.frxPDFExport1.FileName,
        connection.QryBusca2.FieldValues['sContenido']);
    end;}

   // if not FileExists(global_files + global_miReporte + '_ALMRequisicion.fr3') then
   //    showmessage('El archivo de reporte '+global_miReporte+'_ALMrequisicion.fr3 no existe, notifique al administrador del sistema');
  //  frxentrada.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));

  except
    on e : exception do begin
    UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Requisicion de Materiales', 'Al imprimir', 0);
    end;

  end;
  Result:=imprimio;
end;


procedure TFrmExportPdf.tmrStartTimer(Sender: TObject);
begin
  tmrStart.Enabled:=False;
  ExPortar;
  Close;
end;

procedure TFrmExportPdf.FormCreate(Sender: TObject);
begin
  DirTmp:='';

end;

procedure TFrmExportPdf.FormShow(Sender: TObject);
begin
  tmrStart.Enabled:=True;
end;

procedure TFrmExportPdf.frxEntradaGetValue(const VarName: string;
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

 { If CompareText(VarName, 'SUPERINTENDENTE') = 0 then
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
      Value := sPuestoSupervisorTierra ;  }
  if Tipo=DcReCo then
  begin
    If CompareText(VarName, 'CANTIDAD_LETRA')= 0 Then
    Begin
         iValorNumerico   := Trunc(Montototal) ;
         sCadena := xIntToLletres (iValorNumerico) +' PESOS ';
         Resultado := roundto(Montototal - iValorNumerico, -2) ;
         Resultado := Resultado * 100;
         iValorNumerico := Trunc(Resultado);
         sCadena := sCadena + IntToStr(iValorNumerico)+ '/100 M.N.';
         Value :=   sCadena
    end ;

    if CompareText(VarName, 'FECHA') = 0 then begin
      Value := MdDatos.FieldValues['dIdFecha'];
    end;


    sSQL:='SELECT * FROM firmas WHERE sContrato = :contrato AND dIdFecha <= :fecha AND sNumeroOrden = :NumeroDeOrden and sIdDepartamento =:Depto ORDER BY dIdFecha DESC';
    zConsulta := TZQuery.Create(self);
    zConsulta.Connection := connection.zConnection;
    zConsulta.Active := False;
    zConsulta.SQL.Clear;
    zConsulta.SQL.Add(sSQL);
    zConsulta.Params.ParamByName('contrato').DataType := ftString;
    zConsulta.Params.ParamByName('contrato').Value := global_contrato;
    zConsulta.Params.ParamByName('fecha').DataType := ftDate;
    zConsulta.Params.ParamByName('fecha').Value := MdDatos.FieldValues['dIdFecha'];
    zConsulta.Params.ParamByName('NumeroDeOrden').DataType := ftString;
    zConsulta.Params.ParamByName('NumeroDeOrden').Value := MdDatos.FieldValues['sNumeroOrden'];
    zConsulta.Params.ParamByName('depto').DataType := ftString;
    zConsulta.Params.ParamByName('depto').Value := MdDatos.FieldByName('sIdDepartamento').AsString;
    zConsulta.Open;
    if zConsulta.RecordCount>0 then begin
      If CompareText(VarName, 'ENCARGADO_ALMACEN_PUESTO') = 0 then
          Value := zConsulta.FieldValues['sPuesto23'] ;
      If CompareText(VarName, 'ENCARGADO_ALMACEN_FIRMA') = 0 then
          Value := zConsulta.FieldValues['sFirmante23'] ;
      If CompareText(VarName, 'SOLICITO_PUESTO') = 0 then
          Value := zConsulta.FieldValues['sPuesto24'] ;
      If CompareText(VarName, 'SOLICITO_FIRMA') = 0 then
          Value := zConsulta.FieldValues['sFirmante24'] ;
      If CompareText(VarName, 'RECIBIO_PUESTO') = 0 then
          Value := zConsulta.FieldValues['sPuesto25'] ;
      If CompareText(VarName, 'RECIBIO_FIRMA') = 0 then
          Value := zConsulta.FieldValues['sFirmante25'] ;
      If CompareText(VarName, 'AUTORIZA_GERENTE_PUESTO') = 0 then
          Value := zConsulta.FieldValues['sPuesto26'] ;
      If CompareText(VarName, 'AUTORIZA_GERENTE_FIRMA') = 0 then
          Value := zConsulta.FieldValues['sFirmante26'] ;
      If CompareText(VarName, 'AUTORIZA_GERENTE_ADMINISTRATIVO_PUESTO') = 0 then
          Value := zConsulta.FieldValues['sPuesto27'] ;
      If CompareText(VarName, 'AUTORIZA_GERENTE_ADMINISTRATIVO_FIRMA') = 0 then
          Value := zConsulta.FieldValues['sFirmante27'] ;
    end
    else
    begin
      If CompareText(VarName, 'ENCARGADO_ALMACEN_PUESTO') = 0 then
          Value := '';
      If CompareText(VarName, 'ENCARGADO_ALMACEN_FIRMA') = 0 then
          Value := '';
      If CompareText(VarName, 'SOLICITO_PUESTO') = 0 then
          Value := '';
      If CompareText(VarName, 'SOLICITO_FIRMA') = 0 then
          Value := '';
      If CompareText(VarName, 'RECIBIO_PUESTO') = 0 then
          Value := '';
      If CompareText(VarName, 'RECIBIO_FIRMA') = 0 then
          Value := '';
      If CompareText(VarName, 'AUTORIZA_GERENTE_PUESTO') = 0 then
          Value := '';
      If CompareText(VarName, 'AUTORIZA_GERENTE_FIRMA') = 0 then
          Value := '';
      If CompareText(VarName, 'AUTORIZA_GERENTE_ADMINISTRATIVO_PUESTO') = 0 then
          Value := '';
      If CompareText(VarName, 'AUTORIZA_GERENTE_ADMINISTRATIVO_FIRMA') = 0 then
          Value := '';
    end;
    zConsulta.free;
  end;

  if Tipo=DcOrco then
  begin
    if CompareText(VarName, 'CANTIDAD_LETRA') = 0 then
    begin
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('select dIVA,sDescripcionCorta, sDescripcion, sSigla from tiposdemoneda where sIdMoneda =:Moneda');
      connection.zCommand.ParamByName('Moneda').AsString := MdDatos.FieldValues['sMoneda'];
      connection.zCommand.Open;

      if connection.zCommand.RecordCount > 0 then
        dIVA := (MdDatos.FieldValues['dIVA'] / 100)
      else
        dIVA := 1;

      iVa := (Montototal * dIVA);
      MontoTotal := roundto(Montototal + iva + MontoSinIva, -2) ;
      iValorNumerico := Trunc(Montototal);
      sCadena := xIntToLletres(iValorNumerico);
      Resultado := roundto(MontoTotal - iValorNumerico, -2);
      Resultado := Resultado * 100;
      iValorNumerico := Trunc(Resultado);
      if MdDatos.FieldValues['dCambio'] > 0 then
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
      connection.zCommand.ParamByName('Moneda').AsString := MdDatos.FieldValues['sMoneda'];
      connection.zCommand.Open;
      if MdDatos.FieldValues['dCambio'] > 0 then
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
    zConsulta.Params.ParamByName('contrato').Value    := global_contrato;
    zConsulta.Params.ParamByName('orden').DataType    := ftString;
    zConsulta.Params.ParamByName('orden').Value       := MdDatos.FieldByName('sNUmeroOrden').AsString ;
    zConsulta.Params.ParamByName('fecha').DataType    := ftDate;
    zConsulta.Params.ParamByName('fecha').Value       := MdDatos.FieldValues['dIdFecha'];
    zConsulta.Open;
    if zConsulta.RecordCount > 0 then begin
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

end;

end.