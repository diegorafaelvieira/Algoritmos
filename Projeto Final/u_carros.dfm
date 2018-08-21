object fr_carros: Tfr_carros
  Left = 222
  Top = 76
  Width = 1143
  Height = 813
  Caption = ':.Controle de Lojas.:'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object gb_dados: TGroupBox
    Left = 8
    Top = 8
    Width = 929
    Height = 657
    Caption = 'I DADOS DO CARRO I'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 32
      Width = 56
      Height = 16
      Caption = 'Chassi :'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 440
      Top = 32
      Width = 49
      Height = 16
      Caption = 'Placa :'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 40
      Top = 96
      Width = 47
      Height = 16
      Caption = 'Carro :'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 40
      Top = 168
      Width = 52
      Height = 16
      Caption = 'Marca :'
    end
    object Label5: TLabel
      Left = 40
      Top = 232
      Width = 136
      Height = 16
      Caption = 'Ano de fabrica'#231#227'o :'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 40
      Top = 312
      Width = 92
      Height = 16
      Caption = 'Ano modelo :'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 40
      Top = 392
      Width = 33
      Height = 16
      Caption = 'Cor :'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 40
      Top = 472
      Width = 50
      Height = 16
      Caption = 'Pre'#231'o :'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 360
      Top = 472
      Width = 79
      Height = 16
      Caption = 'Opcionais :'
      FocusControl = DBMemo1
    end
    object Label10: TLabel
      Left = 72
      Top = 704
      Width = 52
      Height = 16
      Caption = 'loj_des'
      FocusControl = DBEdit9
    end
    object Label11: TLabel
      Left = 40
      Top = 576
      Width = 39
      Height = 16
      Caption = 'Loja :'
    end
    object DBEdit1: TDBEdit
      Left = 40
      Top = 48
      Width = 264
      Height = 24
      DataField = 'car_chassi'
      DataSource = dm.ds_carros
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 432
      Top = 48
      Width = 134
      Height = 24
      DataField = 'car_placa'
      DataSource = dm.ds_carros
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 40
      Top = 120
      Width = 654
      Height = 24
      DataField = 'car_carro'
      DataSource = dm.ds_carros
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 40
      Top = 256
      Width = 134
      Height = 24
      DataField = 'car_anof'
      DataSource = dm.ds_carros
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 40
      Top = 344
      Width = 134
      Height = 24
      DataField = 'car_anom'
      DataSource = dm.ds_carros
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 40
      Top = 424
      Width = 654
      Height = 24
      DataField = 'car_cor'
      DataSource = dm.ds_carros
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 40
      Top = 496
      Width = 134
      Height = 24
      DataField = 'car_preco'
      DataSource = dm.ds_carros
      TabOrder = 6
    end
    object DBMemo1: TDBMemo
      Left = 360
      Top = 488
      Width = 321
      Height = 89
      DataField = 'car_opcionais'
      DataSource = dm.ds_carros
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 72
      Top = 728
      Width = 654
      Height = 24
      DataField = 'loj_des'
      DataSource = dm.ds_carros
      TabOrder = 8
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 40
      Top = 192
      Width = 401
      Height = 24
      DataField = 'mar_des'
      DataSource = dm.ds_carros
      KeyField = 'mar_des'
      ListField = 'mar_des'
      ListSource = dm.ds_marcas
      TabOrder = 9
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 40
      Top = 608
      Width = 297
      Height = 24
      DataField = 'loj_des'
      DataSource = dm.ds_carros
      KeyField = 'loj_des'
      ListField = 'loj_des'
      ListSource = dm.ds_loja
      TabOrder = 10
    end
  end
  object gb_controle: TGroupBox
    Left = 8
    Top = 680
    Width = 1113
    Height = 89
    Caption = 'I CONTROLES I'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object gb_navegacao: TDBNavigator
      Left = 112
      Top = 24
      Width = 852
      Height = 49
      Cursor = crHandPoint
      DataSource = dm.ds_carros
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 944
    Top = 8
    Width = 177
    Height = 657
    TabOrder = 2
    object bt_novo: TBitBtn
      Left = 16
      Top = 96
      Width = 145
      Height = 49
      Cursor = crHandPoint
      Caption = '&Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bt_novoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object bt_gravar: TBitBtn
      Left = 16
      Top = 224
      Width = 145
      Height = 49
      Cursor = crHandPoint
      Caption = '&Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bt_gravarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
        33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
        D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
        BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
        EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
        BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
        D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object bt_cancelar: TBitBtn
      Left = 16
      Top = 384
      Width = 145
      Height = 49
      Cursor = crHandPoint
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bt_cancelarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bt_excluir: TBitBtn
      Left = 16
      Top = 536
      Width = 145
      Height = 49
      Cursor = crHandPoint
      Caption = '&Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = bt_excluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
end
