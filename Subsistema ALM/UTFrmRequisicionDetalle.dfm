inherited FrmRequisicionDetalle: TFrmRequisicionDetalle
  Caption = 'Requisicion de materiel y equipo'
  ClientHeight = 562
  ClientWidth = 774
  ExplicitWidth = 790
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Top = 280
    Width = 772
    Height = 233
    ExplicitTop = 280
    ExplicitWidth = 772
    ExplicitHeight = 233
    inherited NextDBGrid1: TNextDBGrid
      Width = 754
      Height = 171
      ExplicitWidth = 754
      ExplicitHeight = 171
      object NxDBNumberColumn1: TNxDBNumberColumn
        DefaultValue = '0'
        DefaultWidth = 50
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Cantidad'
        Options = [coCanClick, coCanSort, coPublicUsing]
        ParentFont = False
        Position = 0
        SortType = stNumeric
        Width = 50
        FieldName = 'cantidad'
        FormatMask = '#,##0.00'
        Precision = 4
        Increment = 1.000000000000000000
        SpinButtons = False
      end
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 400
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Descripci'#243'n'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 400
        FieldName = 'tituloarticulo'
      end
      object NxDBDateColumn1: TNxDBDateColumn
        DefaultValue = '05/03/2012'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Requerido'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 2
        SortType = stDate
        FieldName = 'fecharequerida'
        HideWhenEmpty = False
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
    end
    inherited btnAgregarDetalle: TBitBtn
      Visible = False
    end
    inherited btnEditarDetalle: TBitBtn
      Visible = False
    end
    inherited btnQuitarDetalle: TBitBtn
      Visible = False
    end
    object JvMaskEdit1: TJvMaskEdit
      Left = 440
      Top = -152
      Width = 121
      Height = 21
      TabOrder = 4
      Text = 'JvMaskEdit1'
    end
  end
  inherited Panel3: TPanel
    Top = 518
    Width = 772
    ExplicitTop = 518
    ExplicitWidth = 772
  end
  inherited Panel1: TPanel
    Width = 780
    Height = 278
    ExplicitWidth = 780
    ExplicitHeight = 278
    inherited Panel4: TPanel
      Width = 780
      Height = 57
      ExplicitWidth = 780
      ExplicitHeight = 57
      object JvLabel1: TJvLabel
        Left = 16
        Top = 21
        Width = 115
        Height = 23
        Caption = 'Solicitud #:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -19
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object JvLabel2: TJvLabel
        Left = 529
        Top = 21
        Width = 126
        Height = 23
        Caption = 'Consecutivo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        HotTrackFont.Charset = DEFAULT_CHARSET
        HotTrackFont.Color = clWindowText
        HotTrackFont.Height = -19
        HotTrackFont.Name = 'Tahoma'
        HotTrackFont.Style = []
      end
      object edtSerie: TEdit
        Left = 132
        Top = 22
        Width = 386
        Height = 22
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = 'edtSerie'
        OnEnter = edtConsecutivoEnter
        OnExit = edtConsecutivoExit
        OnKeyDown = edtConsecutivoKeyDown
      end
      object edtConsecutivo: TEdit
        Left = 659
        Top = 18
        Width = 101
        Height = 31
        Margins.Right = 6
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'edtConsecutivo'
        OnEnter = edtConsecutivoEnter
        OnExit = edtConsecutivoExit
        OnKeyDown = edtConsecutivoKeyDown
      end
    end
    object tab1: TAdvSmoothTabPager
      Left = 8
      Top = 57
      Width = 754
      Height = 217
      Anchors = [akLeft, akTop, akRight]
      ActivePage = AdvSmoothTabPager11
      TabPosition = tpTopLeft
      TabSettings.StartMargin = 4
      TabReorder = False
      TabOrder = 1
      object AdvSmoothTabPager11: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 752
        Height = 189
        Caption = 'Informaci'#243'n'
        PageAppearance.Color = 15066597
        PageAppearance.ColorTo = 15066597
        PageAppearance.ColorMirror = 15066597
        PageAppearance.ColorMirrorTo = 15066597
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = clGray
        PageAppearance.Rounding = 0
        PageAppearance.ShadowOffset = 0
        PageAppearance.Glow = gmNone
        TabAppearance.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Appearance.Font.Color = clWindowText
        TabAppearance.Appearance.Font.Height = -11
        TabAppearance.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Appearance.Font.Style = []
        TabAppearance.Status.Caption = '0'
        TabAppearance.Status.Appearance.Fill.Color = clRed
        TabAppearance.Status.Appearance.Fill.ColorMirror = clNone
        TabAppearance.Status.Appearance.Fill.ColorMirrorTo = clNone
        TabAppearance.Status.Appearance.Fill.GradientType = gtSolid
        TabAppearance.Status.Appearance.Fill.BorderColor = clGray
        TabAppearance.Status.Appearance.Fill.Rounding = 0
        TabAppearance.Status.Appearance.Fill.ShadowOffset = 0
        TabAppearance.Status.Appearance.Fill.Glow = gmNone
        TabAppearance.Status.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Status.Appearance.Font.Color = clWhite
        TabAppearance.Status.Appearance.Font.Height = -11
        TabAppearance.Status.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Status.Appearance.Font.Style = []
        TabAppearance.BevelColor = 16765357
        TabAppearance.BevelColorDown = 16640730
        TabAppearance.BevelColorSelected = 16640730
        TabAppearance.BevelColorHot = 16640730
        TabAppearance.BevelColorDisabled = 16640730
        TabAppearance.Color = 16773091
        TabAppearance.ColorDown = clSilver
        TabAppearance.ColorDisabled = 16765357
        object JvLabel3: TJvLabel
          Left = 17
          Top = 10
          Width = 58
          Height = 13
          Caption = 'Referencia:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel6: TJvLabel
          Left = 17
          Top = 38
          Width = 82
          Height = 13
          Caption = 'Lugar requerido:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel7: TJvLabel
          Left = 17
          Top = 68
          Width = 66
          Height = 13
          Caption = 'Comentarios:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel4: TJvLabel
          Left = 284
          Top = 10
          Width = 35
          Height = 13
          Caption = 'Fecha:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object JvLabel5: TJvLabel
          Left = 446
          Top = 10
          Width = 84
          Height = 13
          Caption = 'Fecha requerida:'
          Transparent = True
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'Tahoma'
          HotTrackFont.Style = []
        end
        object btnLugar: TButton
          Left = 201
          Top = 34
          Width = 17
          Height = 21
          Caption = '...'
          TabOrder = 0
          OnClick = btnLugarClick
        end
        object edtCodigoLugar: TEdit
          Left = 103
          Top = 34
          Width = 97
          Height = 21
          TabOrder = 1
          OnKeyPress = edtCodigoLugarKeyPress
        end
        object edtReferencia: TDBEdit
          Left = 78
          Top = 7
          Width = 193
          Height = 21
          DataField = 'referencia'
          DataSource = dsDatos
          TabOrder = 2
        end
        object edtTituloLugar: TEdit
          Left = 224
          Top = 34
          Width = 505
          Height = 21
          TabStop = False
          BorderStyle = bsNone
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object memComentarios: TDBMemo
          Left = 17
          Top = 87
          Width = 720
          Height = 66
          DataField = 'comentarios'
          DataSource = dsDatos
          TabOrder = 4
        end
        object dtpFecha: TJvDBDatePickerEdit
          Left = 325
          Top = 7
          Width = 97
          Height = 21
          AllowNoDate = True
          DataField = 'fecha'
          DataSource = dsDatos
          TabOrder = 5
        end
        object dtpFechaReq: TJvDBDatePickerEdit
          Left = 536
          Top = 7
          Width = 97
          Height = 21
          AllowNoDate = True
          DataField = 'fecharequerida'
          DataSource = dsDatos
          TabOrder = 6
        end
      end
      object AdvSmoothTabPager12: TAdvSmoothTabPage
        Left = 1
        Top = 26
        Width = 752
        Height = 189
        Caption = 'Firmantes'
        PageAppearance.Color = 15066597
        PageAppearance.ColorTo = 15066597
        PageAppearance.ColorMirror = 15066597
        PageAppearance.ColorMirrorTo = 15066597
        PageAppearance.GradientMirrorType = gtVertical
        PageAppearance.BorderColor = 16765357
        PageAppearance.Rounding = 0
        PageAppearance.ShadowOffset = 0
        PageAppearance.Glow = gmNone
        TabAppearance.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Appearance.Font.Color = clWindowText
        TabAppearance.Appearance.Font.Height = -11
        TabAppearance.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Appearance.Font.Style = []
        TabAppearance.Status.Caption = '0'
        TabAppearance.Status.Appearance.Fill.Color = clRed
        TabAppearance.Status.Appearance.Fill.ColorMirror = clNone
        TabAppearance.Status.Appearance.Fill.ColorMirrorTo = clNone
        TabAppearance.Status.Appearance.Fill.GradientType = gtSolid
        TabAppearance.Status.Appearance.Fill.BorderColor = clGray
        TabAppearance.Status.Appearance.Fill.Rounding = 0
        TabAppearance.Status.Appearance.Fill.ShadowOffset = 0
        TabAppearance.Status.Appearance.Fill.Glow = gmNone
        TabAppearance.Status.Appearance.Font.Charset = DEFAULT_CHARSET
        TabAppearance.Status.Appearance.Font.Color = clWhite
        TabAppearance.Status.Appearance.Font.Height = -11
        TabAppearance.Status.Appearance.Font.Name = 'Tahoma'
        TabAppearance.Status.Appearance.Font.Style = []
        TabAppearance.BevelColor = 16765357
        TabAppearance.BevelColorDown = 16640730
        TabAppearance.BevelColorSelected = 16640730
        TabAppearance.BevelColorHot = 16640730
        TabAppearance.BevelColorDisabled = 16640730
        TabAppearance.Color = 16773091
        TabAppearance.ColorDown = clSilver
        TabAppearance.ColorDisabled = 16765357
        object cmbFirmante1: TAdvComboBox
          Left = 32
          Top = 29
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object cmbFirmante2: TAdvComboBox
          Left = 277
          Top = 29
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object cmbFirmante3: TAdvComboBox
          Left = 519
          Top = 29
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
          TabOrder = 2
        end
        object cmbFirmante4: TAdvComboBox
          Left = 32
          Top = 72
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object cmbFirmante5: TAdvComboBox
          Left = 277
          Top = 72
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object cmbFirmante6: TAdvComboBox
          Left = 519
          Top = 72
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object cmbFirmante7: TAdvComboBox
          Left = 32
          Top = 112
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object cmbFirmante8: TAdvComboBox
          Left = 277
          Top = 112
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object cmbFirmante9: TAdvComboBox
          Left = 519
          Top = 112
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object cmbFirmante10: TAdvComboBox
          Left = 32
          Top = 151
          Width = 225
          Height = 21
          Color = clWindow
          Version = '1.3.2.2'
          Visible = False
          ButtonWidth = 18
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          LabelCaption = '-'
          LabelPosition = lpTopLeft
          LabelTransparent = True
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clBlue
          LabelFont.Height = -12
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
      end
    end
  end
  inherited dsDatos: TDataSource
    Left = 688
    Top = 72
  end
  inherited cdDetalle: TClientDataSet
    ReadOnly = False
    Top = 248
  end
  inherited dsDetalle: TDataSource
    Top = 248
  end
  inherited mdDetalle: TJvMemoryData
    Top = 248
  end
  object AdvOfficeTabSetOfficeStyler1: TAdvOfficeTabSetOfficeStyler
    ButtonBorderColor = clNone
    GlowButtonAppearance.BorderColor = 13815240
    GlowButtonAppearance.BorderColorHot = 5819121
    GlowButtonAppearance.BorderColorDown = 3181250
    GlowButtonAppearance.BorderColorChecked = 3181250
    GlowButtonAppearance.ColorTo = 15590880
    GlowButtonAppearance.ColorChecked = 14285309
    GlowButtonAppearance.ColorCheckedTo = 7131391
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7131391
    GlowButtonAppearance.ColorDownTo = 8122111
    GlowButtonAppearance.ColorHot = 9102333
    GlowButtonAppearance.ColorHotTo = 14285309
    GlowButtonAppearance.ColorMirror = 15590880
    GlowButtonAppearance.ColorMirrorTo = 15590880
    GlowButtonAppearance.ColorMirrorHot = 14285309
    GlowButtonAppearance.ColorMirrorHotTo = 9102333
    GlowButtonAppearance.ColorMirrorDown = 8122111
    GlowButtonAppearance.ColorMirrorDownTo = 7131391
    GlowButtonAppearance.ColorMirrorChecked = 7131391
    GlowButtonAppearance.ColorMirrorCheckedTo = 7131391
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    Style = tsOffice2010Silver
    TabAppearance.BorderColor = 13815240
    TabAppearance.BorderColorHot = 16315891
    TabAppearance.BorderColorSelected = 13815240
    TabAppearance.BorderColorSelectedHot = 13684944
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = clWhite
    TabAppearance.ColorSelectedTo = clWhite
    TabAppearance.ColorDisabled = 15921906
    TabAppearance.ColorDisabledTo = 15921906
    TabAppearance.ColorHot = 16645114
    TabAppearance.ColorHotTo = 16643051
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 16643051
    TabAppearance.ColorMirrorHotTo = 16645114
    TabAppearance.ColorMirrorSelected = clWhite
    TabAppearance.ColorMirrorSelectedTo = clWhite
    TabAppearance.ColorMirrorDisabled = 15921906
    TabAppearance.ColorMirrorDisabledTo = 15921906
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Tahoma'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggVertical
    TabAppearance.GradientMirrorHot = ggVertical
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = clBlack
    TabAppearance.TextColorHot = clBlack
    TabAppearance.TextColorSelected = clBlack
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = 12565174
    TabAppearance.HighLightColorSelected = 13815240
    TabAppearance.HighLightColorHot = clWhite
    TabAppearance.HighLightColorSelectedHot = 15590880
    TabAppearance.HighLightColorDown = 16119026
    TabAppearance.BackGround.Color = 15590880
    TabAppearance.BackGround.ColorTo = clWhite
    TabAppearance.BackGround.Direction = gdHorizontal
    Left = 664
    Top = 80
  end
end