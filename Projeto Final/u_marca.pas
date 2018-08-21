unit u_marca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  Tfr_marcas = class(TForm)
    gb_dados: TGroupBox;
    gb_controles: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    gb_navegacao: TDBNavigator;
    GroupBox3: TGroupBox;
    bt_novo: TBitBtn;
    bt_gravar: TBitBtn;
    bt_cancelar: TBitBtn;
    bt_excluir: TBitBtn;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_excluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fr_marcas: Tfr_marcas;

implementation

uses u_picareta, u_ajuda;

{$R *.dfm}

procedure Tfr_marcas.bt_novoClick(Sender: TObject);
begin
     // Programação para controlar os objetos
   // Habilitando objetos
   gb_dados.Enabled := true;
   bt_gravar.Enabled := true;
   bt_cancelar.Enabled := true;

   // Desabilitando os objetos
   bt_novo.Enabled := false;
   bt_excluir.Enabled := false;
   gb_navegacao.Enabled := false;

  // Programação para adicionar um novo registro
  dm.marcas.Append;
  dbedit1.SetFocus;
end;

procedure Tfr_marcas.bt_gravarClick(Sender: TObject);
begin
  // Programação para controlar os objetos
   // Desabilitando objetos
   gb_dados.Enabled := false;
   bt_gravar.Enabled := false;
   bt_cancelar.Enabled := false;

   // Habilitando os objetos
   bt_novo.Enabled := true;
   bt_excluir.Enabled := true;
   gb_navegacao.Enabled := true;

  dm.marcas.Post;
  dm.marcas.Refresh;
  application.MessageBox('Dados Gravados com Sucesso!', 'Informação',mb_ok+mb_iconinformation);

end;

procedure Tfr_marcas.bt_cancelarClick(Sender: TObject);
begin
     // Programação para controlar os objetos
   // Desabilitando objetos
   gb_dados.Enabled := false;
   bt_gravar.Enabled := false;
   bt_cancelar.Enabled := false;

   // Habilitando os objetos
   bt_novo.Enabled := true;
   bt_excluir.Enabled := true;
   gb_navegacao.Enabled := true;

  dm.marcas.Cancel;
end;

procedure Tfr_marcas.bt_excluirClick(Sender: TObject);
begin
    if (dm.marcas.RecordCount > 0)
  then begin
         if (application.MessageBox('Confirma Exclusão?', 'Pergunta',mb_yesno+mb_iconquestion)=id_yes)
         then begin
                dm.marcas.Delete;
                dm.marcas.Refresh;
                application.MessageBox('Dados Excluidos com Sucesso!', 'Informação',mb_ok+mb_iconinformation);
              end;
       end
   else begin
          application.MessageBox('Ação Inválida!', 'Informação',mb_ok+mb_iconinformation);
        end;
end;

procedure Tfr_marcas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key = vk_F1)
  Then fr_ajuda.show;

end;

end.
