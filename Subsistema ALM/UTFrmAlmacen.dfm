inherited FrmAlmacen: TFrmAlmacen
  BorderWidth = 1
  Caption = 'Almacenes'
  ClientHeight = 431
  ClientWidth = 842
  PrintScale = poNone
  ExplicitTop = -62
  ExplicitWidth = 852
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 842
    ExplicitWidth = 842
    inherited LbFiltros: TJvLabel
      Width = 834
      ExplicitWidth = 840
    end
    inherited GroupBoxFiltro: TGroupBox
      Top = 0
      Width = 392
      ExplicitTop = 0
      ExplicitWidth = 392
      inherited BtnSearch: TAdvShapeButton
        Left = 352
        Top = 8
        TabOrder = 2
        OnClick = BtnSearchClick
        ExplicitLeft = 352
        ExplicitTop = 8
      end
      object edtFCodigo: TAdvEdit
        Left = 3
        Top = 17
        Width = 159
        Height = 21
        EmptyText = 'C'#243'digo'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        TabOrder = 0
        Visible = True
        OnKeyPress = edtFCodigoKeyPress
        Version = '2.9.0.0'
      end
      object edtFtitulo: TAdvEdit
        Left = 168
        Top = 17
        Width = 177
        Height = 21
        EmptyText = 'T'#237'tulo'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Enabled = True
        TabOrder = 1
        Visible = True
        OnKeyPress = edtFCodigoKeyPress
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 842
    Height = 350
    ExplicitWidth = 842
    ExplicitHeight = 350
    inherited DBGridPrincipal: TNextDBGrid
      Width = 840
      Height = 268
      ExplicitWidth = 840
      ExplicitHeight = 268
      object NxDBTextColumn1: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'idAlmacen'
        Header.DisplayMode = dmTextAndImage
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
        Visible = False
        FieldName = 'idalmacen'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'C'#243'digo'
        Header.DisplayMode = dmTextAndImage
        Header.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000120000
          002C0F0F04721616068716160687161606871616068716160687161606871616
          06871616068716160687161606870F0F04720000002C00000012000000090000
          00161D1D0C82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFDFFFEFEFCFFFDFD
          FBFFFDFDFAFFFCFCF8FFFEFEF9FF1D1D0C820000001600000009000000000000
          00002323127BFFFFFFFFFFFFFFFFFEFEFEFFFDFDFCFFFDFDFBFFFCFCF9FFFBFB
          F8FFFAFAF6FFF8F8F4FFFBFBF6FF2323127B0000000000000000000000000000
          000027271677FFFFFFFFFEFEFEFF5A5A5AFFC8C8C6FFFCFCF9FF626262FFDEDE
          DAFFF8F8F4FFF7F7F2FFFBFBF5FF272716770000000000000000000000000000
          000029291876FFFFFEFFFDFDFCFFAFAFAEFF949493FFFBFBF8FF939392FFB4B4
          B2FFF7F7F2FFF6F6F0FFFAFAF3FF292918760000000000000000000000000000
          00002A2A1974FEFEFDFFB4B4B3FF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B
          6BFF6B6B6BFFD3D3CEFFFAFAF2FF2A2A19740000000000000000000000000000
          00002B2B1A72FEFEFCFFFCFCF9FFFBFBF8FF757575FFD8D8D5FFD6D6D2FF7575
          75FFF5F5EEFFF4F4ECFFF9F9EFFF2B2B1A720000000000000000000000000000
          00002D2D1B71FDFDFBFFDBDBD9FF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
          7FFF7F7F7FFFB8B8B2FFF7F7EAFF2D2D1B710000000000000000000000000000
          00002E2E1D6FFDFDFAFFFAFAF6FFF8F8F4FFC6C6C2FFADADAAFFF5F5EEFFACAC
          A9FFBDBDB8FFECECDFFFF4F4E5FF2E2E1D6F0000000000000000000000000000
          00002F2F1D6DFCFCF8FFF8F8F4FFF7F7F2FFE4E4DFFF969696FFF4F4ECFFD2D2
          CCFF919191FFE8E8D9FFF3F3E2FF2F2F1D6D0000000000000000000000000000
          000030301E6CFCFCF7FFF7F7F2FFF6F6F0FFF5F5EEFFF4F4ECFFF1F1E7FFECEC
          DFFFE8E8D9FFE6E6D5FFF2F2E1FF30301E6C0000000000000000000000000000
          00003131206BFBFBF6FFF6F6F0FFF5F5EEFFF4F4ECFFF1F1E7FFECECDFFFE8E8
          D9FFE6E6D5FFE5E5D4FFF2F2E1FF3131206B0000000000000000000000000000
          000031312069FAFAF4FFF5F5EEFFF4F4ECFFF1F1E7FFECECDFFFE8E8D9FFE6E6
          D5FFA4A493FFA4A493FFA4A493FF2323127C0000000000000000000000000000
          000032322168FAFAF3FFF4F4ECFFF1F1E7FFECECDFFFE8E8D9FFE6E6D5FFE5E5
          D4FFB6B6A5FFFFFFFFFF3232216812120C250000000000000000000000000000
          000032322267FCFCF5FFF9F9EFFFF6F6EAFFF4F4E5FFF3F3E2FFF2F2E1FFF2F2
          E1FFC2C2B1FF3232226712120C25000000000000000000000000000000000000
          000026261A4D3333226633332266333322663333226633332266333322663333
          22663333226612120C2400000000000000000000000000000000}
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        FieldName = 'codigoalmacen'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        DefaultWidth = 117
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'T'#237'tulo'
        Header.DisplayMode = dmTextAndImage
        Header.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000003300000033000000330000
          0033000000330000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000686B70FF6C6D6EFF6D6D6EFF6C6D
          6EFF686B70FF0000000000000000000000000000000000000000010100350000
          003300000033000000330000003300000033000000330000003367696EFF0000
          0033000000330000003300000033000000330000003300000033CA9636FFDFAC
          48FFDBA641FFDBA640FFDBA63FFFDFA83FFFE5AC3EFFEEB23FFF5B6068FFEEB2
          3FFFE5AC3EFFDFA83FFFDBA63FFFDBA641FFDCA846FFD4A13BFFA97117FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF535559FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBA745FFAA7114FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505152FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAA540FFAA7114FFFFFF
          FFFFD09530FFD19838FFD2993AFFD19838FFD1952FFFFFFFFFFF505152FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAA43FFFAA7215FFFFFF
          FFFFD29A3AFFD49F45FFD5A148FFD59F45FFD49B3AFFFFFFFFFF525354FFFFFF
          FFFFF9F9F8FFF6F6F5FFF6F6F5FFF6F7F7FFFFFFFFFFDAA53FFFAA7215FFFFFF
          FFFFD29733FFD49B3CFFD59D3EFFD49C3CFFD59934FFF8FBFFFF545556FFF6F5
          F4FFEDECEBFFEBEAE9FFEAEAE9FFE9E9EAFFFFFFFFFFDAA53FFFAB7316FFFFFF
          FFFFDFE3EDFFE0E5F0FFE1E6F1FFE1E5F0FFE2E6EEFFE9EAEEFF555759FFE9E8
          EAFFE0E0E2FFDEDEE0FFDEDEE0FFDDDDE0FFFFFFFFFFDBA741FFAD761BFFF6EF
          E5FFF3EADCFFF4EADBFFF4EADBFFF4EADBFFF5ECDBFFFDF1DEFF585C63FFFDF1
          DEFFF5EBDAFFF3E9D9FFF3E9D9FFF2E9D9FFF2EBE1FFDEAB49FFB07B24FFAD76
          1CFFAC7418FFAC7418FFAC7418FFAD7417FFAF7516FFB47815FF5D6572FFB478
          15FFAF7516FFAD7417FFAC7418FFAC7418FFAA731AFFCA9536FF000000000000
          0000000000000000000000000000000000000000003300000033636B77FF0000
          0033000000330000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000666C76FF696D74FF6A6D72FF696D
          74FF666C76FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 117
        FieldName = 'tituloalmacen'
      end
      object NxDBTextColumn4: TNxDBTextColumn
        DefaultWidth = 117
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Ubicaci'#243'n'
        Header.DisplayMode = dmTextAndImage
        Header.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000003300000033000000330000
          0033000000330000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000686B70FF6C6D6EFF6D6D6EFF6C6D
          6EFF686B70FF0000000000000000000000000000000000000000010100350000
          003300000033000000330000003300000033000000330000003367696EFF0000
          0033000000330000003300000033000000330000003300000033CA9636FFDFAC
          48FFDBA641FFDBA640FFDBA63FFFDFA83FFFE5AC3EFFEEB23FFF5B6068FFEEB2
          3FFFE5AC3EFFDFA83FFFDBA63FFFDBA641FFDCA846FFD4A13BFFA97117FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF535559FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBA745FFAA7114FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505152FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAA540FFAA7114FFFFFF
          FFFFD09530FFD19838FFD2993AFFD19838FFD1952FFFFFFFFFFF505152FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAA43FFFAA7215FFFFFF
          FFFFD29A3AFFD49F45FFD5A148FFD59F45FFD49B3AFFFFFFFFFF525354FFFFFF
          FFFFF9F9F8FFF6F6F5FFF6F6F5FFF6F7F7FFFFFFFFFFDAA53FFFAA7215FFFFFF
          FFFFD29733FFD49B3CFFD59D3EFFD49C3CFFD59934FFF8FBFFFF545556FFF6F5
          F4FFEDECEBFFEBEAE9FFEAEAE9FFE9E9EAFFFFFFFFFFDAA53FFFAB7316FFFFFF
          FFFFDFE3EDFFE0E5F0FFE1E6F1FFE1E5F0FFE2E6EEFFE9EAEEFF555759FFE9E8
          EAFFE0E0E2FFDEDEE0FFDEDEE0FFDDDDE0FFFFFFFFFFDBA741FFAD761BFFF6EF
          E5FFF3EADCFFF4EADBFFF4EADBFFF4EADBFFF5ECDBFFFDF1DEFF585C63FFFDF1
          DEFFF5EBDAFFF3E9D9FFF3E9D9FFF2E9D9FFF2EBE1FFDEAB49FFB07B24FFAD76
          1CFFAC7418FFAC7418FFAC7418FFAD7417FFAF7516FFB47815FF5D6572FFB478
          15FFAF7516FFAD7417FFAC7418FFAC7418FFAA731AFFCA9536FF000000000000
          0000000000000000000000000000000000000000003300000033636B77FF0000
          0033000000330000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000666C76FF696D74FF6A6D72FF696D
          74FF666C76FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
        Width = 117
        FieldName = 'ubicacion'
      end
      object NxDBMemoColumn1: TNxDBMemoColumn
        DefaultWidth = 132
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Descripci'#243'n'
        Header.DisplayMode = dmTextAndImage
        Header.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000000000006B0000
          00FF000000FF000000FF00000064000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFC2C2
          C2FFBBBBBBFFA0A0A0FF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFFEFE
          FEFFEAEAEAFFBBBBBBFF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFFEFE
          FEFFEAEAEAFFBBBBBBFF000000FF00000000000000EA000000DE000000D10000
          00B0000000CC00000059000000DE000000CC0000008600000000000000FFFEFE
          FEFFE6E6E6FFC1C1C1FF000000FF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000009B0000
          00FF000000FF000000FF00000092000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFC2C2
          C2FFBBBBBBFFA0A0A0FF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFFEFE
          FEFFEAEAEAFFBBBBBBFF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFFEFE
          FEFFEAEAEAFFBBBBBBFF000000FF00000000000000DE000000DE000000B00000
          00DE000000EA00000000000000CC000000CC0000008600000000000000FFFEFE
          FEFFE6E6E6FFC1C1C1FF000000FF000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000009B0000
          00FF000000FF000000FF00000092000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFC2C2
          C2FFBBBBBBFFA0A0A0FF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFFEFE
          FEFFEAEAEAFFBBBBBBFF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FFFEFE
          FEFFEAEAEAFFBBBBBBFF000000FF00000000000000CC00000086000000590000
          00CC000000CC000000B000000059000000B0000000CC00000000000000FFFEFE
          FEFFE6E6E6FFC1C1C1FF000000FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000530000
          00FF000000FF000000FF0000004C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 4
        SortType = stAlphabetic
        Width = 132
        FieldName = 'descripcion'
        MemoDisplayOptions = mdContent
      end
      object NxDBMemoColumn2: TNxDBMemoColumn
        DefaultWidth = 130
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Comentarios'
        Header.DisplayMode = dmTextAndImage
        Header.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000909090F6464649F0909090F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000787878BFA0A0A0FF787878BF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006464649FAEAEAEFFE3E3E3FFAEAEAEFF6464649F0000
          0000000000000000000000000000000000000000000000000000000000000000
          00003C3C3C5FA0A0A0FFBDBDBDFFEDEDEDFFEDEDEDFFEDEDEDFFBDBDBDFFA0A0
          A0FFA0A0A0FFA0A0A0FFA0A0A0FF6464649F0000000000000000000000003C3C
          3C5FBDBDBDFFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF8F8F8FFC0C0C0FF6464649F0000000000000000A0A0
          A0FFEBEBEBFFFBFBFBFFF6F6F6FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
          F4FFF4F4F4FFF4F4F4FFFAFAFAFFF9F9F9FFA0A0A0FF0000000000000000A0A0
          A0FFFFFFFFFFFAFAFAFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
          F8FFF8F8F8FFF8F8F8FFF8F8F8FFFFFFFFFFA0A0A0FF0000000000000000A0A0
          A0FFFFFFFFFFFCFCFCFFFCFCFCFFA0A0A0FFFCFCFCFFA0A0A0FFFCFCFCFFA0A0
          A0FFFCFCFCFFFCFCFCFFFCFCFCFFFFFFFFFFA0A0A0FF0000000000000000A0A0
          A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0FF0000000000000000A0A0
          A0FFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3FFA0A0A0FF00000000000000003C3C
          3C60C4C4C4FFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3F3F3FFC4C4C4FF3C3C3C6000000000000000000000
          00003C3C3C60A0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
          A0FFA0A0A0FFA0A0A0FFA0A0A0FF3C3C3C600000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
        Width = 130
        FieldName = 'comentarios'
        MemoDisplayOptions = mdContent
      end
      object NxDBTextColumn5: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Activo'
        Header.DisplayMode = dmTextAndImage
        Header.Glyph.Data = {
          76010000424D760100000000000036000000280000000A0000000A0000000100
          1800000000004001000000000000000000000000000000000000000000000000
          0000000105030206040000000000000000000000000000000000000000000000
          020504174A30174B310104030000000000000000000000000000000000010503
          164B302A925D2B965F15452C02060400000000000000000000000205031B4B32
          2C9E642AA5672AA567299B61154C3002050300000000000000001C46305AB486
          56C28C3AB8782AB36E28B26D27A46511402801030200000000003873546ECE9D
          6BD59F55BD884AB78045CA8638C67F2EB67115442B010302000007100C387B59
          56C18A1B4A3219462F48C48647D58D3ED38830B371113F270000000000050E09
          0F301F0103020101011C55383ECA843DE08E34D8851F7B4C0000000000000000
          00010100000000000002050319573837CF82238A5506150D0000000000000000
          00000000000000000000000002070414472C06170E0000000000}
        Header.Alignment = taCenter
        Header.HideArrow = False
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 6
        SortType = stAlphabetic
        Visible = False
        FieldName = 'activo'
      end
    end
    inherited PanelBarra: TPanel
      Top = 294
      Width = 840
      ExplicitTop = 294
      ExplicitWidth = 840
      inherited Panel1: TPanel
        Width = 707
        ExplicitWidth = 707
      end
      inherited Panel2: TPanel
        Left = 710
        ExplicitLeft = 710
      end
    end
    inherited PnlPro: TPanel
      Width = 840
      ExplicitWidth = 840
      inherited PBPaginacion: TAdvProgressBar
        Width = 742
        ExplicitWidth = 769
      end
      inherited PnlNum: TPanel
        Left = 743
        ExplicitLeft = 743
      end
    end
  end
  inherited cdDatos: TClientDataSet
    Left = 374
    Top = 32
  end
  object frxReporteAlmacenes: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Por defecto'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40938.823710208300000000
    ReportOptions.LastChange = 40962.732825682870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 504
    Datasets = <
      item
        DataSet = Frxalmacenes
        DataSetName = 'ReporteAlmacenes'
      end
      item
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageFooter1: TfrxPageFooter
        Height = 37.795300000000000000
        Top = 393.071120000000000000
        Width = 740.409927000000000000
        object Memo12: TfrxMemoView
          Left = 514.016080000000000000
          Top = 7.559059999999988000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'P'#225'gina: [Page#] de [TotalPages#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 740.409927000000000000
        DataSet = Frxalmacenes
        DataSetName = 'ReporteAlmacenes'
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Left = 11.881880000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = Frxalmacenes
          DataSetName = 'ReporteAlmacenes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ReporteAlmacenes."codigoalmacen"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 230.094620000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = Frxalmacenes
          DataSetName = 'ReporteAlmacenes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ReporteAlmacenes."tituloalmacen"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 382.055350000000000000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = Frxalmacenes
          DataSetName = 'ReporteAlmacenes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ReporteAlmacenes."descripcion"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 71.811070000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = Frxalmacenes
          DataSetName = 'ReporteAlmacenes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[ReporteAlmacenes."ubicacion"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 287.244280000000000000
        Width = 740.409927000000000000
        Condition = 'ReporteAlmacenes."idalmacen"'
      end
      object Header1: TfrxHeader
        Height = 34.015770000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 7.338590000000010000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 231.330860000000000000
          Top = 7.338590000000010000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'T'#237'tulo:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 382.850650000000000000
          Top = 7.338590000000010000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Descripci'#243'n:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 71.811070000000000000
          Top = 7.338590000000010000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Nombre:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 31.015769999999970000
          Width = 714.331170000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 147.401670000000000000
          Top = 45.354360000000000000
          Width = 585.827150000000000000
          Height = 34.015770000000010000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Cat'#225'logo de almac'#233'n')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 147.401670000000000000
          Top = 7.559059999999999000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Reporte General')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 147.401670000000000000
          Top = 78.708720000000000000
          Width = 585.827150000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[FormatDateTime('#39'dd,mmm,yyyy'#39',Date)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 147.401670000000000000
          Top = 100.724490000000000000
          Width = 585.827150000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Ciudad del Carmen, Campeche')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 7.559059999999999000
          Width = 128.504020000000000000
          Height = 117.165430000000000000
          ShowHint = False
          DataField = 'imagen1'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          KeepAspectRatio = False
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
    end
  end
  object Frxalmacenes: TfrxDBDataset
    UserName = 'ReporteAlmacenes'
    CloseDataSource = False
    DataSource = dsDatos
    BCDToCurrency = False
    Left = 480
  end
end
