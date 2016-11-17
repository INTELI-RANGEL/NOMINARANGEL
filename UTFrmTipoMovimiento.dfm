inherited FrmTipoMovimiento: TFrmTipoMovimiento
  Caption = 'Tipos de movimientos'
  ClientHeight = 319
  ClientWidth = 474
  ExplicitWidth = 482
  ExplicitHeight = 346
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelFiltro: TPanel
    Width = 474
    ExplicitWidth = 474
    inherited LbFiltros: TJvLabel
      Width = 466
      ExplicitWidth = 413
    end
    inherited GroupBoxFiltro: TGroupBox
      Width = 224
      ExplicitWidth = 224
      inherited BtnSearch: TAdvShapeButton
        Left = 168
        Top = 7
        OnClick = BtnSearchClick
        ExplicitLeft = 168
        ExplicitTop = 7
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
        TabOrder = 1
        Visible = True
        Version = '2.9.0.0'
      end
    end
  end
  inherited PanelPrincipal: TPanel
    Width = 474
    Height = 238
    ExplicitWidth = 474
    ExplicitHeight = 238
    inherited DBGridPrincipal: TNextDBGrid
      Width = 472
      Height = 181
      ExplicitWidth = 472
      ExplicitHeight = 181
      object NxDBTextColumn1: TNxDBTextColumn
        DefaultWidth = 309
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nombre'
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
        Position = 0
        SortType = stAlphabetic
        Width = 309
        FieldName = 'nombretipomovimiento'
      end
      object NxDBTextColumn2: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Tipo'
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
        Position = 1
        SortType = stAlphabetic
        FieldName = 'tipomovimiento'
      end
      object NxDBTextColumn3: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Manifiesto'
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
        FieldName = 'manifiesto'
      end
    end
    inherited PanelBarra: TPanel
      Top = 182
      Width = 472
      ExplicitTop = 182
      ExplicitWidth = 472
      inherited Panel1: TPanel
        Width = 339
        ExplicitWidth = 339
        inherited PanelDelete: TPanel
          inherited BtnDelete: TAdvShapeButton
            Enabled = False
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F40000000467414D410000B18E7CFB5193000000206348524D0000870F00008C
              0F0000FD520000814000007D790000E98B00003CE5000019CC733C857700000A
              396943435050686F746F73686F70204943432070726F66696C65000048C79D96
              775454D71687CFBD777AA1CD30D2197A932E3080F42E201D045118660618CA00
              C30C4D6C88A840441111014590A08001A3A148AC88622128A8600F4810506230
              8AA8A86446D64A7C7979EFE5E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E
              2F059602209927E0077A38D3578547D0B1FD0006788001A6003059E9A9BE41EE
              C140242F37177ABAC809FC8BDE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000
              C85FC4E66C4E3A4BC4F9224ECA14A48AED3322A6C6248A194689992F4A50C472
              628E5BE4A59F7D16D951CCEC641E5BC4E29C53D9C96C31F788787B86902362C4
              47C405195C4EA6886F8B58334998CC15F15B716C3287990E008A24B60B38AC78
              119B8898C40F0E7411F1720070A4B82F38E60B1670B204E243B9A4A466F3B971
              F102BA2E4B8F6E6A6DCDA07B723293380281A13F9395C8E4B3E92E29C9A94C5E
              36008B67FE2C19716DE9A2225B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22
              BD0AF8DC3388D6F787EDAFFC52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF
              0F9BE6210024457D6BBFF1C57968E279891708526D8C8D3333338DB81C9691B8
              A0BFEB7F3AFC0D7DF13D23F176BF9787EECA89650A93047471DD58294929423E
              3D3D95C9E2D00DFF3CC4FF38F0AFF3581AC889E5F0393C5144A868CAB8BC3851
              BB796CAE809BC2A37379FFA989FF30EC4F5A9C6B9128F59F0035CA0848DDA002
              E4E73E80A21001127950DCF5DFFBE6830F05E29B17A63AB138F79F05FDFBAE70
              89F891CE8DFB1CE712184C6709F9198B6BE26B09D08000240115C80315A00174
              8121300356C016380237B002F88160100ED602168807C9800F32412ED80C0A40
              11D805F6824A5003EA41236801274007380D2E80CBE03AB809EE800760048C83
              E76006BC01F310046121324481E42155480B3280CC2006640FB9413E5020140E
              454371100F1242B9D016A8082A852AA15AA811FA163A055D80AE4203D03D6814
              9A827E85DEC3084C82A9B032AC0D1BC30CD809F68683E135701C9C06E7C0F9F0
              4EB802AE838FC1EDF005F83A7C071E819FC3B3084088080D51430C1106E282F8
              2111482CC24736208548395287B4205D482F720B1941A69177280C8A82A2A30C
              51B6284F54088A854A436D4015A32A514751EDA81ED42DD4286A06F5094D462B
              A10DD036682FF42A741C3A135D802E4737A0DBD097D077D0E3E837180C8686D1
              C158613C31E19804CC3A4C31E600A615731E338019C3CC62B15879AC01D60EEB
              87656205D802EC7EEC31EC39EC20761CFB1647C4A9E2CC70EEB8081C0F97872B
              C735E1CEE2067113B879BC145E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F
              274813740876846042026133A182D042B844784878452412D589D6C4002297B8
              8958413C4EBC421C25BE23C990F4492EA4489290B4937484749E748FF48A4C26
              6B931DC91164017927B9917C91FC98FC5682226124E125C196D8285125D12E31
              28F142122FA925E924B9563247B25CF2A4E40DC96929BC94B6948B14536A8354
              95D429A961A959698AB4A9B49F74B274B17493F455E94919AC8CB68C9B0C5B26
              5FE6B0CC4599310A42D1A0B85058942D947ACA25CA381543D5A17A5113A845D4
              6FA8FDD4195919D965B2A1B259B255B267644768084D9BE6454BA295D04ED086
              68EF97282F715AC259B26349CB92C12573728A728E721CB942B956B93B72EFE5
              E9F26EF289F2BBE53BE41F29A014F415021432150E2A5C529856A42ADA2AB214
              0B154F28DE578295F4950295D6291D56EA539A555651F6504E55DEAF7C51795A
              85A6E2A892A052A67256654A95A26AAFCA552D533DA7FA8C2E4B77A227D12BE8
              3DF4193525354F35A15AAD5ABFDABCBA8E7A887A9E7AABFA230D8206432356A3
              4CA35B63465355D3573357B359F3BE165E8BA115AFB54FAB576B4E5B473B4C7B
              9B7687F6A48E9C8E974E8E4EB3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF
              80DE4D7D58DF423F5EBF4AFF86016C6069C035386030B014BDD47A296F69DDD2
              614392A193618661B3E1A811CDC8C728CFA8C3E885B1A67184F16EE35EE34F26
              16264926F5260F4C654C5798E6997699FE6AA66FC632AB32BB6D4E367737DF68
              DE69FE7299C132CEB283CBEE5A502C7C2DB659745B7CB4B4B2E45BB6584E5969
              5A455B555B0D33A80C7F4631E38A35DADAD97AA3F569EB77369636029B1336BF
              D81ADA26DA36D94E2ED759CE595EBF7CCC4EDD8E69576B37624FB78FB63F643F
              E2A0E6C074A87378E2A8E1C8766C709C70D2734A703AE6F4C2D9C499EFDCE63C
              E762E3B2DEE5BC2BE2EAE15AE8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3
              C2639DC7794FB4A7B7E76ECF612F652F9657A3D7CC0AAB15EB57F47893BC83BC
              2BBD9FF8E8FBF07DBA7C61DF15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2
              D7F14FF3FF3E0013E01F5015F034D0343037B03788121415D414F426D839B824
              F841886E8830A43B54323432B431742ECC35AC346C6495F1AAF5ABAE872B8473
              C33B23B011A1110D11B3ABDD56EF5D3D1E6911591039B446674DD69AAB6B15D6
              26AD3D132519C58C3A198D8E0E8B6E8AFEC0F463D6316763BC62AA6366582EAC
              7DACE76C4776197B8A63C729E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9F
              E6BA702BB92F133C136A12E612FD128F242E248525B526E392A3934FF1647889
              BC9E149594AC94815483D482D491349BB4BD69337C6F7E433A94BE26BD534015
              FD4CF50975855B85A319F61955196F3343334F664967F1B2FAB2F5B377644FE4
              B8E77CBD0EB58EB5AE3B572D7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38
              BEC963D3D1CD84CD899B7FC833C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B
              0B240AF805C3DB6CB7D56C476DE76EEFDF61BE63FF8E4F85ECC26B452645E545
              1F8A59C5D7BE32FDAAE2AB859DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A9
              74694EE9D81EDF3DED65F4B2C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7
              A273BFE6FE5DFB3F54C657DEA972AE6AAD56AADE513D77807D60F0A0E3C1961A
              E59AA29AF787B887EED67AD4B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D
              0D0A0D450D1F8FF08E8C1C0D3CDAD368D5D8D8A4D454D20C370B9BA78E451EBB
              F98DEB379D2D862DB5ADB4D6A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB
              775ADF55B751DA0ADBA1F6ECF6998EF88E91CEF0CE81532B4E7577D976B57D6F
              F4FD91D36AA7ABCEC89E29394B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8E
              EA7E7071D5C5DB3D013DFD97BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97A
              EA1AE35AC775CBEBED7D167D6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB
              07CE0E3A0C5EB8E57AEBF26DAFDBD7EFACBC333014327477387278E42EFBEEE4
              BDA47B2FEF67DC9F7FB0E921FA61E123A947E58F951ED7FDA8F763EB88E5C899
              51D7D1BE27414F1E8CB1C69EFF94FED387F1FCA7E4A7E513AA138D936693A7A7
              DCA76E3E5BFD6CFC79EAF3F9E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE
              92FF72E1D7E257F2AF8EBC5EF6BA7BD67FF6F19BE437F373856FE5DF1E7DC778
              D7FB3EECFDC47CE607EC878A8F7A1FBB3E797F7AB890BCB0F01BF784F3FBE2E6
              1DC2000000097048597300002E2200002E2201AAE2DD92000009074944415458
              47BD97095054471AC77B40091EE8AE59E326A9286A1913BCB29B68D46C364AAD
              5B1A131543299A281E2B8741209C2A180F3020DE8A0A2E040545454019405054
              1205076186FB50028473380599E3CDDDBDFF47801A15CD266BED54FDAA8FAFDF
              D7FFFEBA5FBF6F04C4E84775BAF9C4C4C48E0804138DFB5F625D035F1944A9BC
              606261D1FA845F663004334AD9FFE3A7D7E91E4AEBEADEEF17400D86A0BE890D
              7A3DD50F00DF3F10184C7F233D53353735D5E765654D2494D2BFF31D5065D06A
              B57A1E9D1103F5F1760C7C2EB01B9E079E3360217ACCC77245A24BBC804BBC00
              B55AADD26A34CFA0D168D43CB03D03FA7FF587E7347DF055D47B56C92F422412
              2909C27F0B8A984AA5EA86887E34A8F7A3D174E3E17EE0A49B077DB23ED096F5
              813EF980A8D50AF854609C020B57E488448C8F409A5AC519944A793304346340
              331E3646FA445B0B9B311A4D0BECFD60897CBD1593B4AAD59A3684AF0DED36B4
              DBB46A751BFCB7A3DE8E793BEF6565197801A90AB95C2993C91E724AE54315C7
              F583F64FDD4DD26E696191AA314FC23589F35F4823EC8D62894A2ACE579526A5
              A86BC4F9AD6AA5B286E338637E86889F316F43EEFDFB2A7E0B92BBBABADA1E77
              75E5700A850802FAC8E1E4F2DC06D17D5549F479260E0D63F927C259C10BE0ED
              6220019703BF633967CE76692B2B2BE0271F7E25BFA0CC47242410505A209174
              121CFDA48EF6F66A8848860021D4F224F3202C6955E93764F7820EB09B5BFDD9
              5510B3D5EFB924C07ED3D79F656EDBC122B7F933D18103327D56562127936570
              4AC50D8E53F68008DC8080BB6525258D042732B1A5B9B9B0B3B3F37B4C1A8173
              C013A9D66A2354325974656A5A677640304BF4F065A77C7CF557FC7728AFF8FB
              3F4322FA52B6FBAB6FEFD8CD6EF9F8B1704F1F762730B0D370EBD61DF88955AB
              54E770D0CFF32002E720E06A5565E543A255A9E21B1B1A7E94CB6421069D6EAF
              4EA70BE8C1600850CAE421E55792DAEEF8EF66679CB7B0B3DF7828E9E1C34534
              26E6168D8DBD4E2F5CB86144BA2C262627EF4418CD70F766C7376F61997E7EAD
              34353549A3501CC441DCDF834A7500FEF743C0E9BADADA7C827D49C05E1CE9E8
              E85880CE0DB822DC51BA01172DC77996C52534657A6F6711EB1DD8BF9D9CE534
              3434455F59B953FFE89137F0D1B7B7FBF2D0EE6ECFAEB2B2E3F9115186346737
              7670C32696E1E1D148E3E3CFEA39CE1BD796277C7BE20AF0C2CDE901FF7B1BEA
              EBB3894AA148146567FBF3F732EEA3E1304C059F82D55AA5D2A124F652C34D37
              2F7672D55A7672DDFA6E1A12729149A50EB0AF025F1A61D75155B323EF64B83E
              79BD23FB6EF51A96EEE85447A3A24EE865B28D18B716D843C43A08E0EB5ED2A6
              A6DB3D0272737276627E93BE8F03849862C0E8EE9696D99253A7ABAE3BB8B0E3
              B6ABD8B12FBF7A4C03F79CA33535F6B0DB80E5462C692DABF0CE3D76422F5C6D
              CF76DBD8B2E4B5F635F4C48903542E5FF1D4F8A5683B364BA5378C05983EFDD9
              3D4AC82B699BDD8BA2A6CD649E969398EFCC599DD4C9294C575A6A0B078BC167
              E0F35E16B6480A3DEE0604B1181B3BE6B578294B586157C30E1D0A6632D9B2A7
              C62E427B230EFFF5170AB8EEE9392CC5714BF1C93726B0D5D8211B42DAA899D9
              36EAECFC161C8C027C39A977DBA64AA2A2EDF6CCFB47ABCB8773B59B3E9C6310
              CE9B5749DDDDB7D3478FE660CC5FC07444F71D3016F5D952A934F957055C7372
              2D0E1BFB365B434C992D11B451427C1821239F97A49C26C4BAC0D4F4603921E1
              DD84045373F38F061A0B11964D5269D2EF11E00B11A378A785D1D1AF159F391F
              7A7FDFA18863567F3DB58D102B8813C0FE56D7E1A3474ABE76BDB6EB8D71F10B
              09B1417FFF19E39F4504262202FF9B80700787C1E7172C8E4EF97439DB377A2C
              432E97C961F2BA9C9C8FCB2E5C5687CC9DC7AC079B19D209D903515321A2FF9C
              BD1401FC4AB613F226565E1D4086E09C98B0CB7FF8E3E1E6D4F43BB1CBEDD814
              9C9BE3849460F2102483D3F9E8F46DC74B13C03B0C2226AB771173C34EF20A8B
              FAE0234DC66677F6F990116C25211D7A42E221E00B30E48904F8F76D01698523
              77AC64B0B1337E65C75E7D3DF2F484A9ECF0883F331F330B3687107509213F62
              BC978290D79F3E88BF2902A7F016B8E22DF85A30A8BB74D23B3179AEEEF6090B
              6C6C1711536B38EE096B655CFCFEA465762C900C625E64305B46045C3D216721
              60A671E89FDD028E4B14E7E63E7113F60D123A380C4D73712F0E1B37198E07B3
              FD16A359ECFC85ECAACD4AE6FCE678664F48229C5BB6A4A62F288FB9A0DC6D39
              999F98F908CC992331632E44900301D3067A0DFB23802FD4157C9783EFDDBBC7
              5F2C237AB1C07B3AB4EAFAF5D792D66CA80819338EF9C2E136C150E6376838F6
              76309B8D10D711729E4E99B2A6F65A7AF1A5A52BD87B38743E84D47E4BCCD481
              A6C3D92A32881E150882D88409CFDC1BBC005CC5497C3E20ACA9AA8AC01F850F
              D039836A3433504E03531E5754BCFFCD98B145F8BBA4FB1B5E5D9EB9004B3244
              990EAAA263C69C6A8D884ACEDCFA2D5B646ACE9610C163C3B06142E1B091693B
              0543981B3147444C1FDD9B30C99E56578FE9BD3D47F11F3DF05E7363633A9F92
              A5B5B7B424CB3B3BBFC2003B7CA97856E06F9AAD4EADFEE2F6DE609F3BB36727
              48C68FCF128FB7CCCAB3B4BC5B346EDC5D8395D5D5EA254BCF04CDFFA7DCDACC
              DC3083107D8EC5C80A3A6BD6695550D03AA7517F2AF818118158E63872A45813
              10B0922A95B33007BFD0E9604955555526C164DE484A0A908C04A333108202C0
              1EFC55DB85F60EB09DDE17EDA3898947E9E5CB47F07D3F84F220150AF7355E4B
              DF97EEE21A9D39736656F9BB5685F4934F6E225FE0938D4D0FE2E276DEB6B64E
              13BD3D395FFCAE559EC6CDED38ADAFFF176CFC425702BF3B3FFC7091BF125F85
              8834942290CA27A94088FA5594574002C21587F645100BF8742AA69728DAD676
              8EDEBE9D84CC4748B3B212E8E3C7DFC3160E4ED2070FA2586A6A1C4B11C6D1EC
              EC182A9385A2FF304F596969426464E4673D07542E974F57735CA186E35430B6
              8126D0081A7AA94759076A019F52D7806A50057E020FC10350614439EA25A018
              14F5528CD4AF122BAF090D0DF534CE4188B4B6D6AAB8A848989F97A72C2A2860
              F962F17F8504E39E202F8F498C815DCCB751DECCC860E16161E5AEAEAE1BFB26
              FF0FE41B376F790E6A960000000049454E44AE426082}
          end
        end
        inherited PanelPrint: TPanel
          inherited BtnPrint: TAdvShapeButton
            OnClick = BtnPrintClick
          end
        end
      end
      inherited Panel2: TPanel
        Left = 342
        ExplicitLeft = 342
      end
    end
    inherited pnlProgress: TPanel
      Left = 65
      Top = 112
      ExplicitLeft = 65
      ExplicitTop = 112
    end
  end
end
