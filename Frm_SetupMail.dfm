object FrmSetupMail: TFrmSetupMail
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 369
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CxPageMail: TcxPageControl
    Left = 0
    Top = 0
    Width = 763
    Height = 369
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cTsOpciones
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 367
    ClientRectLeft = 2
    ClientRectRight = 761
    ClientRectTop = 28
    object cTsOpciones: TcxTabSheet
      Caption = 'Opciones de Envio'
      ImageIndex = 1
      object GBx2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        PanelStyle.Active = True
        ParentFont = False
        TabOrder = 0
        Height = 137
        Width = 759
        object dxLayoutControl1: TdxLayoutControl
          Left = 2
          Top = 2
          Width = 755
          Height = 133
          Align = alClient
          TabOrder = 0
          ExplicitHeight = 126
          object TxtEdtRecibe: TcxTextEdit
            Left = 69
            Top = 10
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 0
            Width = 356
          end
          object TxtEdtCc: TcxTextEdit
            Left = 69
            Top = 37
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object TxtEdtAsunto: TcxTextEdit
            Left = 69
            Top = 64
            ParentFont = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 2
            Width = 217
          end
          object RchEdtFirma: TcxRichEdit
            Left = 431
            Top = 28
            ParentFont = False
            Properties.PlainText = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            TabOrder = 5
            Height = 95
            Width = 338
          end
          object btnAdd: TcxButton
            Left = 362
            Top = 98
            Width = 63
            Height = 25
            Caption = 'Agregar'
            TabOrder = 4
            OnClick = btnAddClick
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000100000003000000080000000C0000
              000E0000000D0000000800000003000000010000000000000000000000020000
              000A00000010000000110000001300000018050E0A3F16412DAC216043EC256A
              48FF216141ED163F2BAC050E09390000000900000001000000000000000A7B50
              43C2AB705CFFAB6F5AFFC29A8CFFA2A191FF307554FF2D9D71FF24BA82FF23CB
              8EFF23BA82FF25986BFF2C7050FD0A1E145C00000006000000000000000EAD73
              5FFFFDFBF9FFFAF4F2FFDCE4DEFF388260FF40C397FF28CD92FF40956DFF487E
              5DFF3F946CFF26CD91FF27BA84FF297150F5050F0A2F000000030000000EB077
              62FFFDFBFAFFF6EFEBFF80AD96FF54B593FF36D29CFF2ECE95FF4A8362FFFFFF
              FFFF4A8161FF2CD096FF2CCF95FF31A87AFF1B4833A1000000060000000CB079
              66FFFDFBFBFFF7F2EFFF499371FF6CDBBBFF469D76FF4D8865FF4D8765FFF6F1
              EBFF4D8665FF4D8664FF459B73FF33C892FF2B7453E7000000080000000BB37C
              69FFFEFCFBFFF8F4F1FF3C926DFF81E9CCFF508C6AFFEADBD3FFF8F3EFFFF9F3
              EFFFF8F3EFFFFFFFFFFF4E8968FF3FD5A3FF348662FA000000080000000AB67F
              6CFFFEFDFCFFF8F3F1FF4FA07DFFB1E9D8FF6CA98CFF528F6EFF528F6DFFFAF5
              F3FF528F6CFF518E6BFF5EA583FF76DCBBFF338260E70000000700000009B983
              71FFFEFDFCFFFAF5F2FF8CC2AAFF94CBB5FFE2FAF5FFC5F5E9FF539371FFECDE
              D8FF539270FFABF0DDFFB0F1DEFF84C6ADFF2358419A0000000400000007BC88
              77FFFEFEFDFFFBF4F0FFE4ECE6FF4EAA84FFC8E7DBFFEEFDFAFF7AB095FF5696
              74FF74AF94FFD9F9F2FFBEE5D8FF3E9873F208130E250000000100000006BF8C
              7AFFFEFEFDFFFBF6F1FFFBF6F4FFC9E2D5FF4FAD85FF93CEB7FFD2ECE3FFF3FC
              FBFFD2ECE3FF92CDB6FF4DA881FF122D2251000000020000000000000005C18F
              7FFFFEFEFEFFFAF6F3FFFAF5F3FFFAF7F4FFE5EEE7FF90CAB1FF5BB48FFF46AB
              82FF5BB48EFF8EC9B1FFC9BDB1FF00000008000000000000000000000004C493
              82FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFBF6F3FFFCF8F6FFFCF7F6FFFCF9
              F7FFFBF8F5FFFCFBFAFFC49587FF00000005000000000000000000000003C799
              85FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6F4FFFCF6
              F3FFFCF6F2FFFDFCFAFFC28F7FFF00000004000000000000000000000002C99A
              89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFEFDFFFEFE
              FDFFFEFDFDFFFEFDFDFFC49382FF000000030000000000000000000000019774
              67BECA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A88FFC999
              87FFC79887FFC89886FF927063BF000000020000000000000000}
          end
          object cbbTipo: TcxComboBox
            Left = 69
            Top = 98
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Requisicion'
              'Orden de Compra')
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 3
            Text = 'Requisicion'
            Width = 121
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            CaptionOptions.Text = 'Para:'
            Control = TxtEdtRecibe
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            CaptionOptions.Text = 'Cc'
            Control = TxtEdtCc
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            CaptionOptions.Text = 'Asunto'
            Control = TxtEdtAsunto
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.AlignVert = tavTop
            CaptionOptions.Text = 'Mensaje'
            CaptionOptions.Layout = clTop
            Control = RchEdtFirma
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group2
            AlignVert = avClient
            Index = 0
            AutoCreated = True
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Parent = dxLayoutControl1Group3
            AlignHorz = ahRight
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btnAdd
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            Index = 0
            AutoCreated = True
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Parent = dxLayoutControl1Group3
            AlignHorz = ahClient
            CaptionOptions.Text = 'Documento'
            Control = cbbTipo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group2
            LayoutDirection = ldHorizontal
            Index = 1
            AutoCreated = True
          end
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 137
        Width = 759
        Height = 202
        Align = alClient
        TabOrder = 1
        ExplicitTop = 130
        ExplicitHeight = 209
        object cxGrid1DBCardView1: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGrid1DBCardView1CellDblClick
          DataController.DataSource = dsCorreos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CardAutoWidth = True
          OptionsView.CardIndent = 7
          OptionsView.CellAutoHeight = True
          object cxGrid1DBCardView1Row1: TcxGridDBCardViewRow
            Caption = 'Para'
            DataBinding.FieldName = 'sRemitente'
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1Row2: TcxGridDBCardViewRow
            Caption = 'Cc'
            DataBinding.FieldName = 'sCc'
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1Row3: TcxGridDBCardViewRow
            Caption = 'Asunto'
            DataBinding.FieldName = 'sAsunto'
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1Row4: TcxGridDBCardViewRow
            Caption = 'Documento'
            DataBinding.FieldName = 'eTipo'
            Position.BeginsLayer = True
          end
          object cxGrid1DBCardView1Row5: TcxGridDBCardViewRow
            Caption = 'Mensaje'
            DataBinding.FieldName = 'sMensaje'
            PropertiesClassName = 'TcxMemoProperties'
            Position.BeginsLayer = True
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBCardView1
        end
      end
    end
    object cTsConfiguracion: TcxTabSheet
      Caption = 'Configuraci'#243'n del Servidor SMTP'
      ImageIndex = 0
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 759
        Height = 339
        Align = alClient
        TabOrder = 0
        object DbTxtEdtSmtp: TcxDBTextEdit
          Left = 151
          Top = 10
          DataBinding.DataField = 'sSmtp'
          DataBinding.DataSource = dsConfiguracion
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 273
        end
        object DbSpnEdtPuerto: TcxDBSpinEdit
          Left = 151
          Top = 83
          DataBinding.DataField = 'iPuerto'
          DataBinding.DataSource = dsConfiguracion
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 3
          Width = 81
        end
        object DbTxtEdtEmail: TcxDBTextEdit
          Left = 151
          Top = 177
          DataBinding.DataField = 'sEmail'
          DataBinding.DataSource = dsConfiguracion
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          OnExit = DbTxtEdtEmailExit
          Width = 121
        end
        object DbCmbPassw: TcxDBComboBox
          Left = 379
          Top = 231
          DataBinding.DataField = 'eGrabarPassw'
          DataBinding.DataSource = dsConfiguracion
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'No'
            'Si')
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 7
          Width = 45
        end
        object TxtEdtPass: TcxTextEdit
          Left = 151
          Top = 204
          ParentFont = False
          Properties.EchoMode = eemPassword
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 121
        end
        object Panel1: TPanel
          Left = 10
          Top = 37
          Width = 414
          Height = 4
          BevelOuter = bvNone
          BorderStyle = bsSingle
          TabOrder = 1
        end
        object cxlblMsj: TcxLabel
          Left = 10
          Top = 47
          Caption = 
            'Consulte con el administrador de sistemas antes de cambiar'#13#10'algu' +
            'na de estas opciones avanzadas:'
          ParentFont = False
          Style.HotTrack = False
        end
        object DbChkGrBxSSL: TdxDBCheckGroupBox
          Left = 151
          Top = 110
          Caption = 'Usar SSL (Secure Sockets Layer)'
          DataBinding.DataField = 'eSSL'
          DataBinding.DataSource = dsConfiguracion
          ParentFont = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          TabOrder = 4
          Height = 61
          Width = 273
          object dxLayoutControl3: TdxLayoutControl
            Left = 2
            Top = 18
            Width = 269
            Height = 41
            Align = alClient
            TabOrder = 0
            object DbCmbSSL: TcxDBComboBox
              Left = 36
              Top = 10
              DataBinding.DataField = 'sTls'
              DataBinding.DataSource = dsConfiguracion
              ParentFont = False
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'utNoTLSSupport'
                'utUseExplicitTLS'
                'utUseImplicitTLS'
                'utUseRequireTLS')
              Style.BorderColor = clWindowFrame
              Style.BorderStyle = ebs3D
              Style.HotTrack = False
              Style.ButtonStyle = bts3D
              Style.PopupBorderStyle = epbsFrame3D
              TabOrder = 0
              Width = 121
            end
            object dxLayoutControl3Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutControl3Item1: TdxLayoutItem
              Parent = dxLayoutControl3Group_Root
              AlignHorz = ahClient
              CaptionOptions.Text = 'TLS:'
              Control = DbCmbSSL
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutControl2Item1: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'Servidor de Correo Saliente:'
          Control = DbTxtEdtSmtp
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutControl2Item2: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Puerto de Servidor:'
          Control = DbSpnEdtPuerto
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutControl2Item3: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'Email:'
          Control = DbTxtEdtEmail
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutControl2Item5: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahRight
          CaptionOptions.Text = 'Pedir siempre contrase'#241'a al enviar'
          Control = DbCmbPassw
          ControlOptions.ShowBorder = False
          Index = 7
        end
        object dxLayoutControl2Item4: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'Password:'
          Control = TxtEdtPass
          ControlOptions.ShowBorder = False
          Index = 6
        end
        object dxLayoutControl2Item6: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'Panel1'
          CaptionOptions.Visible = False
          Control = Panel1
          ControlOptions.AutoColor = True
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutControl2Item7: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          CaptionOptions.Text = 'cxLabel1'
          CaptionOptions.Visible = False
          Control = cxlblMsj
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutControl2Item9: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahRight
          CaptionOptions.Text = 'dxDBCheckGroupBox1'
          CaptionOptions.Visible = False
          Control = DbChkGrBxSSL
          ControlOptions.ShowBorder = False
          Index = 4
        end
      end
    end
  end
  object NxAutoCompletion1: TNxAutoCompletion
    Associate = TxtEdtRecibe
    Enabled = True
    Sources = [asHistory]
    Left = 328
    Top = 184
  end
  object QCorreos: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'select * from doctos_correo where sIdUsuario=:Usuario')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
    Left = 336
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        ParamType = ptUnknown
      end>
  end
  object QConfiguracion: TZQuery
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
    Left = 456
    Top = 184
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
  object dsConfiguracion: TDataSource
    DataSet = QConfiguracion
    Left = 496
    Top = 184
  end
  object dsCorreos: TDataSource
    DataSet = QCorreos
    Left = 328
    Top = 248
  end
end