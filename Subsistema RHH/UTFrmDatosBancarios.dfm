object FrmDatosBancarios: TFrmDatosBancarios
  Left = 0
  Top = 0
  Caption = 'Datos Bancarios'
  ClientHeight = 388
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 99
    Width = 422
    Height = 289
    Align = alCustom
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object OblDocumento: TImage
      Left = 341
      Top = 26
      Width = 17
      Height = 16
      Cursor = crHandPoint
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
        001008060000001FF3FF610000001974455874536F6674776172650041646F62
        6520496D616765526561647971C9653C000001764944415478DA63FCFFFF3F03
        258071701970318D91819191018C9998186602858C81F8ECBF7F0CE9206520AC
        3FEB3F6E032EA432A60135A701856681689D3407E32BB30E9C85F141B4C1ECFF
        B3701A703A81F18C69AE8BF19595276E7D7FF5E5B376B285F1D5B927CE728AF1
        F0AA0719A95D9871E8ACE982FF26380D381AC598C6C2CD96AB1EA4AFF3F4E483
        E752E6F292CF4E3E7C2E61222B7967E3952B7FBEFE9A6CBD0C8F0BF6043282A8
        3410D68BD23306C981F0951557CE02C5401A67B9ACC713069B3D18D3B804D873
        B5FCE4751E9E7EF95CCE5854F2D1D9D7CFA50D84246F6E7D72E5FBA7DF937D77
        E071C16A07C633AE45AAC627963EB8F5F9E5EFCF76A9E2C68766BF3CCB2BCECA
        6BE027A87678F6ABB3A107F084C16C43C6346094A5DDFEC6304B958B212DB49A
        DB7875EBD7B3303E88EEB98DC7058C8C8CAC404A1C88B9D3C519EA15D919D4EE
        FF64B835F325433D50EC0F10BF00AAFF8ECF0066202500C4EC58121DC8800F40
        F5BF701A400E187803004C4CCFE175D027640000000049454E44AE426082}
    end
    object JvLabel9: TJvLabel
      Left = 20
      Top = 25
      Width = 35
      Height = 13
      Caption = 'Banco:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel1: TJvLabel
      Left = 20
      Top = 53
      Width = 46
      Height = 13
      Caption = 'Sucursal:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 20
      Top = 80
      Width = 61
      Height = 13
      Caption = 'No. Cuenta:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel3: TJvLabel
      Left = 20
      Top = 107
      Width = 93
      Height = 13
      Caption = 'Clv. Interbancaria:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel4: TJvLabel
      Left = 54
      Top = 240
      Width = 39
      Height = 13
      Caption = 'Estado:'
      Transparent = True
      Visible = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel5: TJvLabel
      Left = 16
      Top = 134
      Width = 46
      Height = 13
      Caption = 'Aplicado:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'Tahoma'
      HotTrackFont.Style = []
    end
    object JvLabel6: TJvLabel
      Left = 16
      Top = 161
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
    object EdtBancos: TAdvEditBtn
      Left = 116
      Top = 26
      Width = 219
      Height = 21
      Hint = 'Seleccione un banco.'
      Flat = False
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      Enabled = True
      ParentShowHint = False
      ReadOnly = False
      ShowHint = True
      TabOrder = 0
      Visible = True
      OnKeyPress = EdtBancosKeyPress
      Version = '1.3.2.8'
      ButtonStyle = bsButton
      ButtonWidth = 16
      Etched = False
      OnClickBtn = EdtBancosClickBtn
    end
    object EdtSucursal: TDBEdit
      Left = 116
      Top = 53
      Width = 219
      Height = 21
      Hint = 'Ingrese una sucursal.'
      DataField = 'sucursal'
      DataSource = DsDatos
      MaxLength = 50
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object EdtNumeroCuenta: TDBEdit
      Left = 116
      Top = 80
      Width = 219
      Height = 21
      Hint = 'Ingrese un n'#250'mero de cuenta.'
      DataField = 'numerodecuenta'
      DataSource = DsDatos
      MaxLength = 16
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnKeyPress = EdtNumeroCuentaKeyPress
    end
    object EdtClaveInterbancaria: TDBEdit
      Left = 116
      Top = 107
      Width = 219
      Height = 21
      Hint = 'Ingrese una clave interbancaria.'
      DataField = 'claveinterbancaria'
      DataSource = DsDatos
      MaxLength = 18
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnKeyPress = EdtClaveInterbancariaKeyPress
    end
    object CbEstado: TDBComboBox
      Left = 116
      Top = 240
      Width = 145
      Height = 21
      DataField = 'estado'
      DataSource = DsDatos
      Items.Strings = (
        'Activada'
        'Inactiva')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Visible = False
    end
    object DateFecha: TDBDateEdit
      Left = 116
      Top = 134
      Width = 219
      Height = 21
      Hint = 'Seleccione un afecha.'
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'fechadeaplicacion'
      DataSource = DsDatos
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object MObservaciones: TDBMemo
      Left = 116
      Top = 161
      Width = 219
      Height = 48
      Hint = 'Ingrese observaciones.'
      DataField = 'observaciones'
      DataSource = DsDatos
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
  end
  object tdxRibbonDatosBancarios1: TdxRibbon
    Left = 0
    Top = 0
    Width = 419
    Height = 101
    BarManager = dxBarManagerDocumentos1
    ColorSchemeName = 'Office2010Blue'
    ShowTabHeaders = False
    Contexts = <>
    TabOrder = 1
    TabStop = False
    ExplicitWidth = 424
    object tdxRibbonDatosBancarios1Tab1: TdxRibbonTab
      Active = True
      Caption = 'tdxRibbonDatosBancarios1Tab1'
      Groups = <
        item
          ToolbarName = 'dxToolBardxbrmngr1Bar1'
        end
        item
          Caption = 'Opciones'
          ToolbarName = 'dxToolBarManagerDocumentos1Bar'
        end>
      Index = 0
    end
  end
  object DataSource1: TDataSource
    Left = 32
    Top = 344
  end
  object DsDatos: TDataSource
    Left = 376
    Top = 160
  end
  object dxBarManagerDocumentos1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 352
    Top = 48
    DockControlHeights = (
      0
      0
      0
      0)
    object dxToolBarManagerDocumentos1Bar: TdxBar
      Caption = 'Opciones'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 458
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn1'
        end
        item
          Visible = True
          ItemName = 'btn2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn1: TdxBarLargeButton
      Caption = '&Guardar'
      Category = 0
      Hint = 'Guardar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0001000000010000000300000004000000050000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000060000000600000006000000060000
        0005000000030000000100000001000000000000000000000000000000000000
        0001000000050000000B00000011000000150000001500000016000000160000
        0016000000160000001600000017000000170000001700000017000000170000
        0018000000180000001800000018000000180000001900000019000000180000
        00150000000E0000000600000001000000000000000000000000000000000000
        00020000000B2D1F1A8B583C34FC593D34FF583D34FF5C4138FFC89263FFC084
        54FFBD8151FFBB7D4DFFB97A4BFFB77748FFB57444FFB37141FFB06D3DFFAF6B
        3AFFAC6837FFAB6535FFA96333FFA76030FFA76030FF523730FF51362EFF5035
        2EFE261915890000000E00000003000000010000000000000000000000000000
        0004000000105C4037FC876A60FF785B4FFF785A4FFF6D5246FFE8C594FFE4BC
        85FFE4BA83FFE3B981FFE2B77EFFE2B57CFFE1B479FFE0B277FFE0B075FFDFAF
        72FFDEAC70FFDEAC6FFFDDAA6CFFDCA96BFFDCA96BFF5E423AFF6C4F44FF6F50
        48FF50352EFB0000001400000005000000010000000000000000000000000000
        00050000001260443BFF8B6F64FF7B5E52FF7B5D51FF70554AFFDFBE90FFD9B3
        7FFFD8B17DFFD7B17BFFD7AF79FFD6AD76FFD6AC75FFD6AA72FFD5A870FFD4A6
        6EFFD4A56BFFD3A369FFD3A267FFD3A166FFDEAA6BFF61443CFF6E4F45FF7253
        49FF52372FFF0000001700000006000000010000000000000000000000000000
        00050000001263473DFF8F7468FF7E6154FF7D6053FF74594EFFFAF6F2FFF8F3
        EEFFF8F2EDFFF7F2ECFFF7F0ECFFF6F0EBFFF6EFEBFFF6EFEAFFF5EEE9FFF5ED
        E8FFF5EDE7FFF4ECE7FFF4EBE6FFF4EBE5FFF3EAE5FF63473EFF6E5046FF7155
        4BFF533831FF0000001700000006000000010000000000000000000000000000
        000400000012664A40FF92786CFF816357FF806356FF785C50FFF9F6F3FFF9F3
        F0FFF8F2EFFFF7F2EDFFF7F1EDFFF6F1ECFFF6F0EBFFF6F0EBFFF6EFE9FFF5EE
        E9FFF5EEE8FFF4EDE7FFF4EDE6FFF4ECE6FFF4EBE6FF674A41FF6F5147FF7456
        4DFF543932FF0000001700000006000000010000000000000000000000000000
        0004000000116A4E42FF987C71FF84675AFF836559FF7C6053FFFAF7F4FFF9F4
        F0FFF9F3EFFFF8F3EFFFF8F2EEFFF7F2EDFFF7F1EDFFF6F0EBFFF6EFEAFFF5EF
        EAFFF5EEE9FFF5EDE8FFF5ECE8FFF4EDE6FFF4EBE6FF694D43FF705248FF7558
        4EFF553A33FF0000001600000006000000010000000000000000000000000000
        0004000000106E5146FF9B8274FF866B5DFF86695CFF7F6457FFFBF8F5FFF9F5
        F1FFF9F4F1FFF8F3F0FFF8F3EEFFF7F3EEFFF7F1EDFFF7F1ECFFF6F0ECFFF6EF
        EAFFF6EFE9FFF5EEE9FFF5EEE8FFF4EDE8FFF4ECE6FF6C5046FF71534AFF765A
        50FF573C34FF0000001500000005000000010000000000000000000000000000
        000400000010715549FF9F8679FF8A6D5FFF896D5EFF836759FFFBF8F6FFFAF5
        F2FFF9F5F1FFF8F4F0FFF8F3F0FFF8F3EFFFF8F2EEFFF7F1EDFFF7F0ECFFF6F0
        ECFFF6F0EBFFF5EFEAFFF6EEE9FFF4EEE8FFF5EDE7FF6F5349FF72554BFF795D
        52FF583D35FF0000001500000005000000010000000000000000000000000000
        00040000000F75594CFFA38B7DFF8C7162FF8C7061FF866B5CFFFBFAF7FFFBF8
        F6FFFBF8F6FFFBF8F5FFFAF7F4FFFBF7F3FFF9F6F3FFF9F5F2FFF9F5F1FFF9F4
        F1FFF8F4F0FFF7F2EFFFF7F2EDFFF7F1EDFFF7F0EBFF72564BFF73564BFF7B5F
        54FF593E36FF0000001400000005000000010000000000000000000000000000
        00040000000F795C4EFFA88F82FF907465FF8F7364FF8A6F60FF886E5EFF886C
        5EFF866B5DFF856A5CFF85695BFF83685AFF7F6557FF795F53FF785E52FF785D
        51FF775C50FF765B50FF765A4FFF75594EFF755A4EFF74584EFF75574DFF7D61
        56FF5A4038FF0000001300000005000000000000000000000000000000000000
        00030000000E7C5F52FFAB9386FF937768FF927767FF917566FF907565FF8F73
        65FF8E7263FF8D7163FF8C7161FF8B7061FF8A6E5FFF7A5F55FF785C53FF785C
        51FF785B52FF785B51FF775B51FF765A50FF765A4FFF76594FFF75594EFF7F63
        58FF5B423AFF0000001300000005000000000000000000000000000000000000
        00030000000D806356FFB0988AFF967B6BFF957A6AFF947869FF947868FF9277
        67FF927566FF917565FF907365FF8F7363FF8D7263FF83695BFF755A50FF7057
        4DFF70564DFF6F564CFF6F554CFF6E554CFF6E544BFF6E544AFF6E5449FF775E
        55FF543D36FF00000026000000190000000D0000000300000000000000000000
        00030000000D846758FFB39C8DFF997E6DFF987D6DFF977C6CFF977C6BFF957A
        6BFF957968FF947869FF937767FF927666FF917465FF896E60FF422F6FFF3221
        7FFF33207FFF32207FFF321F7EFF311F7EFF311F7EFF311E7EFF311D7DFF311D
        7CFF301D7CFF231192FF231191FF190C68C50000000C00000000000000000000
        00030000000C886C5CFFB7A193FF9C8170FFA38979FFA58B7BFFA48A7BFFA289
        79FFA08779FFA08777FF9F8476FF9D8374FF9C8272FF93786AFF362483FF384A
        D3FF2637CEFF3042D2FF4254D9FF3646D4FF2437CCFF2434CCFF3444D3FF3C4E
        D6FF2A3ACEFF202FC9FF1E2CC9FF251595FF0000001200000000000000000000
        00030000000C8A6F5EFFBAA696FF9F8473FFA88F80FF6C5147FF553931FF5E44
        3CFF614840FF60483FFF5F473EFF5E463DFF5D453DFF584038FF3121A0FF4356
        D7FF374BD5FF3F4BCBFF2827ABFF363CBEFF3E4FD6FF3D4ED5FF353ABEFF2827
        ABFF3B45C9FF2F41D0FF2332CCFF291A99FF0000001200000000000000000000
        00030000000B8E7361FFBDA999FFA28876FFA99282FF563933FF4E423CFF664D
        44FFE9D5C9FFE8D5C9FFE8D5C8FFE6D4C8FFE8D4C7FFD9C8BCFF3529A5FF4E62
        DBFF444FCCFF605DBDFFEDEDF8FF8B89CEFF383CBCFF383CBBFF8B89CEFFEDED
        F8FF5F5DBDFF3D47C9FF293ACEFF2D1F9EFF0000001100000000000000000000
        00030000000B917663FFC1AC9DFFA58A79FFAC9382FF563B33FF4F433CFF6A51
        48FFF4E4D5FFEFDED0FFEAD9CBFFE8D6C9FFE8D4C8FFDCC9BEFF392FABFF596F
        DFFF2722A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1EDFFF3E9
        E2FFECE6EBFF2721A5FF2F42D1FF3326A3FF0000000F00000000000000000000
        00020000000A957967FFC4AFA1FFA78D7AFFAE9484FF573A34FF51443EFF6F55
        4CFFF7E8D9FFF6E8D8FFF5E6D7FFF2E2D4FFECDBCFFFDECDC1FF4036B1FF657A
        E2FF3135B7FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9E2FFEADA
        D1FF7F6FACFF2E31B6FF3549D5FF372CA9FF0000000E00000000000000000000
        000200000009987C69FFC6B3A4FFAA917DFFB19686FF583C34FF52463EFF7359
        4FFFF8EADBFFF7E9DAFFF6E8D9FFF5E7D8FFF4E6D7FFE6D7CBFF453DB6FF6E83
        E5FF485EDCFF393BB7FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EBE5FF897D
        B8FF3739B6FF4054D9FF3D51D7FF3C33AFFF0000000D00000000000000000000
        0002000000099A7F6BFFC9B7A7FFAC9280FFB29A88FF593C35FF52473FFF765D
        53FFF9ECDCFFF8EBDCFFF7EADBFFF6E8DAFFF5E7D9FFEBDDD0FF4A44BCFF788F
        E8FF6077E3FF4B4BBBFF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7EDE8FF9087
        C5FF4949BAFF596FDFFF4359DAFF423AB4FF0000000C00000000000000000000
        0002000000089D816DFFCCB8ABFFAF9481FFB49B88FF593D36FF534740FF7A60
        56FFFAEDDEFFF9ECDDFFF8EBDCFFF8EADBFFF7E9DAFFECDFD1FF504CC2FF92A7
        EEFF5655BCFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0EAFFFAF5
        F2FF8F89CAFF5453BCFF6278E2FF4943B9FF0000000B00000000000000000000
        000200000008A0846FFFCEBBACFFB9A18EFFB69C89FF5B3D37FF544841FF7E64
        5AFFFBEEDEFFFAEDDEFFF9EDDDFFF8ECDDFFF8EADBFFEFE2D4FF6B6AD0FFADC1
        F4FF2A1E9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDFD8FFF4EC
        E7FFE5D9DCFF2A1D9BFF8B9EEBFF6563C9FF0000000A00000000000000000000
        000100000006A08570FCCEBCAEFFCFBEAFFFD1C0B2FF5B3E37FF554942FF8065
        5CFFFCEFDFFFFBEEDFFFFAEEDEFFFAEDDEFFF9ECDDFFF1E5D6FF7577D6FFB1C6
        F5FF6E77D1FF5747A1FFCCB6BCFF7A68A8FF4E4CB7FF4F4EB8FF7A68A8FFCBB5
        BCFF5746A1FF6B75D0FF8EA1ECFF706ED0FF0000000900000000000000000000
        00010000000451433983A18671FCA38772FFA38771FF6D5146FF5B3E37FF785C
        53FFA9948BFFA8938AFFA69188FFA58F86FFA38D83FF9D887EFF797BDAFFB5CA
        F6FF93A7EEFF7079D2FF2E229BFF5453BBFF93A7EEFF93A7EEFF5555BCFF2E21
        9BFF6F77D1FF91A4EDFF90A3EDFF7475D4FF0000000800000000000000000000
        0000000000010000000400000006000000070000000700000007000000070000
        000800000008000000080000000800000008000000080000000D7D80DEFFB9CD
        F6FFB9CDF6FFB9CCF6FFB9CCF6FFB9CDF6FFB8CCF6FFB8CCF6FFB7CCF6FFB7CB
        F6FFB6CBF6FFB5C9F6FFB5C9F6FF787AD8FF0000000600000000000000000000
        0000000000000000000100000001000000020000000200000002000000020000
        00020000000200000002000000020000000000000002000000056062A6C08184
        E1FF8183E0FF8083E0FF7F83DFFF7F83DFFF7F82DFFF7E81DFFF7E81DEFF7D81
        DEFF7D80DEFF7D7FDEFF7C7FDDFF5C5EA3C10000000400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020000
        0003000000040000000400000004000000040000000400000004000000040000
        0004000000040000000500000005000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = Btn_GrabarClick
    end
    object btn2: TdxBarLargeButton
      Caption = 'Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000004000000050000000600000007000000070000
        0006000000050000000400000002000000010000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0003000000060000000B0000001000000015000000180000001A0000001A0000
        001800000016000000110000000C000000070000000400000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000003000000070000
        000E0000001706031B4D0F084595180B69D11A0B6FD91E0E87FF1E0D87FF180A
        6ED9170968D10F06449606021B4F000000190000001000000008000000040000
        0001000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000100000001000000040000000B000000150B06
        2E6B1C0F76E11F148FFF1C199AFF1A1EA4FF1A1FA5FF1823ACFF1822ACFF191E
        A5FF1A1DA3FF1B1899FF1D118DFF1A0C75E20A052C6D000000180000000D0000
        0005000000010000000100000000000000000000000000000000000000000000
        0000000000000000000100000001000000050000000D040311361C0F6ECF2119
        96FF1D21A8FF1C27B2FF1E2AB4FF202DBAFF212DBAFF232FBDFF232FBCFF202D
        B9FF202CB9FF1E2AB6FF1B26B0FF1B1FA5FF1E1492FF180B6AD10402103A0000
        0010000000060000000100000001000000000000000000000000000000000000
        00000000000000000001000000050000000E0A062455241788F02022A5FF202B
        B5FF2231BBFF2432BDFF2533BDFF2533BDFF2533BEFF2533BEFF2433BEFF2532
        BEFF2432BEFF2433BDFF2532BDFF222EBAFF1E2AB3FF1E1EA1FF1D1181F10804
        225A000000120000000600000001000000000000000000000000000000000000
        000000000000000000040000000C0A072553281C93FA2329ADFF2532BCFF2735
        BFFF2735C1FF2836BFFF2836C1FF2836C0FF2836C2FF2836C0FF2836C0FF2836
        C0FF2736C0FF2736C0FF2736BFFF2635BFFF2635BEFF2230BAFF1F25A9FF2114
        8BFA080523590000001000000005000000010000000000000000000000000000
        0000000000020000000906041638281E8CEE262FB2FF2935C0FF2A38C1FF2B38
        C2FF2A39C3FF2B39C2FF2A3AC2FF2B3AC3FF2C3AC3FF2C3AC3FF2C3AC3FF2B3A
        C3FF2B39C3FF2B3AC3FF2939C2FF2A38C2FF2938C2FF2837C0FF2634BFFF2228
        AEFF211585EF0503143E0000000C000000030000000100000000000000000000
        00010000000500000010241B77CB2B2EAFFF2C3BC2FF2D3BC4FF2E3DC4FF2D3D
        C4FF3140C5FF4556CFFF4F5ED2FF4454CEFF303FC7FF2F3EC5FF2F3EC5FF303F
        C6FF4453CEFF4D5DD3FF4555CFFF303FC5FF2C3CC3FF2D3BC4FF2B3AC3FF2A38
        C1FF2526A8FF1D1270D000000016000000070000000100000000000000000000
        00020000000A110D3465312BA5FF3040C4FF2F3FC5FF2F40C6FF3041C6FF3344
        C7FF4B5ACFFF434ABBFF3D41B2FF444CBDFF4A5AD0FF3344C8FF3344C9FF495A
        D1FF4249BAFF393BACFF3E44B6FF4958CDFF3343C7FF2F3FC5FF2E3EC5FF2E3D
        C5FF2E3CC2FF29219AFF0D08306B0000000E0000000300000001000000010000
        00040000000F2C2489DD323BBBFF3344C8FF3243C8FF3244C8FF3444C9FF4B5A
        CFFF4046B6FF9597D4FFE8E8F6FF8081CBFF4147B8FF4D5ED3FF4D5FD3FF3E45
        B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4959CEFF3244C7FF3142C7FF3041
        C7FF3243C7FF2C35B6FF24187EDF000000160000000700000001000000020000
        00070E0C294E3A36ACFF3A4AC9FF3546C9FF3646CAFF3648C9FF3748CBFF4349
        B9FF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
        C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C41B3FF3648C9FF3546CAFF3445
        C9FF3344C8FF3747C7FF2F29A1FF0B0827570000000B00000002000000020000
        00091F1A59924044BBFF3E4ECCFF384ACCFF394CCBFF3A4CCCFF3B4DCCFF3B3E
        AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
        F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF3A4CCCFF384BCBFF384A
        CAFF3748CAFF3A4CCBFF373AB2FF181252980000000E00000003000000020000
        000B2F2882C6444FC7FF3D50CEFF3C4ECDFF3C50CFFF3D50CFFF3D51CFFF3B43
        B8FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
        E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3E50CEFF3C4FCDFF3B4D
        CDFF3A4DCCFF3C4ECDFF3F48C0FF251D77CA0000001100000004000000030000
        000C3A36A2EC4958CEFF4052D0FF3F52D0FF4053D0FF4054D1FF4155D1FF4255
        D1FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
        E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4054CFFF4054D0FF3F52D0FF3E52
        CFFF3D50CFFF3E50CFFF4554CBFF2F2694ED0000001300000005000000030000
        000C423CAFFA5061D5FF4154D1FF4256D1FF4356D2FF4357D2FF4458D3FF4559
        D3FF465AD2FF3E43B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
        E6FFF4EBE5FF706AB4FF393EB1FF4559D1FF4459D3FF4358D2FF4357D2FF4256
        D1FF4054D0FF3F53D0FF4C60D3FF362CA0FA0000001300000005000000030000
        000B4541B1FA5B6DDAFF4557D3FF4559D3FF465AD4FF465BD4FF475CD4FF4A5F
        D5FF687ADDFF464BB6FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
        E9FFF4ECE7FF7977BFFF3F43B1FF6578DCFF4A5ED5FF475BD4FF465AD4FF4559
        D3FF4357D2FF4356D1FF576BD8FF3830A4FA0000001200000005000000020000
        000A433FABEC6576DAFF485ED5FF475CD5FF485DD5FF5468D9FF687BDDFF8496
        E5FF5255BAFF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
        EAFFF7F0EAFFFAF7F7FF7A7AC3FF4549B2FF7789E0FF5D70DBFF5063D8FF485D
        D5FF465BD4FF475BD4FF6372D8FF38309DED0000001100000004000000020000
        000839378FC56F7DDAFF4E63D9FF5167D8FF7084E1FF7C8FE4FF7D90E4FF5A5F
        BFFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
        D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4D51B6FF6B7FDFFF687CDEFF5F73
        DBFF4E62D6FF4D62D7FF6A77D5FF302B84C80000000E00000003000000010000
        00062A28668F747DD6FF6F83E1FF8092E4FF8295E5FF8295E5FF8295E6FF3A3B
        A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
        BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6F84E2FF6E81E0FF6B7F
        DFFF677BDEFF6376DDFF6C73CFFF23205F940000000B00000003000000010000
        0004151430486F72D1FF9FB0EDFF8699E6FF879AE7FF879AE7FF889BE8FF4E53
        B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF494DB3FF484CB3FF6C64
        A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4245B0FF7589E2FF7287E2FF7083
        E2FF6C80E0FF889BE8FF5F5FC4FF11102D4E0000000700000002000000000000
        0002000000075757AEDAA8B5EBFF90A3E9FF8D9FE9FF8EA0E9FF8EA0E9FF8696
        E4FF4649B0FF7E75ADFFC3B1B7FF6D66ABFF4A4FB4FF8799E6FF8698E6FF474C
        B1FF6B64A9FFC2B0B6FF796FAAFF3A3CA8FF7587DEFF7A8EE5FF778BE3FF7489
        E3FF768AE3FF99A5E5FF4643A0DC0000000E0000000400000001000000000000
        0001000000042324455B7E82D9FFB0C1F2FF92A5EAFF93A5EBFF93A5EBFF93A5
        EBFF8A9AE4FF4F54B6FF3534A2FF565CBBFF8D9FE8FF8FA2EBFF8EA1EAFF899C
        E7FF5157B9FF2E2C9CFF454AB0FF7C8EE1FF8295E7FF7F92E6FF7C90E5FF798D
        E5FF9EB0EDFF6C6ECBFF1C1B4061000000080000000200000000000000000000
        000000000002000000065455A2C6A8B2E9FFA8B9F0FF97AAECFF98AAECFF98AA
        ECFF98AAECFF97AAECFF97A9ECFF96A9ECFF95A8ECFF94A7ECFF93A6EBFF91A4
        EBFF8FA3EAFF8DA0EAFF8B9FEAFF899CE9FF859AE8FF8397E8FF8194E6FF93A5
        EBFF9CA5E3FF464497C80000000C000000040000000100000000000000000000
        000000000001000000030F0F1C286B6EC5ECBDCAF2FFACBEF1FF9DAFEDFF9DAF
        EEFF9DAFEDFF9DAFEDFF9BAEEDFF9AADEDFF9AACEDFF99ABEDFF97AAEDFF96A9
        ECFF94A7ECFF91A5EBFF8FA3EAFF8CA0EAFF8A9EEAFF879BE9FF99ACEDFFB2C0
        EEFF5C5CBBED0C0C1A2D00000006000000020000000000000000000000000000
        00000000000000000001000000041D1D3646787BD5F9BFCBF2FFBCCCF5FFA1B4
        EFFFA1B3EFFFA1B3EFFFA0B3EEFF9FB1EFFF9EB1EFFF9DAFEEFF9BAEEEFF9AAD
        EEFF98ABEDFF95A9ECFF93A6ECFF90A4EBFF8EA1EAFFACBEF2FFB6C3EFFF696B
        CBFA1818324A0000000700000002000000000000000000000000000000000000
        0000000000000000000000000001000000041D1E36457074CBEEB0BAEEFFD0E0
        F9FFB5C6F3FFA5B7F0FFA5B7F0FFA3B6F0FFA3B5EFFFA1B4EFFF9FB2EFFF9EB0
        EEFF9CAEEEFF99ACEDFF97ABEDFFA6B9F0FFC7D8F7FFA8B1E9FF6466C4EE1A1A
        334A000000070000000200000001000000000000000000000000000000000000
        000000000000000000000000000000000001000000030E0F1A235E60AAC89196
        E4FFC4D0F4FFD7E7FBFFC7D7F7FFB8C8F4FFB3C4F3FFA6B8F0FFA4B7F0FFAFC0
        F2FFB1C2F2FFC0D1F6FFD2E3FAFFBFCCF2FF888EDEFF5556A6CA0D0D19280000
        0006000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000052728
        4656686CBCDA878CE1FFAAB2ECFFC4D1F4FFCAD6F6FFDDECFCFFDCECFCFFC8D5
        F5FFC1CEF3FFA5AEEAFF8085DEFF6163B7DA2526475B00000007000000040000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        000300000004161728323E3F6E825F61A9C56366B2CE797EDBFC787CDAFC6064
        B1CF5C5EA9C63A3D6D8415162734000000060000000400000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000200000003000000040000000500000005000000050000
        0005000000040000000400000003000000020000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000010000000100000001000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = Btn_CancelarClick
    end
  end
end
