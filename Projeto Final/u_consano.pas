unit u_consano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  Tfr_consano = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ed_campo1: TEdit;
    ed_campo2: TEdit;
    Button1: TButton;
    GroupBox2: TGroupBox;
    dbg_dados: TDBGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_consano: Tfr_consano;

implementation

uses u_picareta;

{$R *.dfm}

procedure Tfr_consano.Button1Click(Sender: TObject);
begin
    // verificando se campo do filtro está preenchido
  if (ed_campo1.Text <> '')
  then begin
         // Executando a programação SQL
         dm.q_consulta.close;
         dm.q_consulta.sql.clear;
         dm.q_consulta.sql.text := 'select * from carros where car_anof >= ' + Ed_campo1.text + ' and car_anof <= ' + ed_campo2.text;
         dm.q_consulta.open;

         // controlando se encontrou ou não
         if (dm.q_consulta.recordcount = 0)
         then begin
                dbg_dados.Visible := false;
                application.MessageBox('Dados Não Encontrados!', 'Atenção', mb_ok+mb_iconinformation);
                ed_campo1.SetFocus;
              end
         else begin
                dbg_dados.Visible := true;
              end;
       end
  else begin
         application.MessageBox('Dados Inválidos!', 'Atenção', mb_ok+mb_iconerror);
         ed_campo1.SetFocus;
       end;
end;

end.
