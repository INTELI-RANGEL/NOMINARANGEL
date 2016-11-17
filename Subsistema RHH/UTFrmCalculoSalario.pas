unit UTFrmCalculoSalario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxLabel,
  StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxPC, DB, DBClient, rhh_genericclasses,
  ClientModuleUnit1, UInteliDialog, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxBarBuiltInMenu, DateUtils,
  cxMemo, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxRichEdit;

type
  TFrmCalculoSalario = class(TForm)
    CdOrganizacion: TClientDataSet;
    CdSalMinDf: TClientDataSet;
    CdTipoNomina: TClientDataSet;
    CdDeducciones: TClientDataSet;
    CdPercepciones: TClientDataSet;
    cxPageCalculoAutomatico: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    CxLCbbOrganizacion: TcxLookupComboBox;
    CxLCbbTipoNomina: TcxLookupComboBox;
    SalMinDF: TcxTextEdit;
    CxTextEdtFactorPrimaDom: TcxTextEdit;
    FactorPrimaVacacional: TcxTextEdit;
    CxTextEdtSalMinGenZona: TcxTextEdit;
    CxTextEdtSeguroVidaInfonavit: TcxTextEdit;
    CxTextEdtDiasExcentoPrimaVac: TcxTextEdit;
    CxTextEdtDiasExcentoAguinaldo: TcxTextEdit;
    CxTextEdtDiasTrabajados: TcxTextEdit;
    CxTextEdtDiaSDescanso: TcxTextEdit;
    CxTextEdtFestivos: TcxTextEdit;
    CxTextEdtDomingos: TcxTextEdit;
    CxTextEdtInicioSemana: TcxTextEdit;
    CxTextEdtPeriodicidad: TcxTextEdit;
    CxBtnCalcularSalario: TcxButton;
    CxTextEdtNeto: TcxTextEdit;
    CxLbl2: TcxLabel;
    CxLbl1: TcxLabel;
    CxLbl3: TcxLabel;
    CxLbl4: TcxLabel;
    CxLbl5: TcxLabel;
    CxLbl6: TcxLabel;
    CxLbl7: TcxLabel;
    CxLbl8: TcxLabel;
    CxLbl9: TcxLabel;
    CxLbl10: TcxLabel;
    CxLbl11: TcxLabel;
    CxLbl12: TcxLabel;
    CxLbl13: TcxLabel;
    CxLbl14: TcxLabel;
    CxLbl15: TcxLabel;
    CxLbl16: TcxLabel;
    CdGrupoSalario: TClientDataSet;
    dsTipoNomina: TDataSource;
    dsOrganizacion: TDataSource;
    CdSalario: TClientDataSet;
    dsPercepciones: TDataSource;
    dsDeducciones: TDataSource;
    Calculos: TcxRichEdit;
    cxLabel1: TcxLabel;
    CxTextJornada: TcxTextEdit;
    cxLabel2: TcxLabel;
    CxTextAntiguedad: TcxTextEdit;
    cxLabel3: TcxLabel;
    cbbIdDepartamento: TcxLookupComboBox;
    cdDepartamento: TClientDataSet;
    dsDepartamento: TDataSource;
    procedure CxBtnCalcularSalarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CxLCbbOrganizacionPropertiesChange(Sender: TObject);
    procedure CxLCbbTipoNominaPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CdOrganizacionAfterScroll(DataSet: TDataSet);
    procedure cbbIdDepartamentoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    esCalculoAsimilado: Boolean;
    { Public declarations }
  end;

var
  FrmCalculoSalario: TFrmCalculoSalario;

implementation

{$R *.dfm}
Uses
  UtFrmfrmConceptoExtraEmpleado;

procedure TFrmCalculoSalario.cbbIdDepartamentoPropertiesChange(Sender: TObject);
begin
  FactorPrimaVacacional.Text := cdDepartamento.FieldByName('FactorPrimaVacacional').AsString;
end;

procedure TFrmCalculoSalario.CdOrganizacionAfterScroll(DataSet: TDataSet);
begin
  try
    if cdOrganizacion.Active and cdTipoNomina.Active then
    begin
      if (Not cdDepartamento.Active) or (cdDepartamento.RecordCount = 0) or ((cdDepartamento.RecordCount > 0) and ((cdDepartamento.FieldByName('IdOrganizacion').AsInteger <> cdOrganizacion.FieldByName('IdOrganizacion').AsInteger) or (cdDepartamento.FieldByName('IdTipoNomina').AsInteger <> cdTipoNomina.FieldByName('IdTipoNomina').AsInteger))) then
      begin
        if Not CargarDatosFiltrados(cdDepartamento, 'IdOrganizacion,IdTipoNomina,Anios', [cdOrganizacion.FieldByName('IdOrganizacion').AsInteger, cdTipoNomina.FieldByName('IdTipoNomina').AsInteger, 1]) then
          raise InteligentException.CreateByCode(6, ['Departamentos', DataSet.FieldByName('IdOrganizacion').AsInteger, 'Id. Organizacion']);

        if cdDepartamento.Active then
          cdDepartamento.Refresh
        else
          cdDepartamento.Open;
      end;
    end;
  except
    on e:InteligentException do
    begin
      cdDepartamento.Close;
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOk], 0);
    end;

    on e:Exception do
    begin
      cdDepartamento.Close;
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
    end;
  end;
end;

procedure TFrmCalculoSalario.CxBtnCalcularSalarioClick(Sender: TObject);
var
  Salario, SDI, Aguinaldo, Vacaciones, PrimaDominical: Real;
  DiasT: Integer;
  MensajeDlg: String;
  Objeto: TWinControl;
begin
  try
    Objeto := Nil;
    if cxLCbbTipoNomina.EditValue = null then
    begin
      Objeto := cxLCbbTipoNomina;
      raise InteligentException.CreateByCode(18, ['Tipo Nómina']);
    end;

    if cxLcbbOrganizacion.EditValue = null then
    begin
      Objeto := cxLcbbOrganizacion;
      raise InteligentException.CreatebyCode(18, ['Organización']);
    end;

    if cbbIdDepartamento.EditValue = null then
    begin
      Objeto := cbbIdDepartamento;
      raise InteligentException.CreatebyCode(18, ['Departamento']);
    end;

    if Length(Trim(CxTextEdtNeto.Text)) = 0 then
    Begin
      Objeto := CxTextEdtNeto;
      raise InteligentException.CreateByCode(18, ['Neto']);
    end;

    if Length(Trim(CxTextEdtFestivos.Text)) = 0 then
    Begin
      Objeto := CxTextEdtFestivos;
      raise InteligentException.CreateByCode(18, ['Dias Festivos']);
    end;

    if Length(Trim(CxTextEdtDomingos.Text)) = 0 then
    Begin
      Objeto := CxTextEdtDomingos;
      raise InteligentException.CreateByCode(18, ['Domingos']);
    end;

    Objeto := nil;

    try
      if esCalculoAsimilado then
      begin
        DiasT := 15;
        MensajeDlg := 'Se obtuvo [$ ' + FloatToStr(Salario*DiasT) + '] para alcanzar un neto de $ ' + (CxTextEdtNeto.Text)
      end
      else
      begin
        DiasT := CdTipoNomina.FieldByName('DiasTrabajados').AsInteger;
        MensajeDlg := 'Se obtuvo un salario diario de [$ ' + FloatToStr(Salario) + '] para el neto de $ ' + (CxTextEdtNeto.Text);
      end;


      GenerarCalculoVirtual(Self,
          StrToFloat(CxTextEdtNeto.Text), cdOrganizacion.FieldByName('IdOrganizacion').AsInteger,
          cdOrganizacion.FieldByName('FactorPrimaDominical').AsFloat, cdDepartamento.FieldByName('FactorPrimaVacacional').AsFloat,
          StrToFloat(SalMinDF.Text), cdOrganizacion.FieldByName('SalMinGenZona').AsFloat, cdOrganizacion.FieldByName('SeguroVidaInfonavit').AsFloat,
          cdOrganizacion.FieldByName('DiasExcentoPrimaVacacional').AsInteger, cdOrganizacion.FieldByName('DiasExcentoAguinaldo').AsInteger, cdOrganizacion.FieldByName('NSMTopeIntImss').AsInteger,
          CdTipoNomina.FieldByName('IdTipoNomina').AsInteger, cdDepartamento.FieldByName('IdDepartamento').AsInteger, DiasT, CdTipoNomina.FieldByName('DiasDescanso').AsInteger,
          StrToInt(CxTextEdtFestivos.Text), cdGrupoSalario.FieldByName('Domingos').AsInteger, StrToInt(cxTextJornada.Text),cdTipoNomina.FieldByName('InicioSemana').AsString, cdTipoNomina.FieldByName('IdTipoTablaISPT').AsInteger,
          CdTipoNomina.FieldByName('Periodicidad').AsFloat, -1, -1, Now, Now, strToInt(cxTextAntiguedad.Text) ,cdPercepciones, cdDeducciones, Salario, SDI, Aguinaldo,
          Vacaciones, PrimaDominical, False);

      if esCalculoAsimilado then
      begin
        DiasT := 15;
        MensajeDlg := 'Se obtuvo un [$ ' + FloatToStr(Salario*DiasT) + '] para alcanzar un neto de $ ' + (CxTextEdtNeto.Text)
      end
      else
      begin
        DiasT := CdTipoNomina.FieldByName('DiasTrabajados').AsInteger;
        MensajeDlg := 'Se obtuvo un salario diario de [$ ' + FloatToStr(Salario) + ']  y Salario Integrado de [$' + FloatToStr(SDI) + '] para el neto de $ ' + (CxTextEdtNeto.Text);
      end;

      InteliDialog.ShowModal('Aviso', MensajeDlg, mtInformation, [mbOK],0);

      if (esCalculoAsimilado) and Assigned(frmConceptoExtraEmpleado) then
      begin
        frmConceptoExtraEmpleado.cxDbTextCantidad.Text := FloatToStr(Salario*DiasT);
        frmCOnceptoExtraEmpleado.cdUptConExtXEmp.FieldByName('Cantidad').AsFloat := Salario*DiasT;
      end;

      CdPercepciones.First;
      Calculos.Lines.Clear;
      Calculos.Lines.Add('**********PERCEPCIONES**********');

      while not CdPercepciones.Eof do
      begin
        if CdPercepciones.FieldByName('MODO').AsString = 'PERCEPCION' then
          Calculos.Lines.Add(CdPercepciones.FieldByName('Titulo').AsString + ' := ' + CdPercepciones.FieldByName('Importe').AsString)
        else
          Calculos.Lines.Add('(*) ' + CdPercepciones.FieldByName('Titulo').AsString + ' := ' + CdPercepciones.FieldByName('Importe').AsString);
        CdPercepciones.Next;
      end;

      cdDeducciones.First;
      //cxMemoDeducciones.Lines.Clear;
      Calculos.Lines.Add(' ');
      Calculos.Lines.Add('**********DEDUCCIONES**********');
      while not CdDeducciones.Eof do
      begin
        if CdDeducciones.FieldByName('MODO').AsString = 'DEDUCCION' then
          Calculos.Lines.Add(CdDeducciones.FieldByName('Titulo').AsString + ' := ' + CdDeducciones.FieldByName('Importe').AsString)
        else
          Calculos.Lines.Add('(*) ' + CdDeducciones.FieldByName('Titulo').AsString + ' := ' + CdDeducciones.FieldByName('Importe').AsString);
        CdDeducciones.Next;
      end;

      Calculos.Lines.Add('SALARIO DIARIO: ' + FloatToStrF(Salario, ffCurrency, 16, 2));
      Calculos.Lines.Add('SALARIO INTEGRADO: ' + FloatToStrF(SDI, ffCurrency, 16, 2));
    finally
      gcForma.Destroy;
      gcForma := Nil;
    end;
  except
    on e:InteligentException do
    begin
      if Assigned(Objeto) and Objeto.CanFocus then
        Objeto.SetFocus;

      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
    end;

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCalculoSalario.CxLCbbOrganizacionPropertiesChange(
  Sender: TObject);
begin
  try
    if CdOrganizacion.Locate('IdOrganizacion', CxLCbbOrganizacion.EditValue, []) then
    begin
      CxTextEdtFactorPrimaDom.Text := CdOrganizacion.FieldByName('FactorPrimaDominical').AsString;
      CxTextEdtSalMinGenZona.Text := CdOrganizacion.FieldByName('SalMinGenZona').AsString;
      CxTextEdtSeguroVidaInfonavit.Text := CdOrganizacion.FieldByName('SeguroVidaInfonavit').AsString;
      CxTextEdtDiasExcentoPrimaVac.Text := cdOrganizacion.FieldByName('DiasExcentoPrimaVacacional').AsString;
      CxTextEdtDiasExcentoAguinaldo.Text := CdOrganizacion.FieldByName('DiasExcentoAguinaldo').AsString;
    end;
  Except
    on e:InteligentException do
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCalculoSalario.CxLCbbTipoNominaPropertiesChange(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    screen.Cursor := CrAppStart;
    try
      if CdTipoNomina.Locate('idTipoNomina', CxLCbbTipoNomina.EditValue, []) then
      begin
        cxTextEdtDiasTrabajados.Text := CdTipoNomina.FieldByName('DiasTrabajados').asString;
        cxTextEdtDiasDescanso.TExt := CdTipoNomina.FieldByName('DiasDescanso').asString;
        cxTextEdtInicioSemana.Text := cdTipoNomina.FieldbyName('InicioSemana').AsString;
        cxTextEdtPeriodicidad.Text := cdTipoNomina.FieldByName('Periodicidad').asString;
      end;
    finally
      screen.Cursor := Cursor
    end;
  Except
    on e:InteligentException do
      inteliDialog.ShowModal(e.Title, e.Message, e.msgType, [mbOK], 0);

    on e:Exception do
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmCalculoSalario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EliminarConjunto([CdOrganizacion, CdGrupoSalario, CdTipoNomina, cdSalMinDF, cdSalario, cdDepartamento]);
end;

procedure TFrmCalculoSalario.FormCreate(Sender: TObject);
begin
  try
    if not CrearConjunto(CdOrganizacion, 'nuc_organizacion', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['nuc_organizacion']);

    if Not CrearConjunto(cdGrupoSalario, 'nom_gruposalario', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Grupos de Salario']);

    if Not CrearConjunto(CdTipoNomina, 'nom_tiponomina', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Nom_tipoNomina']);

    if Not CrearConjunto(cdSalMinDF, 'rhu_salario', ccCatalog) then
      raise InteligentException.CreateByCode(5, ['Salarios']);

    if not CrearConjunto(cdSalario, 'rhu_salario', ccCatalog) then
      raise InteligentConnection.CreateByCode(5, ['Salarios']);

    if not CrearConjunto(cdDepartamento, 'nuc_departamento_int', ccSelect) then
      raise InteligentConnection.CreateByCode(5, ['Departamentos']);

    esCalculoAsimilado := False;

    Calculos.Text := 'Aquí se mostrará el detallado de los cálculos.';
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

procedure TFrmCalculoSalario.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    Screen.Cursor := crAppStart;
    try
      if Not CargarDatosFiltrados(cdSalMinDF, 'FechaAplicacion,TipoSalario', [ClientModule1.DatetoStrSql(Now), 'SMVDF']) then
        raise InteligentException.CreateByCode(6, ['Salarios', 'Tipo Salario', 'SMVDF']);

      if cdSalMinDF.Active then
        cdSalMinDF.Refresh
      else
        cdSalMinDF.Open;

      if cdSalMinDF.RecordCount <> 1 then
        raise InteligentException.CreateByCode(22, ['Salario Mínimo del D.F.']);

      if not CargarDatosFiltrados(CdTipoNomina, 'idTipoNomina', [-1]) then
        raise InteligentException.CreateByCode(6, ['Tipo Nómina', 'idTipoNomina', '-1']);

      if CdTipoNomina.Active then
        CdTipoNomina.Refresh
      else
        CdTipoNomina.Open;

      if (esCalculoAsimilado) and (CdTipoNomina.RecordCount > 0) and (CdTipoNomina.FieldByName('TipoCalculo').AsString = 'ASIMILADOS') then
      begin
        try
          CdTipoNomina.Filtered := False;
          CdTipoNomina.Filter := 'TipoCalculo = ' + QuotedStr('ASIMILADOS');
          CdTipoNomina.Filtered := True;
        except
          CdTipoNomina.Filtered := False;
        end;
      end;

      if not CargarDatosFiltrados(CdOrganizacion, 'padre2', [-5]) then
        raise InteligentException.CreateByCode(6, ['Nuc_organizacion', 'Padre2', '-5']);

      if CdOrganizacion.Active then
        CdOrganizacion.Refresh
      else
        CdOrganizacion.Open;

      CdGrupoSalario.Open;
      SalMinDF.Text := CdSalMinDf.FieldByName('Salario').AsString;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e:InteligentException do
    begin
      InteliDialog.ShowModal(e.Title, e.Message, e.MsgType, [mbOK], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;

    on e:Exception do
    begin
      InteliDialog.ShowModal(IDTituloError, IDLabelError + e.Message, mtError, [mbOk], 0);
      PostMessage(Self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;
end.
