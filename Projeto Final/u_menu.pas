unit u_menu;

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
    procedure Marcas1Click(Sender: TObject);
    procedure Lojas1Click(Sender: TObject);
    procedure Carros1Click(Sender: TObject);
    procedure FINALIZAR1Click(Sender: TObject);
    procedure Lojas2Click(Sender: TObject);
    procedure Carros2Click(Sender: TObject);
    procedure CarrosporAno1Click(Sender: TObject);
    procedure CarrosporPreo1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_menu: Tfr_menu;

implementation

uses u_marca, u_loja, u_carros, u_relloja, u_relcarros, u_consano,
  u_conspreco, u_ajuda;

{$R *.dfm}

procedure Tfr_menu.Marcas1Click(Sender: TObject);
begin
  fr_marcas.showmodal;
end;

procedure Tfr_menu.Lojas1Click(Sender: TObject);
begin
   fr_loja.showmodal;
end;

procedure Tfr_menu.Carros1Click(Sender: TObject);
begin
  fr_carros.showmodal;
end;

procedure Tfr_menu.FINALIZAR1Click(Sender: TObject);
begin
 close;
end;

procedure Tfr_menu.Lojas2Click(Sender: TObject);
begin
  fr_rellojas.quickrep1.preview;
  
end;

procedure Tfr_menu.Carros2Click(Sender: TObject);
begin
  fr_relcarros.quickrep1.preview;  
end;

procedure Tfr_menu.CarrosporAno1Click(Sender: TObject);
begin
  fr_consano.showmodal;
end;

procedure Tfr_menu.CarrosporPreo1Click(Sender: TObject);
begin
  fr_conspreco.showmodal;
end;

procedure Tfr_menu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key = vk_F1)
  Then fr_ajuda.show;

end;

end.
