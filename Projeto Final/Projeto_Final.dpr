program Projeto_Final;

uses
  Forms,
  u_menu in 'u_menu.pas' {fr_menu},
  u_picareta in 'u_picareta.pas' {dm: TDataModule},
  u_marca in 'u_marca.pas' {fr_marcas},
  u_loja in 'u_loja.pas' {fr_loja},
  u_carros in 'u_carros.pas' {fr_carros},
  u_relloja in 'u_relloja.pas' {fr_rellojas},
  u_relcarros in 'u_relcarros.pas' {fr_relcarros},
  u_consano in 'u_consano.pas' {fr_consano},
  u_conspreco in 'u_conspreco.pas' {fr_conspreco},
  u_ajuda in 'u_ajuda.pas' {fr_ajuda};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfr_menu, fr_menu);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfr_marcas, fr_marcas);
  Application.CreateForm(Tfr_loja, fr_loja);
  Application.CreateForm(Tfr_carros, fr_carros);
  Application.CreateForm(Tfr_rellojas, fr_rellojas);
  Application.CreateForm(Tfr_relcarros, fr_relcarros);
  Application.CreateForm(Tfr_consano, fr_consano);
  Application.CreateForm(Tfr_conspreco, fr_conspreco);
  Application.CreateForm(Tfr_ajuda, fr_ajuda);
  Application.Run;
end.
