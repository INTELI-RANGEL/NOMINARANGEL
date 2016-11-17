object FrmResguardo: TFrmResguardo
  Left = 0
  Top = 0
  Caption = 'Consulta de Resguardos'
  ClientHeight = 480
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
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
    Height = 161
    Width = 862
    object dxLayoutControl1: TdxLayoutControl
      Left = 2
      Top = 2
      Width = 858
      Height = 157
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 163
      object ChkGbxFechas: TdxCheckGroupBox
        Left = 10
        Top = 10
        Caption = 'Aplica Fechas de Asignaci'#243'n'
        ParentFont = False
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        TabOrder = 0
        Height = 95
        Width = 215
        object dxLayoutControl2: TdxLayoutControl
          Left = 2
          Top = 18
          Width = 211
          Height = 75
          Align = alClient
          TabOrder = 0
          object DtEdtFechaI: TcxDateEdit
            Left = 85
            Top = 10
            ParentFont = False
            Properties.ShowTime = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 0
            Width = 121
          end
          object DtEdtFechaT: TcxDateEdit
            Left = 85
            Top = 37
            ParentFont = False
            Properties.ShowTime = False
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 1
            Width = 121
          end
          object dxLayoutControl2Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutControl2Item1: TdxLayoutItem
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahClient
            CaptionOptions.Text = 'Fecha Inicio'
            Control = DtEdtFechaI
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl2Item2: TdxLayoutItem
            Parent = dxLayoutControl2Group_Root
            AlignHorz = ahClient
            CaptionOptions.Text = 'Fecha Termino'
            Control = DtEdtFechaT
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object ChkGbxEquipos: TdxCheckGroupBox
        Left = 231
        Top = 10
        Caption = 'Aplica Equipo '
        CheckBox.Checked = False
        ParentFont = False
        Properties.OnChange = ChkGbxEquiposPropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        TabOrder = 3
        Height = 61
        Width = 610
        object dxLayoutControl3: TdxLayoutControl
          Left = 2
          Top = 18
          Width = 606
          Height = 41
          Align = alClient
          TabOrder = 0
          object LCmbEquipos: TcxLookupComboBox
            Left = 47
            Top = 10
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'sIdInsumo'
            Properties.ListColumns = <
              item
                Caption = 'Familia'
                HeaderAlignment = taCenter
                Width = 100
                FieldName = 'familia'
              end
              item
                Caption = 'Id Equipo'
                HeaderAlignment = taCenter
                Width = 80
                FieldName = 'sIdInsumo'
              end
              item
                Caption = 'No. Serie'
                HeaderAlignment = taCenter
                Width = 80
                FieldName = 'sNumeroserie'
              end
              item
                HeaderAlignment = taCenter
                Width = 250
                FieldName = 'mDescripcion'
              end>
            Properties.ListFieldIndex = 3
            Properties.ListSource = dsEquipos
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 0
            Width = 145
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
            AlignVert = avTop
            CaptionOptions.Text = 'Equipo'
            Control = LCmbEquipos
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
      end
      object ChkGbxEmpleado: TdxCheckGroupBox
        Left = 231
        Top = 77
        Caption = 'Aplica Empleado'
        CheckBox.Checked = False
        ParentFont = False
        Properties.OnChange = ChkGbxEmpleadoPropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        TabOrder = 4
        Height = 61
        Width = 322
        object dxLayoutControl4: TdxLayoutControl
          Left = 2
          Top = 18
          Width = 318
          Height = 41
          Align = alClient
          TabOrder = 0
          object LCmbEmpleados: TcxLookupComboBox
            Left = 61
            Top = 10
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'sidEMpleado'
            Properties.ListColumns = <
              item
                Caption = 'Ficha Empleado'
                HeaderAlignment = taCenter
                Width = 70
                FieldName = 'sidEMpleado'
              end
              item
                Caption = 'Nombre Completo'
                HeaderAlignment = taCenter
                Width = 200
                FieldName = 'NombreCompleto'
              end
              item
                Caption = 'Puesto'
                HeaderAlignment = taCenter
                Width = 100
                FieldName = 'DescripcionPuesto'
              end
              item
                HeaderAlignment = taCenter
                Width = 100
                FieldName = 'Departamento'
              end>
            Properties.ListFieldIndex = 1
            Properties.ListSource = dsEmpleados
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebs3D
            Style.HotTrack = False
            Style.ButtonStyle = bts3D
            Style.PopupBorderStyle = epbsFrame3D
            TabOrder = 0
            Width = 145
          end
          object dxLayoutControl4Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutControl4Item1: TdxLayoutItem
            Parent = dxLayoutControl4Group_Root
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Empleado'
            Control = LCmbEmpleados
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
      end
      object btnConsulta: TcxButton
        Left = 84
        Top = 111
        Width = 66
        Height = 30
        Caption = '&Consultar'
        TabOrder = 1
        OnClick = btnConsultaClick
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          00090000000E0000000F0000000F0000000F0000000F00000010000000100000
          00100000001000000012000000200713339E0F276AFF0A193A98000000087F57
          48C0B17864FFB07763FFAF7662FFAE7561FFAE7560FFAD735FFFAC735FFFAC72
          5EFFAA715CFFA26B57FF4D445EFF417CB9FF70C7FFFF265198FF0000000CB780
          6EFFF4ECE7FFF4EBE6FFF3EBE5FFF2EAE4FFF1E9E3FFEEE6E2FFEBE4E0FFE8E0
          DCFFE1D8D4FF6E7B9BFF4C83BCFF83CFFFFF5694CEFF142B4D990000000CB882
          70FFF6EEEAFFEEE0D9FFEDE0D8FFECE0DAFFDBCDC6FFA27D68FF8E5D41FF8C5C
          40FF795C52FF577EA6FF92D4FAFF619CD0FF64667FFF0000001C0000000BB984
          72FFF7F0ECFFEFE2DBFFEEE3DCFFDACBC2FF926246FFC8A583FFF0D9B9FFF0DC
          BEFFC7A88BFF895D43FF6891B2FF829BB6FFAD7967FF000000100000000ABB86
          75FFF8F2EFFF5E67E3FF656DDCFFAA8670FFC8A482FFF8DBADFFF7D6A6FFF8DB
          ACFFFAE3BFFFC8A88CFF83685CFFE5DFDBFFB6806FFF0000000D00000009BD88
          77FFF9F4F1FF626DE6FF787FE1FF98684BFFF2DBB9FFFCECCEFFFCEFD5FFF9E0
          B8FFF8DEB4FFF3E1C7FF8F5D41FFECE8E5FFB98370FF0000000C00000008BF8A
          79FFFAF6F4FF6672E8FF7E85E4FF9D6D51FFF4DEBDFFFEF8E8FFFEF7E5FFFDF0
          D9FFF8DEB6FFF3E2C8FF926145FFF0EBE8FFBA8572FF0000000B00000007C08D
          7BFFFBF8F6FF6B79EAFF7681E6FFB7947EFFCEAE90FFFCECD1FFFEFAEBFFFDF0
          D7FFFAE5C4FFCBAC90FFAD8974FFF3EEECFFBC8775FF0000000A00000007C28E
          7DFFFCF9F8FF717EECFF6D78E7FFE7DCD4FFA67757FFCFAF93FFF2DFC5FFF2DF
          C6FFCDAE92FFA17357FFDFD2CBFFF8F2F0FFBD8977FF0000000A00000006C391
          80FFFCFBF9FF7684EDFF6070E8FFF6F1EDFFDBBA8CFFB48864FFAA7D62FF9A79
          58FF878762FFE8DDD6FFF3EBE6FFF9F5F2FFBF8B7AFF0000000900000005C492
          82FFFDFCFBFFF8F3EEFFF8F2EDFFF8F1EDFFDEB676FFDAB078FFF6F1EEFF59CB
          96FF43B97DFFF5EEEAFFF4ECE7FFFAF7F5FFC08D7CFF0000000800000004C695
          84FFFEFDFCFFFAF4F1FFF9F3F0FFF8F3F0FFDCB067FFD3A257FFF7F2EDFF16BA
          70FF11AD5FFFF6F0EBFFF6EEEAFFFCF8F6FFC28F7EFF0000000700000004C797
          86FFFEFDFDFFFAF7F3FFFAF6F3FFFAF5F1FFDEB269FFD7A65CFFF9F4F0FFF8F2
          EFFFF8F2EEFFF7F2EDFFF7F1ECFFFCFAF8FFC39181FF0000000600000003C898
          88FFFEFEFDFFFEFEFDFFFEFEFDFFFEFDFDFFFEFDFCFFFEFDFCFFFEFDFCFFFEFC
          FBFFFDFCFBFFFDFCFBFFFDFBFAFFFDFBFAFFC59383FF00000005000000029673
          67BFCA9C8BFFCA9C8BFFCA9B8BFFCA9B8AFFC99A8AFFC99A8AFFC99A89FFC898
          89FFC89888FFC89787FFC79786FFC69686FF926F62C000000003}
        PaintStyle = bpsGlyph
      end
      object btnExcel: TcxButton
        Left = 159
        Top = 111
        Width = 66
        Height = 30
        Caption = 'Exportar'
        TabOrder = 2
        OnClick = btnExcelClick
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0002000000090000000E0000000F000000100000001000000011000000110000
          00110000001200000012000000110000000C0000000300000000000000000000
          00087B5043C0AB705CFFAB6F5AFFAB705CFFAA6F5BFFAA6E59FFA96F5AFFAA6D
          59FFAA6C59FFAA6C59FFA96C58FF794D3FC30000000B00000000000000000000
          000CAD735FFFFDFBF9FFFBF5F2FFFAF5F1FFFAF4F0FFFAF4EFFFFAF2EEFFFAF1
          EDFFF8F1ECFFF8F0EBFFF8F0EAFFD5B6ADFF00000011000000003E5803AD5D81
          05FF5C8004FF5B7F04FF5A7E03FF5A7D03FF587C02FF577B02FF567902FF5679
          01FF557800FF537700FF547700FF537600FF537600FF385000AD5E8306FFFAF6
          F6FF5D8105FFF9F5F3FF5C7F04FFF8F2F1FFF7F2EFFFA7B678FFF7EFEDFFF6EE
          EBFFA6B476FF557801FFF4ECE7FF547700FFF3EAE5FF537600FF5F8406FFFBF7
          F6FF5D8205FFF9F5F4FF5C8004FFF8F4F2FF5A7E03FF597D03FF587C02FFA8B6
          78FFF6EEEBFF567901FFF5EDE8FF537700FFF4EBE6FF537600FF618507FFADBE
          7FFFFBF7F6FFACBD7DFF5B8104FFF9F5F2FF5B7F04FF5A7E03FFA9B879FFF6F1
          EEFF597B03FF557A01FFA6B376FFF5EDE8FFA4B274FF547700FF608606FFFCF8
          F8FF5F8406FFFBF7F6FF5F8206FFFAF5F3FF5C8004FF5B7F04FFF8F3F0FF5A7D
          03FF587C02FF577A02FFF6EEEAFF547801FFF4ECE8FF537700FF618607FFFBFA
          F9FF618507FFFAF8F7FF5D8306FFFAF7F5FF5D8105FF5D8005FFAAB97BFFF8F2
          F0FFF7F2EFFF597C02FFF6EFECFF557A01FFF5EDE9FF557801FF425B05AD6186
          07FF608507FF5F8506FF5F8406FF5E8306FF5E8305FF5D8105FF5D8005FF5B7F
          04FF5A7E03FF577C03FF567B02FF577B02FF567A01FF3A5201AD000000000000
          0006C18F7FFFFEFEFEFFFAF6F3FFFAF5F3FFFBF6F2FFFBF5F1FFFBF5F0FFFBF5
          F0FFFAF4EFFFFAF4EEFFFDF9F8FFDEC3BAFF0000000B00000000000000000000
          0006C49382FFFFFEFEFFFBF7F4FFFBF6F4FFFBF6F4FFFCF6F3FFFCF6F3FFFCF4
          F2FFFBF5F1FFFBF5F0FFFDFBF9FFBF8C7BFF0000000B00000000000000000000
          0005C79985FFFFFEFEFFFCF8F7FFFCF8F6FFFCF7F5FFFCF7F5FFFBF6F4FFFBF6
          F4FFFCF6F3FFFCF6F2FFFDFCFAFFC28F7FFF0000000A00000000000000000000
          0004C99A89FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFEFFFEFE
          FDFFFEFEFDFFFEFDFDFFFEFDFDFFC49382FF0000000800000000000000000000
          0002977567C0CA9C8BFFCA9C8BFFC99C8AFFC99B89FFC99B8AFFCA9A88FFC89A
          88FFC99987FFC79887FFC89886FF927163C20000000500000000000000000000
          0001000000020000000300000004000000040000000500000005000000050000
          0006000000060000000600000006000000050000000100000000}
        OptionsImage.Layout = blGlyphBottom
        PaintStyle = bpsGlyph
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl1Item1: TdxLayoutItem
        Parent = dxLayoutControl1Group3
        CaptionOptions.Visible = False
        Control = ChkGbxFechas
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item2: TdxLayoutItem
        Parent = dxLayoutControl1Group1
        CaptionOptions.Text = 'dxCheckGroupBox1'
        CaptionOptions.Visible = False
        Control = ChkGbxEquipos
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Item3: TdxLayoutItem
        Parent = dxLayoutControl1Group1
        CaptionOptions.Text = 'dxCheckGroupBox1'
        CaptionOptions.Visible = False
        Control = ChkGbxEmpleado
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        Index = 1
        AutoCreated = True
      end
      object dxLayoutControl1Item4: TdxLayoutItem
        Parent = dxLayoutControl1Group2
        AlignHorz = ahCenter
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnConsulta
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group_Root
        Index = 0
        AutoCreated = True
      end
      object dxLayoutControl1Item5: TdxLayoutItem
        Parent = dxLayoutControl1Group2
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnExcel
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControl1Group3
        LayoutDirection = ldHorizontal
        Index = 1
        AutoCreated = True
      end
    end
  end
  object GBx2: TcxGroupBox
    Left = 0
    Top = 161
    Align = alClient
    PanelStyle.Active = True
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 153
    ExplicitHeight = 296
    Height = 319
    Width = 862
    object cxGrid1: TcxGrid
      Left = 2
      Top = 2
      Width = 858
      Height = 315
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 292
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsConsulta
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Id Equipo'
          DataBinding.FieldName = 'sIdInsumo'
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'No. Serie'
          DataBinding.FieldName = 'sNumeroSerie'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Equipo'
          DataBinding.FieldName = 'descripcion'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGrid1DBTableView1Column4: TcxGridDBColumn
          Caption = 'Modelo'
          DataBinding.FieldName = 'sModelo'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGrid1DBTableView1Column5: TcxGridDBColumn
          Caption = 'Marca'
          DataBinding.FieldName = 'sIdMarca'
          HeaderAlignmentHorz = taCenter
          Width = 90
        end
        object cxGrid1DBTableView1Column6: TcxGridDBColumn
          Caption = 'Ficha Empleado'
          DataBinding.FieldName = 'sIdEmpleado'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGrid1DBTableView1Column7: TcxGridDBColumn
          Caption = 'Nombre Completo'
          DataBinding.FieldName = 'NombreCompleto'
          HeaderAlignmentHorz = taCenter
          Width = 200
        end
        object cxGrid1DBTableView1Column8: TcxGridDBColumn
          Caption = 'Puesto'
          DataBinding.FieldName = 'puesto'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid1DBTableView1Column9: TcxGridDBColumn
          Caption = 'Cantidad'
          DataBinding.FieldName = 'dCantidad'
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxGrid1DBTableView1Column10: TcxGridDBColumn
          Caption = 'Fecha de Asignacion'
          DataBinding.FieldName = 'dFecha_Recepcion'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGrid1DBTableView1Column11: TcxGridDBColumn
          Caption = 'Fecha de Devoluci'#243'n'
          DataBinding.FieldName = 'dFecha_Remocion'
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGrid1DBTableView1Column12: TcxGridDBColumn
          Caption = 'Nombre Entrega'
          DataBinding.FieldName = 'sNombreEntrega'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid1DBTableView1Column13: TcxGridDBColumn
          Caption = 'Nombre Recibe'
          DataBinding.FieldName = 'sNombreRecibe'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
        object cxGrid1DBTableView1Column14: TcxGridDBColumn
          Caption = 'Nombre Autoriza'
          DataBinding.FieldName = 'sNombreAutorizacion'
          HeaderAlignmentHorz = taCenter
          Width = 100
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object QrEquipos: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT  i.IID,i.sIdInsumo,substring(i.mDescripcion, 1, 200) as m' +
        'Descripcion,i.sNumeroserie,f.sDescripcion as familia'
      'FROM insumos i'
      'inner join familias f'
      'on(i.sIdGrupo=f.sIdFamilia)'
      'WHERE'
      ' f.iAplicaEquipo="Si" ORDER BY f.sDescripcion,i.sIdInsumo')
    Params = <>
    Left = 368
    Top = 232
  end
  object dsEquipos: TDataSource
    DataSet = QrEquipos
    Left = 376
    Top = 240
  end
  object QrEmpleados: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'select e.sidEMpleado,CONCAT(e.sNombreCompleto,'#39' '#39',e.sApellidoPat' +
        'erno,'#39' '#39',e.sApellidoMaterno) as NombreCompleto,'
      'ccp.CodigoCargo,'
      'ccp.titulocargo as DescripcionPuesto,'
      'ree.sDescripcion as Estatus,'
      'dp.titulodepartamento as Departamento,'
      'rp.sDescripcion as Profesion,'
      ''
      '(select min(hab.dFecha) as Alta from rh_historialaltasbajas hab'
      'where hab.sIdEmpleado = e.sIdEmpleado '
      'and hab.sTipo = '#39'Alta'#39') as dFechaInicioLabores,'
      ''
      
        '(select max(hab2.dFecha) as Baja from rh_historialaltasbajas hab' +
        '2'
      'where hab2.sIdEmpleado = e.sIdEmpleado'
      'and hab2.sTipo = '#39'Baja'#39') as dFechaTerminoLabores'
      ' '
      'from empleados e'
      'left join nuc_cargo ccp'
      'on(ccp.IdCargo=e.iId_Puesto)'
      'left join rh_estatusempleados ree'
      'on(ree.iIdEstatus=e.iIdEstatus)'
      'left join nuc_departamento dp'
      'on(dp.iddepartamento=e.iddepartamento)'
      'left join rh_profesiones rp'
      'on(rp.iIdProfesiones=e.iIdProfesiones)'
      ''
      'order by e.idorganizacion, e.iddepartamento, NombreCompleto')
    Params = <>
    Left = 424
    Top = 232
  end
  object dsEmpleados: TDataSource
    DataSet = QrEmpleados
    Left = 424
    Top = 256
  end
  object QrConsulta: TZReadOnlyQuery
    Connection = connection.zConnection
    SQL.Strings = (
      
        'SELECT m.*, CONCAT(e.sNombreCompleto,'#39' '#39',e.sApellidoPaterno,'#39' '#39',' +
        ' e.sApellidoMaterno) as NombreCompleto,  '
      
        'eq.sIdInsumo,eq.mDescripcion as descripcion, eq.sNumeroSerie,eq.' +
        'sModelo,eq.sIdMarca, '
      'eq.sMedida,cp.CodigoCargo,cp.titulocargo as puesto '
      'FROM con_equiposporempleado as m'
      'inner join empleados as e '
      'on (e.sIdEmpleado = m.sIdEmpleado)'
      'left join insumos as eq '
      'on (eq.iId = m.iIdEquipo)'
      'left join nuc_cargo as cp '
      'on (e.iId_Puesto = cp. IdCargo)'
      'WHERE '
      
        #9'(:Empleado=-1 or (:Empleado<>-1 and m.sIdEmpleado = :Empleado))' +
        ' AND'
      '    (:Equipo=-1 or (:Equipo<>-1 and eq.sIdInsumo=:Equipo)) AND'
      
        '    (:FechaI=-1 or (:FechaI<>-1 and m.dFecha_Recepcion between :' +
        'FechaI and :FechaT))')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Empleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Equipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaT'
        ParamType = ptUnknown
      end>
    Left = 536
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Empleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Equipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FechaT'
        ParamType = ptUnknown
      end>
  end
  object dsConsulta: TDataSource
    DataSet = QrConsulta
    Left = 568
    Top = 256
  end
end
