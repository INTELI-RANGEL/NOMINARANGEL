object FrmCalculoSalario: TFrmCalculoSalario
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'C'#225'lculo de Salario'
  ClientHeight = 574
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageCalculoAutomatico: TcxPageControl
    Left = 0
    Top = 0
    Width = 467
    Height = 574
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2010Blue'
    ExplicitHeight = 551
    ClientRectBottom = 568
    ClientRectLeft = 2
    ClientRectRight = 461
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = 'C'#225'lculo Manual'
      ImageIndex = 0
      ExplicitHeight = 518
      object CxLCbbOrganizacion: TcxLookupComboBox
        Left = 136
        Top = 44
        Properties.KeyFieldNames = 'idOrganizacion'
        Properties.ListColumns = <
          item
            FieldName = 'nombreorganizacion'
          end>
        Properties.ListSource = dsOrganizacion
        Properties.OnChange = CxLCbbOrganizacionPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.Color = 16701617
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 1
        Width = 321
      end
      object CxLCbbTipoNomina: TcxLookupComboBox
        Left = 136
        Top = 71
        Properties.KeyFieldNames = 'IdTipoNomina'
        Properties.ListColumns = <
          item
            FieldName = 'Titulo'
          end>
        Properties.ListSource = dsTipoNomina
        Properties.OnChange = CxLCbbTipoNominaPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 2
        Width = 321
      end
      object SalMinDF: TcxTextEdit
        Left = 136
        Top = 131
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.Color = 16701617
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 4
        TextHint = 'Ingresa el Salario M'#237'nimo del D.F.'
        Width = 193
      end
      object CxTextEdtFactorPrimaDom: TcxTextEdit
        Left = 136
        Top = 158
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 8
        TextHint = 'Factor Prima Dominical'
        Width = 100
      end
      object FactorPrimaVacacional: TcxTextEdit
        Left = 357
        Top = 158
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 9
        TextHint = 'Factor Prima Vacacional'
        Width = 100
      end
      object CxTextEdtSalMinGenZona: TcxTextEdit
        Left = 136
        Top = 185
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 10
        TextHint = 'Salario M'#237'nino de la Zona'
        Width = 100
      end
      object CxTextEdtSeguroVidaInfonavit: TcxTextEdit
        Left = 357
        Top = 185
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 11
        TextHint = 'Seguro de Vida Infonavit'
        Width = 100
      end
      object CxTextEdtDiasExcentoPrimaVac: TcxTextEdit
        Left = 136
        Top = 212
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 12
        TextHint = 'Dias Excento Prima Vacacional'
        Width = 100
      end
      object CxTextEdtDiasExcentoAguinaldo: TcxTextEdit
        Left = 357
        Top = 212
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 13
        TextHint = 'D'#237'as Excento Aguinaldo'
        Width = 100
      end
      object CxTextEdtDiasTrabajados: TcxTextEdit
        Left = 136
        Top = 239
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 14
        TextHint = 'D'#237'as Trabajados'
        Width = 100
      end
      object CxTextEdtDiaSDescanso: TcxTextEdit
        Left = 357
        Top = 239
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 15
        TextHint = 'D'#237'as Descanso'
        Width = 100
      end
      object CxTextEdtFestivos: TcxTextEdit
        Left = 136
        Top = 320
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 5
        Text = '0'
        TextHint = 'N'#250'm. Dias Festivos'
        Width = 100
      end
      object CxTextEdtDomingos: TcxTextEdit
        Left = 357
        Top = 320
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 6
        Text = '2'
        TextHint = 'N'#250'm. Domingos'
        Width = 100
      end
      object CxTextEdtInicioSemana: TcxTextEdit
        Left = 136
        Top = 266
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 16
        TextHint = 'D'#237'a Inicio Semana'
        Width = 321
      end
      object CxTextEdtPeriodicidad: TcxTextEdit
        Left = 136
        Top = 293
        Enabled = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 17
        TextHint = 'Periodicidad de Tipo N'#243'mina'
        Width = 321
      end
      object CxBtnCalcularSalario: TcxButton
        Left = 344
        Top = 393
        Width = 113
        Height = 25
        Caption = '&Calcular Salario'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 7
        OnClick = CxBtnCalcularSalarioClick
      end
      object CxTextEdtNeto: TcxTextEdit
        Left = 136
        Top = 17
        StyleFocused.Color = 16701617
        TabOrder = 0
        TextHint = 'Introduce el neto'
        Width = 273
      end
      object CxLbl2: TcxLabel
        Left = 12
        Top = 132
        Caption = 'Sal. Min. D.F.'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl1: TcxLabel
        Left = 12
        Top = 18
        Caption = 'Sueldo a Obtener:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl3: TcxLabel
        Left = 12
        Top = 45
        Caption = 'Organizacion:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl4: TcxLabel
        Left = 12
        Top = 159
        Caption = 'Factor Prima Dom.:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl5: TcxLabel
        Left = 242
        Top = 158
        Caption = 'Factor Prima Vac.:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl6: TcxLabel
        Left = 12
        Top = 186
        Caption = 'Sal. Min. Gen. Zona:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl7: TcxLabel
        Left = 242
        Top = 186
        Caption = 'Seguro Vida Infonavit:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl8: TcxLabel
        Left = 12
        Top = 213
        Caption = 'D'#237'as Exc. Prima Vac.:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl9: TcxLabel
        Left = 242
        Top = 213
        Caption = 'D'#237'as Exc. Aguinaldo:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl10: TcxLabel
        Left = 12
        Top = 72
        Caption = 'Tipo N'#243'mina:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl11: TcxLabel
        Left = 12
        Top = 240
        Caption = 'Dias Trabajados:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl12: TcxLabel
        Left = 242
        Top = 240
        Caption = 'D'#237'as Descanso:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl13: TcxLabel
        Left = 12
        Top = 267
        Caption = 'Inicio Semana:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl14: TcxLabel
        Left = 12
        Top = 294
        Caption = 'Periodicidad:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl15: TcxLabel
        Left = 12
        Top = 321
        Caption = 'No. D'#237'as Festivos:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxLbl16: TcxLabel
        Left = 256
        Top = 320
        Caption = 'No. Domingos:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object Calculos: TcxRichEdit
        Left = 12
        Top = 424
        Properties.HideScrollBars = False
        Properties.ScrollBars = ssVertical
        Properties.StreamModes = [resmSelection]
        Lines.Strings = (
          'cxRichEditCalculos')
        TabOrder = 34
        Height = 113
        Width = 445
      end
      object cxLabel1: TcxLabel
        Left = 12
        Top = 348
        Caption = 'Jornada'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxTextJornada: TcxTextEdit
        Left = 136
        Top = 347
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 36
        Text = '8'
        TextHint = 'N'#250'm. Dias Festivos'
        Width = 100
      end
      object cxLabel2: TcxLabel
        Left = 262
        Top = 347
        Caption = 'A'#241'os Antig'#252'edad:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object CxTextAntiguedad: TcxTextEdit
        Left = 357
        Top = 347
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 38
        Text = '1'
        TextHint = 'N'#250'm. Domingos'
        Width = 100
      end
      object cxLabel3: TcxLabel
        Left = 12
        Top = 99
        Caption = 'Departamento:'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        Transparent = True
      end
      object cbbIdDepartamento: TcxLookupComboBox
        Left = 136
        Top = 98
        Properties.KeyFieldNames = 'IdDepartamento'
        Properties.ListColumns = <
          item
            FieldName = 'TituloDepartamento'
          end>
        Properties.ListSource = dsDepartamento
        Properties.OnChange = cbbIdDepartamentoPropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2010Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
        TabOrder = 3
        Width = 321
      end
    end
  end
  object CdOrganizacion: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = CdOrganizacionAfterScroll
    Left = 312
    Top = 65528
  end
  object CdSalMinDf: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 65528
  end
  object CdTipoNomina: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = CdOrganizacionAfterScroll
    Left = 232
    Top = 65528
  end
  object CdDeducciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 544
    Top = 65528
  end
  object CdPercepciones: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 464
    Top = 65528
  end
  object CdGrupoSalario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 65528
  end
  object dsTipoNomina: TDataSource
    DataSet = CdTipoNomina
    Left = 384
    Top = 80
  end
  object dsOrganizacion: TDataSource
    DataSet = CdOrganizacion
    Left = 80
    Top = 376
  end
  object CdSalario: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 65528
  end
  object dsPercepciones: TDataSource
    DataSet = CdPercepciones
    Left = 464
    Top = 208
  end
  object dsDeducciones: TDataSource
    DataSet = CdDeducciones
    Left = 464
    Top = 160
  end
  object cdDepartamento: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 288
  end
  object dsDepartamento: TDataSource
    DataSet = cdDepartamento
    Left = 288
    Top = 280
  end
end
