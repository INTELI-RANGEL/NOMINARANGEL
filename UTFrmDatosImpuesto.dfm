inherited FrmDatosImpuesto: TFrmDatosImpuesto
  Caption = 'Impuesto'
  ClientHeight = 155
  ClientWidth = 457
  ExplicitWidth = 465
  ExplicitHeight = 182
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelBarraLugar: TPanel
    Top = 106
    Width = 457
    ExplicitTop = 106
    ExplicitWidth = 457
  end
  inherited PanelDatosLugares: TPanel
    Width = 457
    Height = 106
    ExplicitWidth = 457
    ExplicitHeight = 106
    object edtcodigoimpuesto: TDBAdvEdit
      Left = 96
      Top = 16
      Width = 137
      Height = 21
      LabelCaption = 'C'#243'digo:'
      LabelPosition = lpLeftCenter
      LabelMargin = 6
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      TabOrder = 0
      Text = 'EDT1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'codigoimpuesto'
      DataSource = dsDatos
    end
    object edttituloimpuesto: TDBAdvEdit
      Left = 96
      Top = 43
      Width = 337
      Height = 21
      LabelCaption = 'T'#237'tulo:'
      LabelPosition = lpLeftCenter
      LabelMargin = 6
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      TabOrder = 1
      Text = 'EDT1'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'tituloimpuesto'
      DataSource = dsDatos
    end
    object edttituloviaembarque1: TDBAdvEdit
      Left = 96
      Top = 70
      Width = 65
      Height = 21
      EditAlign = eaRight
      EditType = etFloat
      Precision = 4
      LabelCaption = 'Tasa:'
      LabelPosition = lpLeftCenter
      LabelMargin = 6
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      CharCase = ecUpperCase
      Color = clWindow
      Enabled = True
      TabOrder = 2
      Text = '0.0000'
      Visible = True
      Version = '2.9.0.0'
      DataField = 'tasa'
      DataSource = dsDatos
    end
  end
end