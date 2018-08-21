object dm: Tdm
  OldCreateOrder = False
  Left = 729
  Top = 235
  Height = 414
  Width = 382
  object picareta: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=..\Projeto Final\PI' +
      'CARETA.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 152
    Top = 24
  end
  object marcas: TADOTable
    Active = True
    Connection = picareta
    CursorType = ctStatic
    TableName = 'Marcas'
    Left = 40
    Top = 112
    object marcasmar_des: TWideStringField
      FieldName = 'mar_des'
      Size = 50
    end
  end
  object carros: TADOTable
    Active = True
    Connection = picareta
    CursorType = ctStatic
    TableName = 'Carros'
    Left = 152
    Top = 112
    object carroscar_chassi: TWideStringField
      FieldName = 'car_chassi'
    end
    object carroscar_placa: TWideStringField
      FieldName = 'car_placa'
      Size = 10
    end
    object carroscar_carro: TWideStringField
      FieldName = 'car_carro'
      Size = 50
    end
    object carrosmar_des: TWideStringField
      FieldName = 'mar_des'
      Size = 50
    end
    object carroscar_anof: TIntegerField
      FieldName = 'car_anof'
    end
    object carroscar_anom: TIntegerField
      FieldName = 'car_anom'
    end
    object carroscar_cor: TWideStringField
      FieldName = 'car_cor'
      Size = 50
    end
    object carroscar_preco: TBCDField
      FieldName = 'car_preco'
      Precision = 19
    end
    object carroscar_opcionais: TMemoField
      FieldName = 'car_opcionais'
      BlobType = ftMemo
    end
    object carrosloj_des: TWideStringField
      FieldName = 'loj_des'
      Size = 50
    end
  end
  object loja: TADOTable
    Active = True
    Connection = picareta
    CursorType = ctStatic
    TableName = 'Lojas'
    Left = 264
    Top = 112
    object lojaloj_des: TWideStringField
      FieldName = 'loj_des'
      Size = 50
    end
    object lojaloj_end: TWideStringField
      FieldName = 'loj_end'
      Size = 50
    end
    object lojaloj_cid: TWideStringField
      FieldName = 'loj_cid'
      Size = 50
    end
    object lojaloj_cep: TWideStringField
      FieldName = 'loj_cep'
      Size = 10
    end
    object lojaloj_gerente: TWideStringField
      FieldName = 'loj_gerente'
      Size = 50
    end
  end
  object ds_marcas: TDataSource
    DataSet = marcas
    Left = 40
    Top = 200
  end
  object ds_carros: TDataSource
    DataSet = carros
    Left = 160
    Top = 200
  end
  object ds_loja: TDataSource
    DataSet = loja
    Left = 272
    Top = 200
  end
  object q_consulta: TADOQuery
    Connection = picareta
    Parameters = <>
    Left = 88
    Top = 296
  end
  object ds_qconsulta: TDataSource
    DataSet = q_consulta
    Left = 160
    Top = 296
  end
end
