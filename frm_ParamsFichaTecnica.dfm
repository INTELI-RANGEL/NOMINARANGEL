object FrmParamsFichaTecnica: TFrmParamsFichaTecnica
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 286
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxWizardControl1: TdxWizardControl
    Left = 0
    Top = 0
    Width = 265
    Height = 286
    Buttons.Cancel.Caption = '&Cancelar'
    Buttons.CustomButtons.Buttons = <>
    Buttons.Finish.Caption = '&Imprimir'
    Buttons.Help.Visible = False
    OnButtonClick = dxWizardControl1ButtonClick
    ExplicitWidth = 305
    ExplicitHeight = 273
    object dxWizardControlPage1: TdxWizardControlPage
      Header.Description = 'Elija las opciones a Impirmir'
      Header.Title = 'Impresion de Ficha Tecnica'
      object ChkGrRecurso: TcxCheckGroup
        Left = 0
        Top = 0
        Align = alClient
        Caption = 'Recurso'
        EditValue = ';0,1,2,3,4'
        ParentFont = False
        PopupMenu = pmRecursos
        Properties.Items = <
          item
            Caption = 'PERSONAL'
          end
          item
            Caption = 'EQUIPO'
          end
          item
            Caption = 'HERRAMIENTAS'
          end
          item
            Caption = 'MATERIAL'
          end
          item
            Caption = 'BASICOS'
          end>
        TabOrder = 0
        Height = 152
        Width = 243
      end
    end
  end
  object AnexoC: TfrxReport
    Version = '4.10.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.MDIChild = True
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39453.273154467600000000
    ReportOptions.LastChange = 42485.498104629630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo10OnBeforePrint(Sender: TfrxComponent);'
      'begin                      '
      '   if <Ficha_Tecnica."Unidad"> = '#39'CUADRILLA'#39' then'
      '    begin'
      
        '          memo16.Visible := False;                              ' +
        '                                                                ' +
        '                   '
      '          memo17.Visible := False;'
      '          memo18.Visible := False;'
      '          memo19.Visible := False;'
      
        '          memo10.Font.Style := fsBold ;                         ' +
        '                                                        '
      '          memo15.Font.Style := fsBold ;       '
      '    end'
      '    else'
      
        '    begin                                                       ' +
        '              '
      
        '          memo16.Visible := True;                               ' +
        '                      '
      '          memo17.Visible := True;'
      '          memo18.Visible := True;'
      
        '          memo19.Visible := True;                               ' +
        '       '
      '          memo15.Font.Style := 0;'
      
        '          memo10.Font.Style := 0;                               ' +
        '                                                                ' +
        '                '
      '    end;                  '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                  '
      'end;'
      ''
      'procedure GroupFooter3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    if (<Ficha_Tecnica."Tipo"> = '#39'PERSONAL'#39')  then'
      '     begin'
      '          memo28.Visible := True;'
      '          memo42.Visible := True;               '
      '          memo13.Visible := True;    '
      '          memo13.Visible := True;               '
      '          memo30.Visible := True;              '
      '          memo13.StretchMode := smActualHeight;'
      '          memo13.AutoWidth   := True;'
      '          memo30.StretchMode := smActualHeight;'
      
        '          memo30.AutoWidth   := True;                           ' +
        '                               '
      '     end'
      '     else'
      '     begin'
      '          memo28.Visible := False;'
      '          memo42.Visible := False;               '
      '          memo13.Visible := False;'
      '          memo13.Visible := False;               '
      '          memo30.Visible := False;              '
      '          memo13.StretchMode := smActualHeight;'
      '          memo13.AutoWidth   := False;'
      '          memo30.StretchMode := smActualHeight;'
      
        '          memo30.AutoWidth   := False;                          ' +
        '            '
      '     end;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 128
    Top = 90
    Datasets = <
      item
        DataSet = connection.rpt_contrato
        DataSetName = 'contrato'
      end
      item
        DataSet = dbActividadesxAnexo
        DataSetName = 'dbActividadesxAnexo'
      end
      item
        DataSet = frxFicha_Tecnica
        DataSetName = 'Ficha_Tecnica'
      end
      item
        DataSet = connection.rpt_setup
        DataSetName = 'setup'
      end>
    Variables = <
      item
        Name = ' prueba'
        Value = Null
      end
      item
        Name = 'sumna'
        Value = Null
      end>
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
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 438.425480000000000000
        Width = 740.409927000000000000
        DataSet = frxFicha_Tecnica
        DataSetName = 'Ficha_Tecnica'
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          Left = 6.338590000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          OnBeforePrint = 'Memo10OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Ficha_Tecnica."Id"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 83.929190000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Descripcion'
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[Ficha_Tecnica."Descripcion"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 420.189240000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Unidad'
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."Unidad"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 571.811380000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CostoMN'
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."CostoMN"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 493.323130000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'Cantidad'
          DataSet = frxFicha_Tecnica
          DataSetName = 'Ficha_Tecnica'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."Cantidad"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 664.079160000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<Ficha_Tecnica."Cantidad"> * <Ficha_Tecnica."CostoMN">]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 105.826840000000000000
        Top = 241.889920000000000000
        Width = 740.409927000000000000
        Condition = 'Ficha_Tecnica."sNumeroActividad"'
        object Memo1: TfrxMemoView
          Top = 33.236240000000000000
          Width = 604.724800000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Ficha_Tecnica."DescripcionAnexo"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 52.913420000000000000
          Top = 19.897650000000000000
          Width = 453.543600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Ficha_Tecnica."sNumeroActividad"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Width = 737.007874020000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 7396239
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Descripci'#242'n')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 19.897650000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CLAVE  :')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 610.827150000000000000
          Top = 37.015770000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cantidad :')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 610.606680000000000000
          Top = 22.677180000000000000
          Width = 45.354360000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unidad    :')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 611.606680000000000000
          Top = 52.354360000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Precio U. :')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 671.299212600000000000
          Top = 37.236240000000000000
          Width = 64.401144170000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."CantidadAnexo"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 671.299212600000000000
          Top = 52.574830000000000000
          Width = 64.401144170000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."CostoMNAnexo"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 612.606680000000000000
          Top = 67.692950000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total        :')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 671.299212600000000000
          Top = 67.692950000000000000
          Width = 64.401144170000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."CantidadAnexo"> * <Ficha_Tecnica."CostoMNAnexo"' +
              '>]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 671.150495830000000000
          Top = 21.897650000000000000
          Width = 64.401144170000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."MedidaAnexo"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Top = 86.385900000000000000
          Width = 737.007874020000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 7396239
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'C. Clave                                         Descripci'#242'n')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 419.968770000000000000
          Top = 86.370130000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '        Unidad           Cantidad')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 570.709030000000000000
          Top = 86.370130000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '         Precio U.                  Total')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 18.897650000000000000
        Top = 370.393940000000000000
        Width = 740.409927000000000000
        Condition = 'Ficha_Tecnica."Tipo"'
        object Memo35: TfrxMemoView
          Left = 3.338590000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[Ficha_Tecnica."Tipo"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 26.566943780000000000
        Top = 514.016080000000000000
        Width = 740.409927000000000000
        object Memo21: TfrxMemoView
          Left = 665.574803150000000000
          Top = 0.110233780000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."total"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.110233780000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'TOTAL DE  [Ficha_Tecnica."Tipo"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 215.433210000000000000
        Top = 563.149970000000000000
        Width = 740.409927000000000000
        object Memo58: TfrxMemoView
          Left = 474.133858270000000000
          Top = 111.889773540000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cargos Adicionales')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 474.133858270000000000
          Top = 141.929153390000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Otros Cargos')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 573.031850000000000000
          Top = 163.740260000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            ' Precio Unitario')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 474.189240000000000000
          Top = 22.299212600000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Indirectos')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 474.125984250000000000
          Top = 51.779527560000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Financiamiento')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 474.133858270000000000
          Top = 82.409453700000000000
          Width = 113.385826770000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Utilidad')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 572.693157480000000000
          Top = 7.000000000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Costo Directo')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 587.779527560000000000
          Top = 22.220470000000000000
          Width = 68.031486300000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Indirectos"] % )')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 587.763779530000000000
          Top = 51.795300000000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Financiamiento"] % )')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 587.897637800000000000
          Top = 82.393700790000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Utilidad"] % )')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 587.897637800000000000
          Top = 111.874015750000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Adicional1"] % )')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 671.968503940000000000
          Top = 22.299212600000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dIndirecto"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 671.968503940000000000
          Top = 37.039370080000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[<Ficha_Tecnica."totalPU"> +  <Ficha_Tecnica."dIndirecto">]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 671.968503940000000000
          Top = 51.779527560000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dFinanciamiento"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 671.968503940000000000
          Top = 82.393700790000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dUtilidad"]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 671.968503940000000000
          Top = 111.874015750000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dAdicionales"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 671.968503940000000000
          Top = 7.181102360000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."totalPU"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 587.897637800000000000
          Top = 142.110236220000000000
          Width = 68.031496060000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '( [Ficha_Tecnica."Adicional2"] % )')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 671.968503940000000000
          Top = 127.370078740000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."totalPU"> + <Ficha_Tecnica."dIndirecto"> + <Fic' +
              'ha_Tecnica."dFinanciamiento"> + <Ficha_Tecnica."dUtilidad"> + <F' +
              'icha_Tecnica."dAdicionales">]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 671.968503940000000000
          Top = 142.110236220000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."dOtroAdicional"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 671.818897640000000000
          Top = 163.653543310000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."totalPU"> + <Ficha_Tecnica."dIndirecto"> + <Fic' +
              'ha_Tecnica."dFinanciamiento"> + <Ficha_Tecnica."dUtilidad"> + <F' +
              'icha_Tecnica."dAdicionales"> + <Ficha_Tecnica."dOtroAdicional">]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 572.779527560000000000
          Top = 37.039370080000000000
          Width = 83.149606300000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 671.968503940000000000
          Top = 66.897637800000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."totalPU"> + <Ficha_Tecnica."dIndirecto"> + <Fic' +
              'ha_Tecnica."dFinanciamiento">]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 671.968503940000000000
          Top = 97.133858270000000000
          Width = 64.251968500000000000
          Height = 15.118110240000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<Ficha_Tecnica."totalPU"> + <Ficha_Tecnica."dIndirecto"> + <Fic' +
              'ha_Tecnica."dFinanciamiento"> + <Ficha_Tecnica."dUtilidad">]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 572.913730000000000000
          Top = 67.031540000000000000
          Width = 83.149606300000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 572.913730000000000000
          Top = 97.267780000000000000
          Width = 83.149606300000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 572.779527560000000000
          Top = 127.504020000000000000
          Width = 83.149606300000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Subtotal')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 109.047310000000000000
          Top = 188.976500000000000000
          Width = 559.370440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 3.779530000000000000
        Top = 411.968770000000000000
        Width = 740.409927000000000000
        Condition = 'Ficha_Tecnica."Tipo"'
        Stretched = True
      end
      object GroupFooter3: TfrxGroupFooter
        Height = 15.338590000000000000
        Top = 476.220780000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupFooter3OnBeforePrint'
        Stretched = True
        object Memo28: TfrxMemoView
          Left = 443.614410000000000000
          Top = 0.110233780000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cantidad:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 493.228346460000000000
          Top = 0.110233780000000000
          Width = 64.251968503937000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.4n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Ficha_Tecnica."rendimiento"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 571.842519690000000000
          Top = 0.220470000000000000
          Width = 75.590551181102400000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '      Suma:'
            '      Total:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 665.520100000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<Ficha_Tecnica."Cantidad"> * <Ficha_Tecnica."CostoMN"> ,Mas' +
              'terData1)]'
            '[Ficha_Tecnica."subtotal"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 163.874150000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Left = 565.031850000000000000
          Top = 112.385900000000000000
          Width = 170.078850000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'ANALISIS DE PRECIOS UNITARIOS'
            'LICITACION NO. [contrato."sLicitacion"]'
            'FECHA: [DATE]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 640.622450000000000000
          Top = 98.488250000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ANEXO "H"')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 148.756030000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = 7396239
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 4.000000000000000000
          Width = 136.063001890000000000
          Height = 94.488218270000000000
          ShowHint = False
          Center = True
          DataField = 'bImagen'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Left = 144.176561430000000000
          Top = 33.307020710000000000
          Width = 449.764033390000000000
          Height = 56.692881650000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sDireccion1"] [setup."sDireccion2"]'
            'Tel'#233'fono: [setup."sTelefono"], [setup."sCiudad"]'
            '[setup."sWeb"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 143.976500000000000000
          Top = 3.779530000000000000
          Width = 449.764033390000000000
          Height = 30.236171650000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -23
          Font.Name = 'Britannic Bold'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 594.268090000000000000
          Width = 136.062992130000000000
          Height = 94.488188980000000000
          ShowHint = False
          Center = True
          DataField = 'bImagenCalidad'
          DataSet = connection.rpt_setup
          DataSetName = 'setup'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 60.472480000000000000
        Top = 839.055660000000000000
        Width = 740.409927000000000000
        object Memo9: TfrxMemoView
          Left = 302.821893330000000000
          Top = 44.935066670000000000
          Width = 120.944960000000000000
          Height = 10.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'g. [<Page>] de [TotalPages#]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 510.559370000000000000
          Top = 27.677180000000000000
          Width = 204.094473540000000000
          Height = 14.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[setup."sRepresentante"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 593.606680000000000000
          Top = 41.472480000000000000
          Width = 120.944813540000000000
          Height = 15.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REPRESENTANTE LEGAL')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 253.228510000000000000
          Top = 22.677180000000000000
          Width = 226.771653540000000000
          Height = 17.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[setup."sNombre"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object rxFicha_Tecnica: TRxMemoryData
    FieldDefs = <>
    Left = 160
    Top = 120
    object rxFicha_TecnicasContrato: TStringField
      FieldName = 'sContrato'
    end
    object rxFicha_TecnicasNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
    end
    object rxFicha_TecnicaDescripcionAnexo: TStringField
      DisplayWidth = 250
      FieldName = 'DescripcionAnexo'
      Size = 250
    end
    object rxFicha_TecnicaCantidadAnexo: TFloatField
      FieldName = 'CantidadAnexo'
    end
    object rxFicha_TecnicaMedidaAnexo: TStringField
      FieldName = 'MedidaAnexo'
    end
    object rxFicha_TecnicaCostoMNAnexo: TFloatField
      FieldName = 'CostoMNAnexo'
      currency = True
    end
    object rxFicha_TecnicaCostoDLLAnexo: TFloatField
      FieldName = 'CostoDLLAnexo'
      currency = True
    end
    object rxFicha_TecnicaTipo: TStringField
      FieldName = 'Tipo'
    end
    object rxFicha_TecnicaId: TStringField
      FieldName = 'Id'
    end
    object rxFicha_TecnicaDescripcion: TStringField
      DisplayWidth = 250
      FieldName = 'Descripcion'
      Size = 250
    end
    object rxFicha_TecnicaUnidad: TStringField
      FieldName = 'Unidad'
    end
    object rxFicha_TecnicaCantidad: TFloatField
      FieldName = 'Cantidad'
    end
    object rxFicha_TecnicaCostoMN: TFloatField
      FieldName = 'CostoMN'
      currency = True
    end
    object rxFicha_TecnicaCostoDLL: TFloatField
      FieldName = 'CostoDLL'
      currency = True
    end
    object rxFicha_TecnicaDirectos: TFloatField
      FieldName = 'Directos'
    end
    object rxFicha_TecnicaIndirectos: TFloatField
      FieldName = 'Indirectos'
    end
    object rxFicha_TecnicaFinanciamiento: TFloatField
      FieldName = 'Financiamiento'
    end
    object rxFicha_TecnicaUtilidad: TFloatField
      FieldName = 'Utilidad'
    end
    object rxFicha_TecnicaAdicional1: TFloatField
      FieldName = 'Adicional1'
    end
    object rxFicha_TecnicaAdicional2: TFloatField
      FieldName = 'Adicional2'
    end
    object rxFicha_TecnicaAdicional3: TFloatField
      FieldName = 'Adicional3'
    end
    object rxFicha_Tecnicarendimiento: TFloatField
      FieldName = 'rendimiento'
    end
    object rxFicha_Tecnicasubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object rxFicha_Tecnicatotal: TFloatField
      FieldName = 'total'
    end
    object rxFicha_TecnicatotalPU: TFloatField
      FieldName = 'totalPU'
    end
    object rxFicha_TecnicaEspacio: TStringField
      FieldName = 'Espacio'
    end
    object rxFicha_TecnicaNivel: TIntegerField
      FieldName = 'Nivel'
    end
    object rxFicha_TecnicadIndirecto: TFloatField
      FieldName = 'dIndirecto'
    end
    object rxFicha_TecnicadFinanciamiento: TFloatField
      FieldName = 'dFinanciamiento'
    end
    object rxFicha_TecnicadUtilidad: TFloatField
      FieldName = 'dUtilidad'
    end
    object rxFicha_TecnicadAdicionales: TFloatField
      FieldName = 'dAdicionales'
    end
    object rxFicha_TecnicadOtroAdicional: TFloatField
      FieldName = 'dOtroAdicional'
    end
    object rxFicha_TecnicaCuadrilla: TStringField
      DisplayWidth = 15
      FieldName = 'Cuadrilla'
      Size = 15
    end
    object rxFicha_Tecnicafila: TIntegerField
      FieldName = 'fila'
    end
    object rxFicha_TecnicaRendimiento_paq: TFloatField
      FieldName = 'Rendimiento_paq'
    end
    object rxFicha_TecnicadTotalMN_paq: TFloatField
      FieldName = 'dTotalMN_paq'
    end
  end
  object frxFicha_Tecnica: TfrxDBDataset
    UserName = 'Ficha_Tecnica'
    CloseDataSource = False
    FieldAliases.Strings = (
      'sContrato=sContrato'
      'sNumeroActividad=sNumeroActividad'
      'DescripcionAnexo=DescripcionAnexo'
      'CantidadAnexo=CantidadAnexo'
      'MedidaAnexo=MedidaAnexo'
      'CostoMNAnexo=CostoMNAnexo'
      'CostoDLLAnexo=CostoDLLAnexo'
      'Tipo=Tipo'
      'Id=Id'
      'Descripcion=Descripcion'
      'Unidad=Unidad'
      'Cantidad=Cantidad'
      'CostoMN=CostoMN'
      'CostoDLL=CostoDLL'
      'Directos=Directos'
      'Indirectos=Indirectos'
      'Financiamiento=Financiamiento'
      'Utilidad=Utilidad'
      'Adicional1=Adicional1'
      'Adicional2=Adicional2'
      'Adicional3=Adicional3'
      'rendimiento=rendimiento'
      'subtotal=subtotal'
      'total=total'
      'totalPU=totalPU'
      'Espacio=Espacio'
      'Nivel=Nivel'
      'dIndirecto=dIndirecto'
      'dFinanciamiento=dFinanciamiento'
      'dUtilidad=dUtilidad'
      'dAdicionales=dAdicionales'
      'dOtroAdicional=dOtroAdicional'
      'Cuadrilla=Cuadrilla'
      'fila=fila'
      'Rendimiento_paq=Rendimiento_paq'
      'dTotalMN_paq=dTotalMN_paq')
    DataSet = rxFicha_Tecnica
    BCDToCurrency = False
    Left = 125
    Top = 121
  end
  object pmRecursos: TPopupMenu
    Left = 208
    Top = 136
    object mniMarcar: TMenuItem
      Caption = 'Marcar Todos'
      OnClick = mniMarcarClick
    end
    object mniDesmarcar: TMenuItem
      Caption = 'Desmarcar Todos'
      OnClick = mniDesmarcarClick
    end
  end
  object ActividadesxAnexo: TZQuery
    Connection = connection.zConnection
    SQL.Strings = (
      'Select *,'
      
        'Cast(IFNULL(Sum(dCantidadAnexo * dVentaMN),0) as  DECIMAL(20,2))' +
        ' as SumaMN,'
      
        'Cast(IFNULL(Sum(dCantidadAnexo * dVentaDLL),0) as  DECIMAL(20,2)' +
        ') as SumaDLL,'
      
        'SubStr(mDescripcion, 1, 255) as sDescripcion from actividadesxan' +
        'exo'
      
        'Where sContrato = :contrato And sIdConvenio = :Convenio and swbs' +
        '=:wbs and sNumeroActividad=:Actividad'
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    UpdateMode = umUpdateAll
    WhereMode = wmWhereAll
    Left = 154
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Convenio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'wbs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Actividad'
        ParamType = ptUnknown
      end>
    object ActividadesxAnexodMontoMN: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dMontoMN'
      Calculated = True
    end
    object ActividadesxAnexodMontoDLL: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dMontoDLL'
      Calculated = True
    end
    object ActividadesxAnexosWbsSpace: TStringField
      FieldKind = fkCalculated
      FieldName = 'sWbsSpace'
      Size = 200
      Calculated = True
    end
    object ActividadesxAnexosContrato: TStringField
      FieldName = 'sContrato'
      Required = True
      Size = 15
    end
    object ActividadesxAnexosIdConvenio: TStringField
      FieldName = 'sIdConvenio'
      Required = True
      Size = 5
    end
    object ActividadesxAnexoiNivel: TIntegerField
      FieldName = 'iNivel'
      Required = True
    end
    object ActividadesxAnexosSimbolo: TStringField
      FieldName = 'sSimbolo'
      Required = True
      Size = 1
    end
    object ActividadesxAnexosWbs: TStringField
      FieldName = 'sWbs'
      Required = True
      Size = 100
    end
    object ActividadesxAnexosWbsAnterior: TStringField
      FieldName = 'sWbsAnterior'
      Required = True
      Size = 100
    end
    object ActividadesxAnexosNumeroActividad: TStringField
      FieldName = 'sNumeroActividad'
      Required = True
      Size = 10
    end
    object ActividadesxAnexosTipoActividad: TStringField
      FieldName = 'sTipoActividad'
      Required = True
      Size = 9
    end
    object ActividadesxAnexosEspecificacion: TStringField
      FieldName = 'sEspecificacion'
      Required = True
      Size = 15
    end
    object ActividadesxAnexosActividadAnterior: TStringField
      FieldName = 'sActividadAnterior'
      Required = True
      Size = 10
    end
    object ActividadesxAnexomDescripcion: TMemoField
      FieldName = 'mDescripcion'
      Required = True
      BlobType = ftMemo
    end
    object ActividadesxAnexodFechaInicio: TDateField
      FieldName = 'dFechaInicio'
      Required = True
    end
    object ActividadesxAnexodDuracion: TFloatField
      FieldName = 'dDuracion'
      Required = True
    end
    object ActividadesxAnexodFechaFinal: TDateField
      FieldName = 'dFechaFinal'
      Required = True
    end
    object ActividadesxAnexodPonderado: TFloatField
      FieldName = 'dPonderado'
      Required = True
      DisplayFormat = '##0.0###'
    end
    object ActividadesxAnexodCostoMN: TFloatField
      FieldName = 'dCostoMN'
      Required = True
      currency = True
    end
    object ActividadesxAnexodCostoDll: TFloatField
      FieldName = 'dCostoDll'
      Required = True
      currency = True
    end
    object ActividadesxAnexodVentaMN: TFloatField
      FieldName = 'dVentaMN'
      Required = True
      currency = True
    end
    object ActividadesxAnexodVentaDLL: TFloatField
      FieldName = 'dVentaDLL'
      Required = True
      currency = True
    end
    object ActividadesxAnexolCalculo: TStringField
      FieldName = 'lCalculo'
      Required = True
      Size = 2
    end
    object ActividadesxAnexodCantidadAnexo: TFloatField
      FieldName = 'dCantidadAnexo'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxAnexodCargado: TFloatField
      FieldName = 'dCargado'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxAnexodInstalado: TFloatField
      FieldName = 'dInstalado'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxAnexodExcedente: TFloatField
      FieldName = 'dExcedente'
      Required = True
      DisplayFormat = '###,###,##0.0###'
    end
    object ActividadesxAnexoiColor: TIntegerField
      FieldName = 'iColor'
      Required = True
    end
    object ActividadesxAnexolExtraordinario: TStringField
      FieldName = 'lExtraordinario'
      Required = True
      Size = 2
    end
    object ActividadesxAnexosIdFase: TStringField
      FieldName = 'sIdFase'
      Required = True
      Size = 5
    end
    object ActividadesxAnexoiItemOrden: TStringField
      FieldName = 'iItemOrden'
      Required = True
      Size = 100
    end
    object ActividadesxAnexosMedida: TStringField
      FieldName = 'sMedida'
      Required = True
      Size = 10
    end
    object ActividadesxAnexosAnexo: TStringField
      FieldName = 'sAnexo'
    end
    object ActividadesxAnexoNewSimbol: TStringField
      FieldKind = fkCalculated
      FieldName = 'NewSimbol'
      Calculated = True
    end
    object ActividadesxAnexosDescripcion: TStringField
      FieldName = 'sDescripcion'
      Size = 255
    end
    object ActividadesxAnexosTipoAnexo: TStringField
      FieldName = 'sTipoAnexo'
    end
    object ActividadesxAnexosWbsPU: TStringField
      FieldName = 'sWbsPU'
      Size = 100
    end
    object ActividadesxAnexoSumaMN: TFloatField
      FieldName = 'SumaMN'
      ReadOnly = True
      currency = True
    end
    object ActividadesxAnexoSumaDLL: TFloatField
      FieldName = 'SumaDLL'
      currency = True
    end
  end
  object dbActividadesxAnexo: TfrxDBDataset
    UserName = 'dbActividadesxAnexo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'dMontoMN=dMontoMN'
      'dMontoDLL=dMontoDLL'
      'sWbsSpace=sWbsSpace'
      'sContrato=sContrato'
      'sIdConvenio=sIdConvenio'
      'iNivel=iNivel'
      'sSimbolo=sSimbolo'
      'sWbs=sWbs'
      'sWbsAnterior=sWbsAnterior'
      'sNumeroActividad=sNumeroActividad'
      'sTipoActividad=sTipoActividad'
      'sEspecificacion=sEspecificacion'
      'sActividadAnterior=sActividadAnterior'
      'mDescripcion=mDescripcion'
      'dFechaInicio=dFechaInicio'
      'dDuracion=dDuracion'
      'dFechaFinal=dFechaFinal'
      'dPonderado=dPonderado'
      'dCostoMN=dCostoMN'
      'dCostoDll=dCostoDll'
      'dVentaMN=dVentaMN'
      'dVentaDLL=dVentaDLL'
      'lCalculo=lCalculo'
      'sMedida=sMedida'
      'dCantidadAnexo=dCantidadAnexo'
      'dCargado=dCargado'
      'dInstalado=dInstalado'
      'dExcedente=dExcedente'
      'iColor=iColor'
      'lExtraordinario=lExtraordinario'
      'sIdFase=sIdFase'
      'iItemOrden=iItemOrden')
    DataSet = ActividadesxAnexo
    BCDToCurrency = False
    Left = 192
    Top = 88
  end
  object FormAutoScaler1: TFormAutoScaler
    Left = 192
    Top = 184
    DesignDPI = 96
    DesignHeight = 286
    DesignWidth = 265
    DesignTextHeight = 13
  end
end
