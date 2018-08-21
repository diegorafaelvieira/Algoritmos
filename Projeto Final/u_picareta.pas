unit u_picareta;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdm = class(TDataModule)
    picareta: TADOConnection;
    marcas: TADOTable;
    carros: TADOTable;
    loja: TADOTable;
    ds_marcas: TDataSource;
    ds_carros: TDataSource;
    ds_loja: TDataSource;
    marcasmar_des: TWideStringField;
    lojaloj_des: TWideStringField;
    lojaloj_end: TWideStringField;
    lojaloj_cid: TWideStringField;
    lojaloj_cep: TWideStringField;
    lojaloj_gerente: TWideStringField;
    carroscar_chassi: TWideStringField;
    carroscar_placa: TWideStringField;
    carroscar_carro: TWideStringField;
    carrosmar_des: TWideStringField;
    carroscar_anof: TIntegerField;
    carroscar_anom: TIntegerField;
    carroscar_cor: TWideStringField;
    carroscar_preco: TBCDField;
    carroscar_opcionais: TMemoField;
    carrosloj_des: TWideStringField;
    q_consulta: TADOQuery;
    ds_qconsulta: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

end.
