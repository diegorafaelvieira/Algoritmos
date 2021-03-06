unit u_carros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons;

type
  Tfr_carros = class(TForm)
    gb_dados: TGroupBox;
    gb_controle: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    gb_navegacao: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox1: TGroupBox;
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
  fr_carros: Tfr_carros;

implementation

uses u_picareta, u_ajuda, u_loja;

{$R *.dfm}

procedure Tfr_carros.bt_novoClick(Sender: TObject);
begin
   // Programa��o para controlar os objetos
   // Habilitando objetos
   gb_dados.Enabled := true;
   bt_gravar.Enabled := true;
   bt_cancelar.Enabled := true;

   // Desabilitando os objetos
   bt_novo.Enabled := false;
   bt_excluir.Enabled := false;
   gb_navegacao.Enabled := false;

  // Programa��o para adicionar um novo registro
  dm.carros.Append;
  dbedit1.SetFocus;
end;

procedure Tfr_carros.bt_gravarClick(Sender: TObject);
begin
  // Programa��o para controlar os objetos
   // Desabilitando objetos
   gb_dados.Enabled := false;
   bt_gravar.Enabled := false;
   bt_cancelar.Enabled := false;

   // Habilitando os objetos
   bt_novo.Enabled := true;
   bt_excluir.Enabled := true;
   gb_navegacao.Enabled := true;

  dm.carros.Post;
  dm.carros.Refresh;
  application.MessageBox('Dados Gravados com Sucesso!', 'Informa��o',mb_ok+mb_iconinformation);
end;

procedure Tfr_carros.bt_cancelarClick(Sender: TObject);
begin
      // Programa��o para controlar os objetos
   // Desabilitando objetos
   gb_dados.Enabled := false;
   bt_gravar.Enabled := false;
   bt_cancelar.Enabled := false;

   // Habilitando os objetos
   bt_novo.Enabled := true;
   bt_excluir.Enabled := true;
   gb_navegacao.Enabled := true;

  dm.carros.Cancel;
end;

procedure Tfr_carros.bt_excluirClick(Sender: TObject);
begin
    if (dm.carros.RecordCount > 0)
  then begin
         if (application.MessageBox('Confirma Exclus�o?', 'Pergunta',mb_yesno+mb_iconquestion)=id_yes)
         then begin
                dm.carros.Delete;
                dm.carros.Refresh;
                application.MessageBox('Dados Excluidos com Sucesso!', 'Informa��o',mb_ok+mb_iconinformation);
              end;
       end
   else begin
          application.MessageBox('A��o Inv�lida!', 'Informa��o',mb_ok+mb_iconinformation);
        end;

end;

procedure Tfr_carros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key = vk_F1)
  Then fr_ajuda.show;


  If (key = vk_F2)
  Then fr_loja.show;

end;

end.
