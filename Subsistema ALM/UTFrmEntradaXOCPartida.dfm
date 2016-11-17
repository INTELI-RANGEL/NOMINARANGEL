inherited FrmEntradaXOCPartida: TFrmEntradaXOCPartida
  Caption = 'Entrada de material y equipo'
  ClientHeight = 265
  ClientWidth = 474
  OnCreate = FormCreate
  ExplicitWidth = 480
  ExplicitHeight = 290
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 474
    Height = 265
    ExplicitWidth = 474
    ExplicitHeight = 265
    object JvLabel2: TJvLabel [0]
      Left = 41
      Top = 123
      Width = 49
      Height = 13
      Caption = 'Cantidad:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel [1]
      Left = 17
      Top = 153
      Width = 77
      Height = 13
      Caption = 'Observaciones:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object lbl1: TJvLabel [2]
      Left = 321
      Top = 123
      Width = 35
      Height = 13
      Caption = 'Precio:'
      Transparent = True
      Visible = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    inherited BtnAdd: TAdvShapeButton
      Left = 160
      Top = 211
      TabOrder = 3
      ExplicitLeft = 160
      ExplicitTop = 211
    end
    inherited BtnClose: TAdvShapeButton
      Left = 272
      Top = 211
      TabOrder = 4
      ExplicitLeft = 272
      ExplicitTop = 211
    end
    object edtCodigoUnidad: TDBEdit
      Tag = 99
      Left = 186
      Top = 122
      Width = 79
      Height = 21
      TabStop = False
      BorderStyle = bsNone
      DataField = 'codigounidad'
      DataSource = dsDetalle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtCantidad: TJvDBCalcEdit
      Left = 94
      Top = 119
      Width = 85
      Height = 21
      DecimalPlaces = 4
      DisplayFormat = ',0.####'
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
      OnKeyPress = edtCantidadKeyPress
      DataField = 'cantidad'
      DataSource = dsDetalle
    end
    object memObservaciones: TDBMemo
      Left = 94
      Top = 150
      Width = 371
      Height = 49
      DataField = 'observaciones'
      DataSource = dsDetalle
      TabOrder = 2
      OnKeyPress = edtCantidadKeyPress
    end
    object Panel2: TPanel
      Left = 58
      Top = 6
      Width = 409
      Height = 63
      BevelOuter = bvNone
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 5
      object edtTituloArticulo: TDBEdit
        Tag = 99
        Left = 6
        Top = 23
        Width = 395
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        DataField = 'tituloarticulo'
        DataSource = dsDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
      end
      object edtTituloDisciplina: TDBEdit
        Tag = 99
        Left = 6
        Top = 43
        Width = 395
        Height = 20
        TabStop = False
        BorderStyle = bsNone
        DataField = 'titulodisciplina'
        DataSource = dsDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 1
      end
      object edtcodigoarticulo: TDBEdit
        Tag = 99
        Left = 6
        Top = 5
        Width = 395
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        DataField = 'codigoarticulo'
        DataSource = dsDetalle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 2
      end
    end
    object edtPreciocantidad: TJvDBCalcEdit
      Left = 358
      Top = 119
      Width = 85
      Height = 21
      DecimalPlaces = 4
      DisplayFormat = '$,0.00##'
      ReadOnly = True
      ShowButton = False
      TabOrder = 6
      Visible = False
      DecimalPlacesAlwaysShown = False
      OnKeyPress = edtCantidadKeyPress
      DataField = 'precio'
      DataSource = dsDetalle
    end
    object edtCantidadOC: TAdvEdit
      Left = 94
      Top = 91
      Width = 85
      Height = 21
      TabStop = False
      LabelCaption = 'Cantidad en OC'
      LabelPosition = lpTopCenter
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clInactiveBorder
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      Visible = True
      Version = '2.9.0.0'
    end
    object edtCantidadRec: TAdvEdit
      Left = 198
      Top = 91
      Width = 85
      Height = 21
      TabStop = False
      LabelCaption = 'Cantidad recibida'
      LabelPosition = lpTopCenter
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clInactiveBorder
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      Visible = True
      Version = '2.9.0.0'
    end
  end
  inherited dsDetalle: TDataSource
    DataSet = mdDetalle
    Left = 424
    Top = 160
  end
  inherited mdDetalle: TJvMemoryData
    Left = 368
    Top = 200
  end
end