object FrmConcentradoNominas: TFrmConcentradoNominas
  Left = 0
  Top = 0
  Caption = 'Concentrado de N'#243'minas'
  ClientHeight = 349
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 543
    Height = 267
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 136
    ExplicitTop = 160
    ExplicitWidth = 185
    ExplicitHeight = 41
    object clbTiposNomina: TCheckListBox
      Left = 0
      Top = 0
      Width = 385
      Height = 267
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 32
      ExplicitWidth = 235
      ExplicitHeight = 257
    end
    object clbConceptos: TCheckListBox
      Left = 385
      Top = 0
      Width = 158
      Height = 267
      Align = alRight
      ItemHeight = 13
      Items.Strings = (
        'DiasTrabajados'
        'Sueldo'
        'TiempoExtra'
        'Vacaciones'
        'PrimaVacacional'
        'Aguinaldo'
        'Indemnizacion'
        'Subsidio'
        'ISPTAS'
        'ISPT'
        'IMSSEmpleado'
        'Sindicato'
        'PrestamoInfonavit'
        'PensionAlimenticia'
        'TotPer'
        'TotDed'
        'Neto')
      TabOrder = 1
      ExplicitLeft = 288
      ExplicitTop = 1
      ExplicitHeight = 275
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 308
    Width = 543
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Padding.Left = 6
    Padding.Top = 4
    Padding.Right = 6
    Padding.Bottom = 4
    TabOrder = 1
    ExplicitLeft = 136
    ExplicitTop = 160
    ExplicitWidth = 185
    object btnCancelar: TAdvGlowButton
      Left = 437
      Top = 4
      Width = 100
      Height = 33
      Align = alRight
      Caption = '&Cancelar'
      ImageIndex = 8
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 0
      OnClick = btnCancelarClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      ExplicitLeft = 224
      ExplicitTop = 0
      ExplicitHeight = 41
    end
    object btnOk: TAdvGlowButton
      Left = 337
      Top = 4
      Width = 100
      Height = 33
      Align = alRight
      Caption = '&Imprimir'
      ImageIndex = 1
      Images = ClientModule1.PngImageList1
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 1
      OnClick = btnOkClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      ExplicitLeft = 224
      ExplicitTop = 0
      ExplicitHeight = 41
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 543
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitLeft = 184
    ExplicitTop = 160
    ExplicitWidth = 185
    object JvLabel1: TJvLabel
      Left = 8
      Top = 14
      Width = 158
      Height = 13
      Caption = 'Seleccionar N'#243'minas a partir del:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 274
      Top = 14
      Width = 15
      Height = 13
      Caption = 'Al:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object Desde: TcxDateEdit
      Left = 172
      Top = 11
      EditValue = 0d
      Properties.AssignedValues.DisplayFormat = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 0
      Width = 85
    end
    object Hasta: TcxDateEdit
      Left = 295
      Top = 11
      EditValue = 0d
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 85
    end
  end
  object cdTiposNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 184
  end
  object dsTipoNomina: TDataSource
    DataSet = cdTiposNomina
    Left = 128
    Top = 184
  end
  object cdConcentrado: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 168
  end
  object dsConcentrado: TDataSource
    DataSet = cdConcentrado
    Left = 320
    Top = 168
  end
  object FDSConcentrado: TfrxDBDataset
    UserName = 'FDSConcentrado'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Cuenta=Cuenta'
      'IdOrganizacion=IdOrganizacion'
      'TituloOrganizacion=TituloOrganizacion'
      'IdNomina=IdNomina'
      'Titulo=Titulo'
      'FechaNomina=FechaNomina'
      'FechaTerminoNomina=FechaTerminoNomina'
      'IdDepartamento=IdDepartamento'
      'TituloDepartamento=TituloDepartamento'
      'IdCargo=IdCargo'
      'TituloCargo=TituloCargo'
      'IdPersonal=IdPersonal'
      'CodigoPersonal=CodigoPersonal'
      'NombreCompleto=NombreCompleto'
      'Salario=Salario'
      'SalarioIntegrado=SalarioIntegrado'
      'DiasTrabajados=DiasTrabajados'
      'Sueldo=Sueldo'
      'TiempoExtra=TiempoExtra'
      'Vacaciones=Vacaciones'
      'PrimaVacacional=PrimaVacacional'
      'Aguinaldo=Aguinaldo'
      'Indemnizacion=Indemnizacion'
      'Subsidio=Subsidio'
      'ISPTAS=ISPTAS'
      'ISPT=ISPT'
      'IMSSEmpleado=IMSSEmpleado'
      'Sindicato=Sindicato'
      'PrestamoInfonavit=PrestamoInfonavit'
      'PensionAlimenticia=PensionAlimenticia'
      'TotPer=TotPer'
      'TotDed=TotDed'
      'Neto=Neto')
    DataSet = cdConcentrado
    BCDToCurrency = False
    Left = 216
    Top = 240
  end
  object RepConcentrado: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42665.605071736100000000
    ReportOptions.LastChange = 42665.824469236110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <Cuantas> > 0 then'
      '  begin'
      '    Tit1.Text := <Titulo1>;'
      '    Field1.DataField := <Valor1>;    '
      '  end;'
      ''
      '  if <Cuantas> > 1 then'
      '  begin'
      
        '    Tit2.Visible := True;                                       ' +
        '    '
      '    Tit2.Text := <Titulo2>;'
      
        '    Field2.Visible := True;                                     ' +
        '      '
      '    Field2.DataField := <Valor2>;    '
      '  end;'
      ''
      '  if <Cuantas> > 2 then'
      '  begin'
      
        '    Tit3.Visible := True;                                       ' +
        '    '
      '    Tit3.Text := <Titulo3>;'
      
        '    Field3.Visible := True;                                     ' +
        '      '
      '    Field3.DataField := <Valor3>;    '
      '  end;'
      ''
      '  if <Cuantas> > 3 then'
      '  begin'
      
        '    Tit4.Visible := True;                                       ' +
        '    '
      '    Tit4.Text := <Titulo4>;'
      
        '    Field4.Visible := True;                                     ' +
        '      '
      '    Field4.DataField := <Valor4>;    '
      '  end;'
      ''
      '  if <Cuantas> > 4 then'
      '  begin'
      
        '    Tit5.Visible := True;                                       ' +
        '    '
      '    Tit5.Text := <Titulo5>;'
      
        '    Field5.Visible := True;                                     ' +
        '      '
      '    Field5.DataField := <Valor5>;    '
      '  end;'
      ''
      '  if <Cuantas> > 5 then'
      '  begin'
      
        '    Tit6.Visible := True;                                       ' +
        '    '
      '    Tit6.Text := <Titulo6>;'
      
        '    Field6.Visible := True;                                     ' +
        '      '
      '    Field6.DataField := <Valor6>;    '
      '  end;'
      ''
      '  if <Cuantas> > 6 then'
      '  begin'
      
        '    Tit7.Visible := True;                                       ' +
        '    '
      '    Tit7.Text := <Titulo7>;'
      
        '    Field7.Visible := True;                                     ' +
        '      '
      '    Field7.DataField := <Valor7>;    '
      '  end;'
      ''
      '  if <Cuantas> > 7 then'
      '  begin'
      
        '    Tit8.Visible := True;                                       ' +
        '    '
      '    Tit8.Text := <Titulo8>;'
      
        '    Field8.Visible := True;                                     ' +
        '      '
      '    Field8.DataField := <Valor8>;    '
      '  end;'
      ''
      '  if <Cuantas> > 8 then'
      '  begin'
      
        '    Tit9.Visible := True;                                       ' +
        '    '
      '    Tit9.Text := <Titulo9>;'
      
        '    Field9.Visible := True;                                     ' +
        '      '
      '    Field9.DataField := <Valor9>;    '
      '  end;'
      ''
      '  if <Cuantas> > 9 then'
      '  begin'
      
        '    Tit10.Visible := True;                                      ' +
        '     '
      '    Tit10.Text := <Titulo10>;'
      
        '    Field10.Visible := True;                                    ' +
        '       '
      '    Field10.DataField := <Valor10>;    '
      '  end;'
      ''
      '  if <Cuantas> > 10 then'
      '  begin'
      
        '    Tit11.Visible := True;                                      ' +
        '     '
      '    Tit11.Text := <Titulo11>;'
      
        '    Field11.Visible := True;                                    ' +
        '       '
      '    Field11.DataField := <Valor11>;    '
      '  end;'
      ''
      '  if <Cuantas> > 11 then'
      '  begin'
      
        '    Tit12.Visible := True;                                      ' +
        '     '
      '    Tit12.Text := <Titulo12>;'
      
        '    Field12.Visible := True;                                    ' +
        '       '
      '    Field12.DataField := <Valor12>;    '
      '  end;'
      ''
      '  if <Cuantas> > 12 then'
      '  begin'
      
        '    Tit13.Visible := True;                                      ' +
        '     '
      '    Tit13.Text := <Titulo13>;'
      
        '    Field13.Visible := True;                                    ' +
        '       '
      '    Field13.DataField := <Valor13>;    '
      '  end;'
      ''
      '  if <Cuantas> > 13 then'
      '  begin'
      
        '    Tit14.Visible := True;                                      ' +
        '     '
      '    Tit14.Text := <Titulo14>;'
      
        '    Field14.Visible := True;                                    ' +
        '       '
      '    Field14.DataField := <Valor14>;    '
      '  end;'
      ''
      '  if <Cuantas> > 14 then'
      '  begin'
      
        '    Tit15.Visible := True;                                      ' +
        '     '
      '    Tit15.Text := <Titulo15>;'
      '    Field15.Visible := True;                                  '
      '    Field15.DataField := <Valor15>;'
      '  end;'
      'end;'
      ''
      'procedure RepConcentradoOnStartReport(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      '  if <Cuantas> > 10 then'
      '  begin              '
      '    Page1.Orientation := poLandscape;'
      '    case <Cuantas> of'
      '      11: Nomina.Width := 300;'
      '      12: Nomina.Width := 250;'
      '      13: Nomina.Width := 200;'
      '      14: Nomina.Width := 150;'
      '      15: Nomina.Width := 100;'
      '    end;                      '
      '  end                '
      '  else'
      '  begin              '
      '    Page1.Orientation := poPortrait;'
      ''
      '    case <Cuantas> of'
      '      1: Nomina.Width := 300;'
      '      2: Nomina.Width := 300;'
      '      3: Nomina.Width := 300;'
      '      4: Nomina.Width := 300;'
      '      5: Nomina.Width := 300;'
      '      6: Nomina.Width := 300;'
      '      7: Nomina.Width := 270;'
      '      8: Nomina.Width := 220;'
      '      9: Nomina.Width := 170;'
      '      10: Nomina.Width := 110;'
      '    end;                      '
      '  end;'
      ''
      
        '  // Reajustar todo el pedo (Titulos)                           ' +
        '                                                             '
      '  Del.Left := Nomina.Width;'
      '  Al.Left := Del.Left + Del.Width;'
      '  Num.Left := Al.Left + Al.Width;'
      '  Tit1.Left := Num.Left + Num.Width;'
      
        '  Tit2.Left := Tit1.Left + Tit1.Width;                          ' +
        '                                                        '
      
        '  Tit3.Left := Tit2.Left + Tit2.Width;                          ' +
        '                                                        '
      
        '  Tit4.Left := Tit3.Left + Tit3.Width;                          ' +
        '                                                        '
      
        '  Tit5.Left := Tit4.Left + Tit4.Width;                          ' +
        '                                                        '
      
        '  Tit6.Left := Tit5.Left + Tit5.Width;                          ' +
        '                                                        '
      
        '  Tit7.Left := Tit6.Left + Tit6.Width;                          ' +
        '                                                        '
      
        '  Tit8.Left := Tit7.Left + Tit7.Width;                          ' +
        '                                                        '
      
        '  Tit9.Left := Tit8.Left + Tit8.Width;                          ' +
        '                                                        '
      
        '  Tit10.Left := Tit9.Left + Tit9.Width;                         ' +
        '                                                         '
      
        '  Tit11.Left := Tit10.Left + Tit10.Width;                       ' +
        '                                                           '
      
        '  Tit12.Left := Tit11.Left + Tit11.Width;                       ' +
        '                                                           '
      
        '  Tit13.Left := Tit12.Left + Tit12.Width;                       ' +
        '                                                           '
      
        '  Tit14.Left := Tit13.Left + Tit13.Width;                       ' +
        '                                                           '
      
        '  Tit15.Left := Tit14.Left + Tit14.Width;                       ' +
        '                                                           '
      '                              '
      
        '  // Reajustar todo el pedo (Datos)                             ' +
        '                                                           '
      '  FNomina.Width := Nomina.Width;'
      '  FDel.Left := Del.Left;'
      '  FAl.Left := Al.Left;'
      '  FNum.Left := Num.Left;'
      
        '  Field1.Left := Tit1.Left;                                     ' +
        '                       '
      
        '  Field2.Left := Tit2.Left;                                     ' +
        '                       '
      
        '  Field3.Left := Tit3.Left;                                     ' +
        '                       '
      
        '  Field4.Left := Tit4.Left;                                     ' +
        '                       '
      
        '  Field5.Left := Tit5.Left;                                     ' +
        '                       '
      
        '  Field6.Left := Tit6.Left;                                     ' +
        '                       '
      
        '  Field7.Left := Tit7.Left;                                     ' +
        '                       '
      
        '  Field8.Left := Tit8.Left;                                     ' +
        '                       '
      
        '  Field9.Left := Tit9.Left;                                     ' +
        '                       '
      
        '  Field10.Left := Tit10.Left;                                   ' +
        '                         '
      
        '  Field11.Left := Tit11.Left;                                   ' +
        '                         '
      
        '  Field12.Left := Tit12.Left;                                   ' +
        '                         '
      
        '  Field13.Left := Tit13.Left;                                   ' +
        '                         '
      
        '  Field14.Left := Tit14.Left;                                   ' +
        '                         '
      
        '  Field15.Left := Tit15.Left;                                   ' +
        '                         '
      'end.')
    OnGetValue = RepConcentradoGetValue
    OnStartReport = 'RepConcentradoOnStartReport'
    OnReportPrint = 'no '
    Left = 312
    Top = 232
    Datasets = <
      item
        DataSet = FDSConcentrado
        DataSetName = 'FDSConcentrado'
      end
      item
        DataSet = Form2.FDSOrganizacion
        DataSetName = 'FDSOrganizacion'
      end
      item
        DataSet = Form2.FrxImagen
        DataSetName = 'ReporteImagen'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 119
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 226.771800000000000000
        Width = 778.583180000000000000
        DataSet = FDSConcentrado
        DataSetName = 'FDSConcentrado'
        RowCount = 0
        Stretched = True
        object FNomina: TfrxMemoView
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Titulo'
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[FDSConcentrado."Titulo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FDel: TfrxMemoView
          Left = 94.488250000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'FechaNomina'
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FDSConcentrado."FechaNomina"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FAl: TfrxMemoView
          Left = 147.401670000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'FechaTerminoNomina'
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FDSConcentrado."FechaTerminoNomina"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object FNum: TfrxMemoView
          Left = 200.315090000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Cuenta'
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[FDSConcentrado."Cuenta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Field1: TfrxMemoView
          Left = 226.771800000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Field2: TfrxMemoView
          Left = 279.685220000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Field3: TfrxMemoView
          Left = 332.598640000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Field4: TfrxMemoView
          Left = 385.512060000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Field5: TfrxMemoView
          Left = 438.425480000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Field6: TfrxMemoView
          Left = 491.338900000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Field7: TfrxMemoView
          Left = 544.252320000000100000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Field8: TfrxMemoView
          Left = 597.165740000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Field9: TfrxMemoView
          Left = 650.079160000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Field10: TfrxMemoView
          Left = 702.992580000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Field11: TfrxMemoView
          Left = 755.906000000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Field12: TfrxMemoView
          Left = 808.819420000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Field13: TfrxMemoView
          Left = 861.732840000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Field14: TfrxMemoView
          Left = 914.646260000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Field15: TfrxMemoView
          Left = 967.559680000000000000
          Width = 52.913385830000000000
          Height = 15.118120000000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 185.196970000000000000
        Width = 778.583180000000000000
        Condition = 'FDSConcentrado."IdOrganizacion"'
        object Tit15: TfrxMemoView
          Left = 967.559680000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit14: TfrxMemoView
          Left = 914.646260000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit13: TfrxMemoView
          Left = 861.732840000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit12: TfrxMemoView
          Left = 808.819420000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit11: TfrxMemoView
          Left = 755.906000000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit10: TfrxMemoView
          Left = 702.992580000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit9: TfrxMemoView
          Left = 650.079160000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit8: TfrxMemoView
          Left = 597.165740000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit7: TfrxMemoView
          Left = 544.252320000000100000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit6: TfrxMemoView
          Left = 491.338900000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit5: TfrxMemoView
          Left = 438.425480000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit4: TfrxMemoView
          Left = 385.512060000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit3: TfrxMemoView
          Left = 332.598640000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit2: TfrxMemoView
          Left = 279.685220000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          Visible = False
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Tit1: TfrxMemoView
          Left = 226.771800000000000000
          Width = 52.913385830000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '')
          ParentFont = False
          VAlign = vaCenter
        end
        object Num: TfrxMemoView
          Left = 200.315090000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'm')
          ParentFont = False
          VAlign = vaCenter
        end
        object Al: TfrxMemoView
          Left = 147.401670000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'AL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Del: TfrxMemoView
          Left = 94.488250000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DEL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Nomina: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Color = 15000804
          DataSet = FDSConcentrado
          DataSetName = 'FDSConcentrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#211'MINA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 105.826840000000000000
        Top = 18.897650000000000000
        Width = 778.583180000000000000
        object Memo1: TfrxMemoView
          Left = 139.842610000000000000
          Top = 3.779530000000001000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Baskerville Old Face'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FDSOrganizacion."tituloorganizacion"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Width = 136.063080000000000000
          Height = 94.488250000000000000
          ShowHint = False
          DataField = 'Imagen1'
          DataSet = Form2.FrxImagen
          DataSetName = 'ReporteImagen'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 139.842610000000000000
          Top = 22.677180000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'REPORTE CONCENTRADO DE N'#211'MINAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 139.842610000000000000
          Top = 41.574830000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.FormatStr = 'dd-mm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'INCLUYE N'#211'MINAS DESDE EL D'#205'A [Inicio] AL [Termino]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
