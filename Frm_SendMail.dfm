object FrmSendMail: TFrmSendMail
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSizeToolWin
  Caption = 'FrmSendMail'
  ClientHeight = 496
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GBx1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    ParentFont = False
    TabOrder = 0
    Height = 169
    Width = 719
    object GBx3: TcxGroupBox
      Left = 2
      Top = 107
      Align = alBottom
      Caption = 'Adjuntos'
      ParentFont = False
      TabOrder = 0
      Height = 60
      Width = 715
      object btnAdjunto: TcxButton
        Left = 666
        Top = 15
        Width = 46
        Height = 35
        Align = alRight
        Caption = 'Adjuntar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'SimSun'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnAdjuntoClick
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000001717
          17602B2B2BB83A3A3AF52B2B2BB80B0B0B300000000000000000000000000000
          0000000000000000000000000000000000000000000000000000171717602E2E
          2EC21616165F0404040F1616165F2E2E2EC20B0B0B2F00000000000000000000
          00000000000000000000000000000000000000000000000000002B2B2BB81616
          165F0000000000000000000000000B0B0B2F373737EA00000000000000000000
          00000000000000000000000000000000000000000000000000003A3A3AF50404
          040F000000000000000000000000000000001616165C3C3C3CFF1616165C0000
          00000000000000000000000000000000000000000000000000002B2B2BB81616
          165F00000000000000000000000000000000000000001616165C3C3C3CFF1616
          165C0000000000000000000000000000000000000000000000000B0B0B302E2E
          2EC20B0B0B2F0000000000000000090909263C3C3CFF3C3C3CFF1616165C3C3C
          3CFF1616165C0000000000000000000000000000000000000000000000000B0B
          0B2F373737EA1616165C00000000373737EA1F1F1F851616165C3C3C3CFF1616
          165C3C3C3CFF1616165C00000000000000000000000000000000000000000000
          00001616165C3C3C3CFF1616165C3C3C3CFF1616165C000000001616165C3C3C
          3CFF1616165C3C3C3CFF1616165C000000000000000000000000000000000000
          0000000000001616165C3C3C3CFF1616165C3C3C3CFF1616165C000000001616
          165C3C3C3CFF1616165C3C3C3CFF1616165C0000000000000000000000000000
          000000000000000000001616165C3C3C3CFF1616165C3C3C3CFF1616165C0000
          00001616165C1616165C1616165C3C3C3CFF1616165C00000000000000000000
          00000000000000000000000000001616165C3C3C3CFF1616165C3C3C3CFF1616
          165C0000000000000000000000001616165C3C3C3CFF1616165C000000000000
          0000000000000000000000000000000000001616165C3C3C3CFF1616165C3C3C
          3CFF1616165C0000000000000000000000001F1F1F853C3C3CFF000000000000
          0000000000000000000000000000000000000000000000000000000000001616
          165C3C3C3CFF1616165C00000000000000001616165C373737EA000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001616165C3C3C3CFF1F1F1F851616165C3C3C3CFF09090926000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001616165C3C3C3CFF373737EA0909092600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        PaintStyle = bpsGlyph
      end
      object NxGrdAdjuntos: TNextGrid
        Left = 3
        Top = 15
        Width = 663
        Height = 35
        Align = alClient
        BorderStyle = bsNone
        Options = []
        TabOrder = 1
        TabStop = True
        object NxHyperlinkColumn1: TNxHyperlinkColumn
          DefaultWidth = 190
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11757056
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
          Width = 190
        end
        object NxButtonColumn1: TNxHyperlinkColumn
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          InputCaption = '1'
          InputValue = '1'
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 20
          OnClick = NxButtonColumn1Click
        end
        object NxHyperlinkColumn2: TNxHyperlinkColumn
          DefaultWidth = 190
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11757056
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 190
        end
        object NxButtonColumn2: TNxHyperlinkColumn
          Alignment = taCenter
          DefaultValue = '1'
          DefaultWidth = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
          ParentFont = False
          Position = 3
          SortType = stAlphabetic
          Width = 20
          OnClick = NxButtonColumn1Click
        end
        object NxHyperlinkColumn3: TNxHyperlinkColumn
          DefaultWidth = 190
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 11757056
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 4
          SortType = stAlphabetic
          Width = 190
        end
        object NxButtonColumn3: TNxHyperlinkColumn
          Alignment = taCenter
          DefaultWidth = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
          ParentFont = False
          Position = 5
          SortType = stAlphabetic
          Width = 20
          OnClick = NxButtonColumn1Click
        end
      end
    end
    object GBx4: TcxGroupBox
      Left = 2
      Top = 2
      Align = alClient
      PanelStyle.Active = True
      ParentFont = False
      TabOrder = 1
      Height = 105
      Width = 715
      object dxLayoutControl1: TdxLayoutControl
        Left = 2
        Top = 2
        Width = 711
        Height = 101
        Align = alClient
        TabOrder = 0
        object TxtEdtReceptor: TcxTextEdit
          Left = 53
          Top = 10
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 121
        end
        object TxtEdtCc: TcxTextEdit
          Left = 53
          Top = 37
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object TxtEdtAsunto: TcxTextEdit
          Left = 53
          Top = 64
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        object btnSend: TcxButton
          Left = 626
          Top = 10
          Width = 75
          Height = 25
          Caption = 'Enviar'
          TabOrder = 3
          OnClick = btnSendClick
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000000000000000000000000
            0001000000030000000500000006000000070000000700000007000000070000
            0007000000070000000700000007000000070000000700000007000000070000
            0007000000080000000800000008000000080000000800000008000000080000
            0008000000080000000700000006000000030000000100000001000000010000
            00040000000C00000014000000190000001A0000001B0000001B0000001B0000
            001B0000001C0000001C0000001C0000001C0000001C0000001C0000001D0000
            001D0000001D0000001D0000001D0000001E0000001E0000001E0000001E0000
            001E0000001E0000001D000000180000000E0000000500000001000000020000
            000B302638794B4094FA4E4396FF957078FFA67663FF965B3EFF965A3EFFA675
            61FF936E76FF4D4093FF4C3F93FF936D75FFA47361FF94583CFF94583BFFA473
            60FF926B73FF4A3D91FF493C91FF916A73FFA3715FFF935639FF935539FFA271
            5EFF906971FF473A8EFF43378CFA2E22347D0000000E00000003000000040000
            00129D7361ECCABFD3FF6764CDFF6863CDFFCCC1D8FFE3D1C9FFC6A08CFFC7A0
            8BFFE4D4CCFFCEC7DDFF6864CFFF6864CEFFD0C8DFFFE7D6CFFFC69E8AFFC59E
            8AFFE6D5CEFFCFC7DEFF6864CFFF6764CFFFCEC6DCFFE4D2CAFFC39B85FFC29A
            85FFE1CEC6FFCAC0D6FF645FC9FF986C59ED0000001600000005000000050000
            00159B6042FFECE1DBFFF0E7E3FFEAE0DBFFECE1DCFFEDE3DEFFEEE4E0FFEFE5
            E1FFF0E6E3FFF0E6E4FFF0E8E4FFF2E8E6FFF2E9E6FFF2E9E6FFF2E9E6FFF1E9
            E6FFF1E9E6FFF1E8E5FFF1E8E5FFF0E7E4FFEFE6E2FFEFE5E1FFEEE4E0FFEDE2
            DEFFEBE0DCFFF0E9E4FFE8DBD4FF94593CFF0000001A00000006000000050000
            00159C6244FFC7A18DFFF2EAE7FFEFE7E3FFEDE3DEFFEDE4DFFFEEE5E1FFF0E6
            E3FFF0E7E4FFF1E8E5FFF2E9E6FFF2EAE6FFF3EAE7FFF3ECE7FFF3ECE8FFF3EB
            E8FFF2EAE7FFF2EAE7FFF2EAE6FFF1E8E5FFF0E7E4FFEFE6E3FFEEE5E1FFEEE3
            E0FFF0E8E4FFF2EBE8FFBC9079FF965B3EFF0000001A00000007000000050000
            0014AA7B68FFD0AF9EFFCCADA1FFF6F0EEFFF0E8E4FFEEE5E1FFEFE6E3FFF0E7
            E4FFF1E9E5FFF1EAE6FFF2EBE7FFF3ECE8FFF4EDE9FFF5EEEBFFF5EEEBFFF4ED
            E9FFF4EDE9FFF3ECE8FFF3EBE8FFF2E9E6FFF1E8E5FFF1E7E4FFEFE6E3FFF2E9
            E6FFF6F1EFFFCFB0A4FFC49C88FFA57461FF0000001900000006000000050000
            00139B7880FFEADCD5FFE0D0C8FFCFB2A6FFF7F3F0FFF1E8E5FFF0E6E4FFF1E9
            E6FFF3ECE9FFF6F0EDFFF6F2EFFFF8F3F1FFF8F4F1FFF8F4F2FFF8F4F2FFF7F4
            F2FFF8F3F1FFF7F1EFFFF6F0EDFFF4EDE9FFF2EAE6FFF1E9E6FFF1E9E6FFF7F3
            F1FFD3B6ADFFE0CFC9FFE5D4CEFF967079FF0000001800000006000000040000
            00125E57A6FFD7D0E4FFE4D4CFFFE1D1CBFFD2B4AAFFF9F5F4FFF5EFEDFFF7F2
            F0FFF8F3F2FFF8F4F1FFF8F4F2FFF9F5F3FFF9F6F3FFF9F5F3FFF9F6F3FFF9F5
            F2FFF8F4F3FFF8F4F2FFF7F3F1FFF7F2EFFFF6F1EEFFF5EEECFFF9F5F4FFD6BC
            B3FFE1D0CBFFE4D5CFFFD0C8DFFF554C9DFF0000001700000006000000040000
            0011615AA9FF807FDAFFE6D7D2FFE5D8D2FFE2D1CAFFDAC1B8FFFCFAF9FFF9F4
            F2FFF8F4F2FFF9F5F3FFF9F5F4FFFAF6F4FFF9F6F4FFEEE4E0FFE5D7D1FFEEE4
            E0FFF9F6F4FFF9F5F3FFF8F4F2FFF8F3F1FFF7F2F0FFFBF9F7FFDFC9C1FFE2D0
            CAFFE6D8D2FFE6D8D2FF6C68D0FF58509FFF0000001600000006000000040000
            0010A28189FF8482DBFFE7DAD5FFE8DAD5FFE8DAD5FFE3D2CBFFDFC7BFFFFCFA
            FAFFF9F6F4FFF9F6F4FFFAF6F5FFF8F4F3FFE3D5D0FFD2C1BBFFD3C1BCFFDCCC
            C5FFEADFDAFFF9F5F4FFF9F5F3FFF9F4F2FFFCFAF9FFE4CFCAFFE3D1CCFFE7D9
            D5FFE7DAD5FFE7D9D5FF6C69D1FF9A767FFF0000001500000005000000040000
            000FB58875FFDBD6E9FFE9DCD8FFE9DCD8FFE9DCD8FFE9DCD8FFE3D1CCFFE4D1
            CAFFFCFBFAFFFAF7F5FFF5EFEEFFD9C7C2FFBCA49CFF9A7063FF906659FFBCA3
            9DFFD4C1BAFFE4D6D1FFF9F5F3FFFCFAF9FFEBDCD5FFE3D2CCFFE9DCD8FFE9DC
            D8FFE9DCD8FFE9DCD8FFD3CCE3FFAE7F6BFF0000001400000005000000030000
            000EAD7857FFF0E5E1FFEBDFDAFFEBDFDAFFEBE0DAFFEBDFDAFFEBE0DAFFE5D3
            CCFFEEE3DFFFEFE8E5FFD0BBB5FFAB8981FFA87F73FFF0E9E7FFEEE7E4FF9D74
            68FFA6857DFFCEB8B2FFE2D3CFFFEDE0DBFFE5D3CCFFEBE0DAFFEBDFDAFFEBDF
            DAFFEBE0DBFFEBDFDAFFEADCD5FFA66F4FFF0000001300000005000000030000
            000DB07B59FFDEC5B6FFEBE1DCFFECE1DDFFEBE2DCFFECE1DCFFEBE1DCFFEADF
            DAFFD6BCB4FFAD8173FF9D6F61FFD0B9B1FFFBF9F8FFF9F6F4FFF9F6F4FFFBF9
            F8FFCBB4ADFF936658FFAC8174FFC6A79CFFE9DBD6FFECE2DCFFEBE1DCFFECE1
            DCFFECE1DDFFECE2DDFFCCA996FFA87252FF0000001200000004000000030000
            000CBB917DFFDFC8B9FFEEE4DFFFEEE4DFFFEEE3E0FFECE2DFFFEBDFDBFFD3BE
            B7FFAC857AFFB28C7FFFF2EBE9FFFCFAF9FFF8F4F1FFF7F3F0FFF7F2F0FFF8F4
            F1FFFCFAF9FFF0E9E7FFA78074FFA98277FFC6A9A1FFE8DAD6FFEDE2DFFFEEE3
            E0FFEDE3DFFFEEE4E0FFCDAB98FFB38674FF0000001000000004000000030000
            000BAD8F97FFF2EBE7FFEFE5E1FFF0E5E1FFEEE3E0FFEADFD9FFC9ACA3FFAD83
            76FFD7C3BBFFFCFAF9FFF9F6F4FFF7F3F1FFF7F3F1FFF8F4F1FFF8F3F1FFF7F3
            F1FFF7F3F1FFF9F6F4FFFBFAF9FFD2BDB6FFA57B6EFFBE9F92FFE5D7D2FFEEE4
            DFFFF0E6E2FFF0E5E2FFECE1DBFFA4858CFF0000001000000004000000020000
            000A7372BEFFE2E0F0FFF0E8E3FFEEE5E1FFE8DDD7FFBF9D92FFBF9D93FFF4EE
            EDFFFCFBFAFFF8F5F3FFF8F5F2FFF8F5F2FFF8F5F2FFF8F5F3FFF8F5F2FFF8F5
            F3FFF7F5F2FFF8F5F2FFF9F6F3FFFCFBFAFFF3EDEBFFB59388FFB69285FFE1D2
            CCFFEEE5E1FFF0E8E4FFD6D3EAFF6B67B4FF0000000E00000004000000020000
            00097574C0FF989AE4FFEFE6E1FFE2D2CBFFBE988CFFDFCDC7FFFCFBFAFFFAF8
            F6FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F4FFF9F6F3FFF9F6F4FFF9F6F5FFF9F6
            F4FFF9F6F4FFF9F6F3FFF9F6F4FFF9F6F3FFFBF9F6FFFCFBFAFFDCC8C2FFB48D
            80FFDBC9C2FFEFE6E1FF7273D7FF6D6AB7FF0000000D00000003000000020000
            0008B3979FFFB2B2E8FFD8C2B9FFCDAEA4FFF7F2F0FFFCFBFBFFF9F8F5FFF9F6
            F4FFF9F7F5FFF9F7F5FFF9F7F6FFF9F7F6FFFAF7F6FFFBF9F9FFFBF9F9FFFAF8
            F7FFFAF7F7FFF9F7F6FFF9F7F5FFF9F7F5FFF9F7F5FFF9F8F5FFFDFCFBFFF5F1
            EFFFC4A499FFD2B7AFFF9190DBFFAB8D95FF0000000C00000003000000020000
            0007C49C89FFD4BCB7FFE8D9D4FFFDFCFBFFFBF9F8FFFAF8F5FFFAF8F5FFFAF8
            F6FFFBFAF9FFFDFCFCFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFFFDFCFCFFFCFAFAFFFAF8F7FFFAF8F6FFFAF8F5FFFBFA
            F8FFFDFBFBFFE4D4CEFFC7A9A4FFBC9481FF0000000B00000003000000010000
            0006B48B7AFFFCFAFAFFFDFCFBFFFAF9F7FFFAF8F7FFFBFAF9FFFDFDFCFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFBFAF9FFFAF9
            F7FFFAF9F8FFFDFCFBFFF9F6F5FFB28676FF0000000A00000002000000010000
            0004BC9F94E8F3EBE8FFFDFDFCFFFDFDFCFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
            FDFFFCFBFBFFFCFAF9FFF0E6E1FFB08F83E90000000700000002000000000000
            0002362F2D43AB968ECBDABFB4FFDABFB4FFDABEB3FFDABEB3FFD9BDB3FFD9BD
            B3FFD9BDB3FFD9BDB2FFD8BCB2FFD8BCB2FFD8BCB1FFD8BBB0FFD7BBB0FFD7BB
            B0FFD7BAAFFFD7BAAFFFD7B9AEFFD6B9AEFFD6B9AEFFD6B9ADFFD5B8ADFFD5B8
            ADFFD5B7ACFFD4B7ACFFA79086CC342D2A460000000400000001000000000000
            0001000000020000000300000004000000040000000500000005000000050000
            0005000000050000000500000005000000050000000600000006000000060000
            0006000000060000000600000006000000070000000700000007000000070000
            0007000000070000000700000005000000030000000100000000000000000000
            0000000000000000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000001000000020000
            0002000000020000000100000001000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OptionsImage.Layout = blGlyphTop
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl1Item1: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          AlignHorz = ahClient
          CaptionOptions.Text = 'Para:'
          Control = TxtEdtReceptor
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl1Item2: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          AlignHorz = ahClient
          CaptionOptions.Text = 'Cc:'
          Control = TxtEdtCc
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          Parent = dxLayoutControl1Group1
          AlignHorz = ahClient
          CaptionOptions.Text = 'Asunto:'
          Control = TxtEdtAsunto
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl1Item4: TdxLayoutItem
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnSend
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          Index = 0
          AutoCreated = True
        end
      end
    end
  end
  object GBx2: TcxGroupBox
    Left = 0
    Top = 177
    Align = alClient
    ParentFont = False
    TabOrder = 1
    Height = 319
    Width = 719
    object RchEdtMensaje: TcxRichEdit
      Left = 3
      Top = 9
      Align = alClient
      ParentFont = False
      Properties.PlainText = True
      TabOrder = 0
      Height = 307
      Width = 713
    end
  end
  object Spl1: TcxSplitter
    Left = 0
    Top = 169
    Width = 719
    Height = 8
    AlignSplitter = salTop
  end
  object QrConfiguracion: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select *,AES_DECRYPT(sPassword,:Key) as Pass from configuracion_' +
        'correo where sIdUsuario=:Usuario')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Key'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
    Left = 432
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Key'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object idmsgMail: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 344
    Top = 248
  end
  object idsmtpMail: TIdSMTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    SASLMechanisms = <>
    Left = 256
    Top = 248
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':25'
    MaxLineAction = maException
    Port = 25
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 400
    Top = 208
  end
  object tmrAdjuntos: TTimer
    OnTimer = tmrAdjuntosTimer
    Left = 352
    Top = 248
  end
  object dlgProgressAdjuntos: TJvProgressDialog
    Caption = 'Adjuntando Archivos'
    ShowCancel = False
    Smooth = True
    Transparent = True
    OnProgress = dlgProgressAdjuntosProgress
    Left = 296
    Top = 208
  end
  object dlgOpenFile: TOpenDialog
    Filter = 'Todos los Archivo|*.*'
    Title = 'Abrir'
    Left = 360
    Top = 256
  end
  object ImgLstAdjuntos: TcxImageList
    DrawingStyle = dsTransparent
    FormatVersion = 1
    DesignInfo = 14680560
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000F0F0F41000000000000000000000000000000000000
          0000000000000F0F0F4100000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF1E1E1E810000000000000000000000000000
          00001E1E1E813C3C3CFF1E1E1E81000000000000000000000000000000000000
          00000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF1E1E1E8100000000000000001E1E
          1E813C3C3CFF3C3C3CFF3C3C3CFF0F0F0F400000000000000000000000000000
          0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E811E1E1E813C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF1E1E1E810000000000000000000000000000000000000000000000000000
          000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF1E1E1E8100000000000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E1E1E1E7E3C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
          00000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000001E1E
          1E7E3C3C3CFF3C3C3CFF3C3C3CFF0F0F0F400000000000000000000000000000
          0000000000001E1E1E7E3C3C3CFF1E1E1E7E0000000000000000000000000000
          00001E1E1E7E3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          000000000000000000000F0F0F3E000000000000000000000000000000000000
          0000000000000F0F0F3E00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DBE3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF2D2D2DBE3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000101010463939
          39F33C3C3CFF3C3C3CFF1E1E1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF1E1E
          1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF393939F3101010462121218D3C3C
          3CFF3C3C3CFF2D2D2DBF0000000000000000000000001E1E1E7E1E1E1E7E0000
          000000000000000000002D2D2DBF3C3C3CFF3C3C3CFF2121218D2F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
          0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC7383838F03C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
          00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F0383838F03C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
          00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F02F2F2FC73C3C
          3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
          0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC72121218D3C3C
          3CFF3C3C3CFF2D2D2DBF0000000000000000000000001E1E1E811E1E1E810000
          000000000000000000002D2D2DBF3C3C3CFF3C3C3CFF2121218D101010463939
          39F33C3C3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF1E1E
          1E81000000001E1E1E813C3C3CFF3C3C3CFF393939F310101046000000002121
          218C3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC13C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF2D2D2DC13C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000000000000808
          0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000000000
          0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000000
          00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
          2FC72121218D1010104600000000000000000000000000000000}
      end>
  end
end
