unit u_loja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons;

type
  Tfr_loja = class(TForm)
    gb_dados: TGroupBox;
    gb_controle: TGroupBox;
    gb_navegacao: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
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
  fr_loja: Tfr_loja;

implementation

uses u_picareta, u_ajuda, u_carros;

{$R *.dfm}

procedure Tfr_loja.bt_novoClick(Sender: TObject);
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
  dm.loja.Append;
  dbedit1.SetFocus;
end;

procedure Tfr_loja.bt_gravarClick(Sender: TObject);
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

  dm.loja.Post;
  dm.loja.Refresh;
  application.MessageBox('Dados Gravados com Sucesso!', 'Informação',mb_ok+mb_iconinformation);
end;

procedure Tfr_loja.bt_cancelarClick(Sender: TObject);
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

  dm.loja.Cancel;
end;

procedure Tfr_loja.bt_excluirClick(Sender: TObject);
begin
    if (dm.loja.RecordCount > 0)
  then begin
         if (application.MessageBox('Confirma Exclusão?', 'Pergunta',mb_yesno+mb_iconquestion)=id_yes)
         then begin
                dm.loja.Delete;
                dm.loja.Refresh;
                application.MessageBox('Dados Excluidos com Sucesso!', 'Informação',mb_ok+mb_iconinformation);
              end;
       end
   else begin
          application.MessageBox('Ação Inválida!', 'Informação',mb_ok+mb_iconinformation);
        end;

end;

procedure Tfr_loja.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key = vk_F1)
  Then fr_ajuda.show;



  If (key = vk_F2)
  Then fr_carros.show;

end;

end.
