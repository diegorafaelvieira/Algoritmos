unit u_projetofinal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Menus;

type
  Tfr_menu = class(TForm)
    MainMenu1: TMainMenu;
    CONTROLE1: TMenuItem;
    Marcas1: TMenuItem;
    Lojas1: TMenuItem;
    Carros1: TMenuItem;
    CONSULTAS1: TMenuItem;
    CarrosporMarca1: TMenuItem;
    CarrosporAno1: TMenuItem;
    CarrosporPreo1: TMenuItem;
    CarrosporLoja1: TMenuItem;
    RELATRIOS1: TMenuItem;
    Lojas2: TMenuItem;
    Carros2: TMenuItem;
    FINALIZAR1: TMenuItem;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_menu: Tfr_menu;

implementation

{$R *.dfm}

end.
