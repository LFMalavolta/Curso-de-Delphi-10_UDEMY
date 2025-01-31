unit Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TCad_Usuarios = class(TForm)
    lb_ca_usuarios: TLabel;
    btn_salvar: TButton;
    SpeedButton1: TSpeedButton;
    btn_deletar: TButton;
    btn_editar: TButton;
    lb_nome: TLabel;
    lb_valor: TLabel;
    lb_sobrenome: TLabel;
    lb_valor_total: TLabel;
    btn_calcular: TButton;
    txt_nome: TEdit;
    txt_sobrenome: TEdit;
    txt_endereco: TEdit;
    txt_valor1: TEdit;
    txt_valor2: TEdit;
    txt_total: TEdit;
    lb_valor2: TLabel;
    lb_endereco: TLabel;
    lb_valor1: TLabel;
    btn_tela2: TButton;
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_calcularClick(Sender: TObject);
    procedure btn_tela2Click(Sender: TObject);
  private
    nome, sobrenome, endereco: string;
    valor: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_Usuarios: TCad_Usuarios;

implementation

{$R *.dfm}

uses Tela2;

procedure TCad_Usuarios.btn_calcularClick(Sender: TObject);
var
  valor1, valor2, total, media: Double;
  cont: integer;
begin
  valor1 := strToFloat(txt_valor1.Text);
  valor2 := strToFloat(txt_valor2.Text);

  total := valor1 + valor2;
  txt_total.Text := total.ToString;

  // IF e ELSE
  media := 60;
  if (total >= media) AND (total <= 100) then
  begin
    ShowMessage(Format('Aluno aprovado! Nota: %s', [total.ToString]));
  end
  else
  begin
    ShowMessage(Format('Aluno reprovado! Nota: %s', [total.ToString]));
  end;

  // la�o FOR
  for cont := 1 to 5 do
  begin
    // ShowMessage(cont.ToString);
  end;

  // loop WHILE
  cont := 1;
  while (cont <= 5) do
  begin
    // ShowMessage(cont.ToString);
    inc(cont);
  end;

end;

procedure TCad_Usuarios.btn_deletarClick(Sender: TObject);
begin
  txt_nome.Text := '';
  txt_sobrenome.Text := '';
  txt_endereco.Text := '';
end;

procedure TCad_Usuarios.btn_editarClick(Sender: TObject);
begin
  lb_valor.Caption := Format('%s %s %s', [nome, sobrenome, endereco]);
end;

procedure TCad_Usuarios.btn_salvarClick(Sender: TObject);
begin
  nome := 'Lorenzo';
  sobrenome := 'Malavolta';
  endereco := 'Sao Leopoldo';

  txt_nome.Text := nome;
  txt_sobrenome.Text := sobrenome;
  txt_endereco.Text := endereco;
end;

procedure TCad_Usuarios.btn_tela2Click(Sender: TObject);
begin
    frm_tela2 := Tfrm_tela2.Create(self);
    frm_tela2.ShowModal;
end;

procedure TCad_Usuarios.SpeedButton1Click(Sender: TObject);
begin
  valor := 23;
  lb_valor.Caption := valor.ToString;
end;

end.
