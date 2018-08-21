object fr_conspreco: Tfr_conspreco
  Left = 216
  Top = 211
  Width = 896
  Height = 563
  Caption = '.: Consulta de Carros por Pre'#231'o :.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 232
    Top = 16
    Width = 385
    Height = 185
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 117
      Height = 24
      Caption = 'Pre'#231'o M'#237'nimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 208
      Top = 32
      Width = 122
      Height = 24
      Caption = 'Pre'#231'o M'#225'ximo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ed_campo1: TEdit
      Left = 32
      Top = 64
      Width = 105
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object ed_campo2: TEdit
      Left = 216
      Top = 64
      Width = 105
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 88
      Top = 128
      Width = 185
      Height = 33
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 232
    Width = 849
    Height = 281
    Caption = 'Resultado da Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object dbg_dados: TDBGrid
      Left = 16
      Top = 24
      Width = 825
      Height = 249
      DataSource = dm.ds_qconsulta
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
    end
  end
end
