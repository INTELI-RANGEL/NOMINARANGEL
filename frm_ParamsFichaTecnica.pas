unit frm_ParamsFichaTecnica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  dxSkinXmas2008Blue, dxCustomWizardControl, dxWizardControl, frxClass,
  frxDBSet, DB, RxMemDS, cxContainer, cxEdit, cxGroupBox, cxCheckGroup, Menus,
  FormAutoScaler, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmParamsFichaTecnica = class(TForm)
    dxWizardControl1: TdxWizardControl;
    dxWizardControlPage1: TdxWizardControlPage;
    AnexoC: TfrxReport;
    rxFicha_Tecnica: TRxMemoryData;
    rxFicha_TecnicasContrato: TStringField;
    rxFicha_TecnicasNumeroActividad: TStringField;
    rxFicha_TecnicaDescripcionAnexo: TStringField;
    rxFicha_TecnicaCantidadAnexo: TFloatField;
    rxFicha_TecnicaMedidaAnexo: TStringField;
    rxFicha_TecnicaCostoMNAnexo: TFloatField;
    rxFicha_TecnicaCostoDLLAnexo: TFloatField;
    rxFicha_TecnicaTipo: TStringField;
    rxFicha_TecnicaId: TStringField;
    rxFicha_TecnicaDescripcion: TStringField;
    rxFicha_TecnicaUnidad: TStringField;
    rxFicha_TecnicaCantidad: TFloatField;
    rxFicha_TecnicaCostoMN: TFloatField;
    rxFicha_TecnicaCostoDLL: TFloatField;
    rxFicha_TecnicaDirectos: TFloatField;
    rxFicha_TecnicaIndirectos: TFloatField;
    rxFicha_TecnicaFinanciamiento: TFloatField;
    rxFicha_TecnicaUtilidad: TFloatField;
    rxFicha_TecnicaAdicional1: TFloatField;
    rxFicha_TecnicaAdicional2: TFloatField;
    rxFicha_TecnicaAdicional3: TFloatField;
    rxFicha_Tecnicarendimiento: TFloatField;
    rxFicha_Tecnicasubtotal: TFloatField;
    rxFicha_Tecnicatotal: TFloatField;
    rxFicha_TecnicatotalPU: TFloatField;
    rxFicha_TecnicaEspacio: TStringField;
    rxFicha_TecnicaNivel: TIntegerField;
    rxFicha_TecnicadIndirecto: TFloatField;
    rxFicha_TecnicadFinanciamiento: TFloatField;
    rxFicha_TecnicadUtilidad: TFloatField;
    rxFicha_TecnicadAdicionales: TFloatField;
    rxFicha_TecnicadOtroAdicional: TFloatField;
    rxFicha_TecnicaCuadrilla: TStringField;
    rxFicha_Tecnicafila: TIntegerField;
    rxFicha_TecnicaRendimiento_paq: TFloatField;
    rxFicha_TecnicadTotalMN_paq: TFloatField;
    frxFicha_Tecnica: TfrxDBDataset;
    ChkGrRecurso: TcxCheckGroup;
    pmRecursos: TPopupMenu;
    mniMarcar: TMenuItem;
    mniDesmarcar: TMenuItem;
    ActividadesxAnexo: TZQuery;
    ActividadesxAnexodMontoMN: TCurrencyField;
    ActividadesxAnexodMontoDLL: TCurrencyField;
    ActividadesxAnexosWbsSpace: TStringField;
    ActividadesxAnexosContrato: TStringField;
    ActividadesxAnexosIdConvenio: TStringField;
    ActividadesxAnexoiNivel: TIntegerField;
    ActividadesxAnexosSimbolo: TStringField;
    ActividadesxAnexosWbs: TStringField;
    ActividadesxAnexosWbsAnterior: TStringField;
    ActividadesxAnexosNumeroActividad: TStringField;
    ActividadesxAnexosTipoActividad: TStringField;
    ActividadesxAnexosEspecificacion: TStringField;
    ActividadesxAnexosActividadAnterior: TStringField;
    ActividadesxAnexomDescripcion: TMemoField;
    ActividadesxAnexodFechaInicio: TDateField;
    ActividadesxAnexodDuracion: TFloatField;
    ActividadesxAnexodFechaFinal: TDateField;
    ActividadesxAnexodPonderado: TFloatField;
    ActividadesxAnexodCostoMN: TFloatField;
    ActividadesxAnexodCostoDll: TFloatField;
    ActividadesxAnexodVentaMN: TFloatField;
    ActividadesxAnexodVentaDLL: TFloatField;
    ActividadesxAnexolCalculo: TStringField;
    ActividadesxAnexodCantidadAnexo: TFloatField;
    ActividadesxAnexodCargado: TFloatField;
    ActividadesxAnexodInstalado: TFloatField;
    ActividadesxAnexodExcedente: TFloatField;
    ActividadesxAnexoiColor: TIntegerField;
    ActividadesxAnexolExtraordinario: TStringField;
    ActividadesxAnexosIdFase: TStringField;
    ActividadesxAnexoiItemOrden: TStringField;
    ActividadesxAnexosMedida: TStringField;
    ActividadesxAnexosAnexo: TStringField;
    ActividadesxAnexoNewSimbol: TStringField;
    ActividadesxAnexosDescripcion: TStringField;
    ActividadesxAnexosTipoAnexo: TStringField;
    ActividadesxAnexosWbsPU: TStringField;
    ActividadesxAnexoSumaMN: TFloatField;
    ActividadesxAnexoSumaDLL: TFloatField;
    dbActividadesxAnexo: TfrxDBDataset;
    FormAutoScaler1: TFormAutoScaler;
    procedure dxWizardControl1ButtonClick(Sender: TObject;
      AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
    procedure mniMarcarClick(Sender: TObject);
    procedure mniDesmarcarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    swbs,snumeroActividad:string;
  end;

var
  FrmParamsFichaTecnica: TFrmParamsFichaTecnica;

implementation

uses frm_connection, global, UFunctionsGHH;

{$R *.dfm}

procedure TFrmParamsFichaTecnica.dxWizardControl1ButtonClick(Sender: TObject;
  AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
var
  x, i: integer;
  linea: string;
  descripcion, sentencia, busca_paquete, muestra_paquete: string;
  total_suma, dMontoMN, dIndirecto, dFinanciamiento, dUtilidad, dAdicionales, dOtroAdicional, dRendimiento, dTotalPaquete: double;
  c_dCostoDirecto,
  c_dCostoIndirectos,
  c_dFinanciamiento,
  c_dUtilidad,
  c_dCargosAdicionales,
  c_dCargosAdicionales2,
  c_dCargosAdicionales3: double;
  c_sSimboloRend,TipoExplosion: string;
begin
  if AKind=wcbkFinish then
  begin
    connection.QryBusca2.Active;
    connection.QryBusca2.SQL.Clear;
    connection.QryBusca2.SQL.Add('select dCostoDirecto, dCostoIndirectos, dFinanciamiento, dUtilidad, dCargosAdicionales, dCargosAdicionales2, dCargosAdicionales3, sSimbolo, sReportesCIA from configuracion where sContrato = :Contrato');
    connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
    connection.QryBusca2.Open;

    if  connection.QryBusca2.RecordCount=1 then
    begin
      c_dCostoDirecto := connection.QryBusca2.FieldValues['dCostoDirecto'];
      c_dCostoIndirectos := connection.QryBusca2.FieldValues['dCostoIndirectos'];
      c_dFinanciamiento := connection.QryBusca2.FieldValues['dFinanciamiento'];
      c_dUtilidad := connection.QryBusca2.FieldValues['dUtilidad'];
      c_dCargosAdicionales := connection.QryBusca2.FieldValues['dCargosAdicionales'];
      c_dCargosAdicionales2 := connection.QryBusca2.FieldValues['dCargosAdicionales2'];
      c_dCargosAdicionales3 := connection.QryBusca2.FieldValues['dCargosAdicionales3'];
      c_sSimboloRend := connection.QryBusca2.FieldValues['sSimbolo'];
     // global_miReporte := connection.QryBusca2.FieldValues['sReportesCIA'];
    end;

    if connection.configuracion.FieldValues['sExplosion'] = 'Recursos por Concepto/Partida' then
      TipoExplosion := 'recursosanexo'
    else
      TipoExplosion := 'recursosanexosnuevos';

    connection.zCommand.Active := False;
    connection.zCommand.Filtered := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select sContrato, sNumeroActividad, sWbs, mDescripcion, sMedida, dCantidadAnexo, dVentaMN, dVentaDLL ' +
      'from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sNumeroActividad =:Actividad and sWbs =:Wbs and sTipoActividad = "Actividad" ' +
      'order by iItemOrden ');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
    connection.zCommand.ParamByName('Convenio').AsString := global_convenio;
    connection.zCommand.ParamByName('Wbs').AsString := swbs;//ActividadesxAnexo.FieldValues['sWbs'];
    connection.zCommand.ParamByName('Actividad').AsString :=snumeroActividad;//ActividadesxAnexo.FieldValues['sNumeroActividad'];
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
      rxFicha_Tecnica.Active := True;
      rxFicha_Tecnica.EmptyTable;
      while not connection.zCommand.Eof do
      begin
        dMontoMN := 0;
        i := 1;
        for x := 1 to 5 do
        begin
          if ChkGrRecurso.States[i-1]=cbsChecked then
          begin
            linea := '';
            busca_paquete := '';
            muestra_paquete := '';
            if (tipo[i] = 'MATERIAL') then
              descripcion := 'mDescripcion'
            else
              descripcion := 'sDescripcion';

            if (tipo[i] = 'PERSONAL') or (tipo[i] = 'HERRAMIENTAS') or (tipo[i] = 'BASICOS') then
            begin
              muestra_paquete := 'pp.sDescripcion, pp.sNumeroPaquete, ra.dRendimiento, ';
              if (tipo[i] = 'PERSONAL') then
              begin
                linea := 'order by  ra.sNumeroPaquete, ra.fila, ra.sIdPersonal ';
                busca_paquete := 'left join paquetes_p pp on(pp.sContrato = ra.sContrato and pp.sNumeroPaquete = ra.sNumeroPaquete) ';
              end;

              if (tipo[i] = 'HERRAMIENTAS') then
              begin
                linea := 'order by  ra.sNumeroPaquete, ra.fila, ra.sIdHerramientas ';
                busca_paquete := 'left join paquetes_h pp on(pp.sContrato = ra.sContrato and pp.sNumeroPaquete = ra.sNumeroPaquete) ';
              end;

              if (tipo[i] = 'BASICOS') then
              begin
                linea := 'order by  ra.sNumeroPaquete, ra.fila, ra.sIdBasico ';
                busca_paquete := 'left join paquetes_b pp on(pp.sContrato = ra.sContrato and pp.sNumeroPaquete = ra.sNumeroPaquete) ';
              end;
            end;

            if TipoExplosion = 'recursosanexo' then
            begin
               if catalogo[i] = 'insumos' then
               begin
                  sentencia := 'select ra.' + folio[i] + ' as Id, i.' + Descripcion + ' as Descripcion, ' + muestra_paquete + 'i.sMedida, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL, ra.dCostoTotalMN, ra.dCostoTotalDLL, ra.Fila from ' + tablas[i] + ' ra ' +
                    'inner join almacenes a on (a.lPrincipal = "Si") '+
                    'LEFT join ' + catalogo[i] + ' i  ' +
                    'on (i.sIdAlmacen = a.sIdAlmacen and i.' + folio[i] + ' = ra.' + folio[i] + ' ) ' +
                    busca_paquete +
                    'where ra.sContrato =:Contrato  and ra.sWbs =:Wbs and ra.sNumeroActividad =:Actividad ' + linea + ' ';
               end
               else
               begin
                   sentencia := 'select ra.' + folio[i] + ' as Id, i.' + Descripcion + ' as Descripcion, ' + muestra_paquete + 'i.sMedida, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL, ra.dCostoTotalMN, ra.dCostoTotalDLL, ra.Fila from ' + tablas[i] + ' ra ' +
                    'LEFT join ' + catalogo[i] + ' i  ' +
                    'on (i.sContrato = ra.sContrato and i.' + folio[i] + ' = ra.' + folio[i] + ' ) ' +
                    busca_paquete +
                    'where ra.sContrato =:Contrato  and ra.sWbs =:Wbs and ra.sNumeroActividad =:Actividad ' + linea + ' ';
               end;
            end;

            if TipoExplosion = 'recursosanexosnuevos' then
            begin
                if catalogo[i] = 'insumos' then
               begin
                  sentencia := 'select ra.' + folio[i] + ' as Id, i.' + Descripcion + ' as Descripcion, ' + muestra_paquete + 'i.sMedida, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL, ra.dCostoTotalMN, ra.dCostoTotalDLL, ra.Fila from ' + tablas_2[i] + ' ra ' +
                    'inner join almacenes a on (a.lPrincipal = "Si") '+
                    'LEFT join ' + catalogo[i] + ' i  ' +
                    'on (i.sIdAlmacen = a.sIdAlmacen and i.' + folio[i] + ' = ra.' + folio[i] + ' ) ' +
                    busca_paquete +
                    'where ra.sContrato =:Contrato and ra.sWbs =:Wbs and ra.sNumeroActividad =:Actividad ' + linea + ' ';
               end
               else
               begin
                   sentencia := 'select ra.' + folio[i] + ' as Id, i.' + Descripcion + ' as Descripcion, ' + muestra_paquete + 'i.sMedida, ra.dCantidad, ra.dCostoMN, ra.dCostoDLL, ra.dCostoTotalMN, ra.dCostoTotalDLL, ra.Fila from ' + tablas_2[i] + ' ra ' +
                    'LEFT join ' + catalogo[i] + ' i  ' +
                    'on (i.sContrato = ra.sContrato and i.' + folio[i] + ' = ra.' + folio[i] + ' ) ' +
                    busca_paquete +
                    'where ra.sContrato =:Contrato and ra.sWbs =:Wbs and ra.sNumeroActividad =:Actividad ' + linea + ' ';
               end;
            end;
            connection.QryBusca.Active := False;
            Connection.QryBusca.Filtered := False;
            connection.QryBusca.SQL.Clear;
            connection.QryBusca.SQL.Add(sentencia);
            connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
            connection.QryBusca.ParamByName('Wbs').AsString := connection.zCommand.FieldValues['sWbs'];
            connection.QryBusca.ParamByName('Actividad').AsString := connection.zCommand.FieldValues['sNumeroActividad'];
            connection.QryBusca.Open;

            if connection.QryBusca.RecordCount > 0 then
            begin
                           //SUMAMOS LAS CANTIDADES DE RECURSOS...
              total_suma := 0;
              connection.QryBusca.First;
              while not connection.QryBusca.Eof do
              begin
                if connection.QryBusca.FieldValues['fila'] <= 1 then
                  total_suma := total_suma + connection.QryBusca.FieldValues['dCostoTotalMN'];
                connection.QryBusca.Next;
              end;

              connection.QryBusca.First;
              while not connection.QryBusca.Eof do
              begin
                if connection.QryBusca.FieldValues['fila'] = 1 then
                begin
                  dRendimiento := connection.QryBusca.FieldValues['dRendimiento'];
                  dTotalPaquete := connection.QryBusca.FieldValues['dCostoTotalMN'];
                end;

                if connection.QryBusca.FieldValues['fila'] = 0 then
                begin
                  dRendimiento := 1;
                  dTotalPaquete := 0;
                end;

                rxFicha_Tecnica.Append;
                rxFicha_Tecnica.FieldValues['sContrato'] := global_contrato;
                rxFicha_Tecnica.FieldValues['sNumeroActividad'] := connection.zCommand.FieldValues['sNumeroActividad'];
                rxFicha_Tecnica.FieldValues['DescripcionAnexo'] := connection.zCommand.FieldValues['mDescripcion'];
                rxFicha_Tecnica.FieldValues['CantidadAnexo'] := connection.zCommand.FieldValues['dCantidadAnexo'];
                rxFicha_Tecnica.FieldValues['MedidaAnexo'] := connection.zCommand.FieldValues['sMedida'];
                rxFicha_Tecnica.FieldValues['CostoMNAnexo'] := connection.zCommand.FieldValues['dVentaMN'];
                rxFicha_Tecnica.FieldValues['CostoDLLAnexo'] := connection.zCommand.FieldValues['dVentaDLL'];
                rxFicha_Tecnica.FieldValues['Tipo'] := tipo[i];
                rxFicha_Tecnica.FieldValues['Id'] := connection.QryBusca.FieldValues['Id'];
                rxFicha_Tecnica.FieldValues['Descripcion'] := connection.QryBusca.FieldValues['Descripcion'];
                rxFicha_Tecnica.FieldValues['Unidad'] := connection.QryBusca.FieldValues['sMedida'];
                rxFicha_Tecnica.FieldValues['Cantidad'] := connection.QryBusca.FieldValues['dCantidad'];
                rxFicha_Tecnica.FieldValues['CostoMN'] := connection.QryBusca.FieldValues['dCostoMN'];
                rxFicha_Tecnica.FieldValues['CostoDLL'] := connection.QryBusca.FieldValues['dCostoDLL'];
                rxFicha_Tecnica.FieldValues['Directos'] := c_dCostoDirecto;
                rxFicha_Tecnica.FieldValues['Indirectos'] := c_dCostoIndirectos;
                rxFicha_Tecnica.FieldValues['Financiamiento'] := c_dFinanciamiento;
                rxFicha_Tecnica.FieldValues['Utilidad'] := c_dUtilidad;
                rxFicha_Tecnica.FieldValues['Adicional1'] := c_dCargosAdicionales;
                rxFicha_Tecnica.FieldValues['Adicional2'] := c_dCargosAdicionales2;
                rxFicha_Tecnica.FieldValues['Adicional3'] := c_dCargosAdicionales3;
                rxFicha_Tecnica.FieldValues['subtotal'] := Connection.QryBusca.FieldValues['dCostoTotalMN'];
                rxFicha_Tecnica.FieldValues['total'] := total_suma;
                rxFicha_Tecnica.FieldValues['fila'] := connection.QryBusca.FieldValues['fila'];
                rxFicha_Tecnica.FieldValues['Rendimiento_paq'] := dRendimiento;
                rxFicha_Tecnica.FieldValues['dTotalMN_paq'] := dTotalPaquete;

                if (tipo[i] = 'PERSONAL') or (tipo[i] = 'HERRAMIENTAS') or (tipo[i] = 'BASICOS') then
                begin
                  rxFicha_Tecnica.FieldValues['rendimiento'] := Connection.QryBusca.FieldValues['dRendimiento'];
                  if rxFicha_Tecnica.FieldValues['fila'] = 1 then
                  begin
                    rxFicha_Tecnica.FieldValues['Id'] := connection.QryBusca.FieldValues['sNumeroPaquete'];
                    rxFicha_Tecnica.FieldValues['Descripcion'] := connection.QryBusca.FieldValues['sDescripcion'];
                    rxFicha_Tecnica.FieldValues['Unidad'] := 'CUADRILLA';
                  end
                  else
                    rxFicha_Tecnica.FieldValues['Id'] := '    ' + connection.QryBusca.FieldValues['Id'];
                  rxFicha_Tecnica.FieldValues['Cuadrilla'] := connection.QryBusca.FieldValues['sNumeroPaquete'];
                end;
                rxFicha_Tecnica.Post;

                connection.QryBusca.Next;
              end;
              dMontoMN := dMontoMN + total_suma;
            end;

          end;
          inc(i);
        end;
        dIndirecto := c_dCostoIndirectos * dMontoMN / 100;
        dFinanciamiento := c_dFinanciamiento * (dMontoMN + dIndirecto) / 100;
        dUtilidad := c_dUtilidad * (dMontoMN + dIndirecto + dFinanciamiento) / 100;
        dAdicionales := c_dCargosAdicionales * (dMontoMN + dIndirecto + dFinanciamiento + dUtilidad) / 100;
        dOtroAdicional := c_dCargosAdicionales2 * (dMontoMN + dIndirecto + dFinanciamiento + dUtilidad + dAdicionales) / 100;
        rxFicha_Tecnica.Edit;
        rxFicha_Tecnica.FieldValues['dIndirecto'] := dIndirecto;
        rxFicha_Tecnica.FieldValues['dFinanciamiento'] := dFinanciamiento;
        rxFicha_Tecnica.FieldValues['dUtilidad'] := dUtilidad;
        rxFicha_Tecnica.FieldValues['dAdicionales'] := dAdicionales;
        rxFicha_Tecnica.FieldValues['dOtroAdicional'] := dOtroAdicional;
        rxFicha_Tecnica.FieldValues['totalPU'] := dMontoMN;
        rxFicha_Tecnica.Post;
        connection.zCommand.Next;
      end;
    end;

    AnexoC.PreviewOptions.MDIChild := False;
    AnexoC.PreviewOptions.Modal := True;
    AnexoC.PreviewOptions.Maximized := true;
    AnexoC.PreviewOptions.ShowCaptions := False;
    AnexoC.Previewoptions.ZoomMode := zmPageWidth;
    AnexoC.LoadFromFile(global_files + global_miReporte + '_ficha_tecnicaxpartida.fr3');
    if not FileExists(global_files + global_miReporte + '_ficha_tecnicaxpartida.fr3') then
       showmessage('El archivo de reporte '+global_Mireporte+'_ficha_tecnicaxpartida.fr3 no existe, notifique al administrador del sistema')
    else
       AnexoC.ShowReport;






  end;
  Close;
end;

procedure TFrmParamsFichaTecnica.FormShow(Sender: TObject);
begin
  ActividadesxAnexo.Active:=False;
  if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'Si' then
    ActividadesxAnexo.SQL.Add('Group by sNumeroActividad order by iItemOrden ')
  else
    ActividadesxAnexo.SQL.Add('Group by sNumeroActividad Order By mysql.udf_NaturalSortFormat(swbs,:Tam,:Separador)');

  ActividadesxAnexo.ParamByName('Contrato').AsString := Global_Contrato;
  ActividadesxAnexo.ParamByName('Convenio').AsString    := Global_Convenio;
  ActividadesxAnexo.ParamByName('wbs').AsString:=swbs;
  ActividadesxAnexo.ParamByName('actividad').AsString:=snumeroActividad;

  if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'No' then
  begin
     ActividadesxAnexo.ParamByName('tam').AsInteger      := Global_TamOrden;
     ActividadesxAnexo.ParamByName('separador').AsString := Global_SepOrden;
  end;
  ActividadesxAnexo.Open;
end;

procedure TFrmParamsFichaTecnica.mniDesmarcarClick(Sender: TObject);
var
  i:Integer;
begin
  for i := 0 to ChkGrRecurso.Properties.Items.Count - 1 do
    ChkGrRecurso.States[i]:=cbsUnChecked;
end;

procedure TFrmParamsFichaTecnica.mniMarcarClick(Sender: TObject);
var
  i:Integer;
begin
  for i := 0 to ChkGrRecurso.Properties.Items.Count - 1 do
    ChkGrRecurso.States[i]:=cbsChecked;
end;

end.
