unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  Tfrm_calculadora = class(TForm)
    btn_0: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_ponto: TButton;
    btn_igual: TButton;
    btn_multiplicar: TButton;
    btn_subtrair: TButton;
    btn_somar: TButton;
    btn_dividir: TButton;
    caixa_botoes: TLayout;
    caixa_topo: TLayout;
    lb_operador: TLabel;
    lb_numero1: TLabel;
    lb_numero2: TLabel;
    brn_apagar: TButton;
    btn_limpar: TButton;
    procedure btn_subtrairClick(Sender: TObject);
    procedure btn_somarClick(Sender: TObject);
    procedure btn_multiplicarClick(Sender: TObject);
    procedure btn_dividirClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure Adiciona_numero(numero: string);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
    procedure brn_apagarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_calculadora: Tfrm_calculadora;

implementation

{$R *.fmx}

procedure Tfrm_calculadora.Adiciona_numero(numero: string);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := lb_numero1.Text + numero;
  end
  else
  begin
    lb_numero2.Text := lb_numero2.Text + numero;
  end;
end;

procedure Tfrm_calculadora.brn_apagarClick(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_numero1.Text := copy(lb_numero1.Text, 0, length(lb_numero1.Text) - 1);
  end
  else
  begin
    lb_numero2.Text := copy(lb_numero2.Text, 0, length(lb_numero2.Text) - 1);
  end;
end;

procedure Tfrm_calculadora.btn_0Click(Sender: TObject);
begin
  Adiciona_numero('0');
end;

procedure Tfrm_calculadora.btn_1Click(Sender: TObject);
begin
  Adiciona_numero('1');
end;

procedure Tfrm_calculadora.btn_2Click(Sender: TObject);
begin
  Adiciona_numero('2');
end;

procedure Tfrm_calculadora.btn_3Click(Sender: TObject);
begin
  Adiciona_numero('3');
end;

procedure Tfrm_calculadora.btn_4Click(Sender: TObject);
begin
  Adiciona_numero('4');
end;

procedure Tfrm_calculadora.btn_5Click(Sender: TObject);
begin
  Adiciona_numero('5');
end;

procedure Tfrm_calculadora.btn_6Click(Sender: TObject);
begin
  Adiciona_numero('6');
end;

procedure Tfrm_calculadora.btn_7Click(Sender: TObject);
begin
  Adiciona_numero('7');
end;

procedure Tfrm_calculadora.btn_8Click(Sender: TObject);
begin
  Adiciona_numero('8');
end;

procedure Tfrm_calculadora.btn_9Click(Sender: TObject);
begin
  Adiciona_numero('9');
end;

procedure Tfrm_calculadora.btn_dividirClick(Sender: TObject);
begin
  lb_operador.Text := '/';
  btn_somar.Enabled := true;
  btn_subtrair.Enabled := true;
  btn_dividir.Enabled := false;
  btn_multiplicar.Enabled := true;
end;

procedure Tfrm_calculadora.btn_igualClick(Sender: TObject);
var
  valor1, valor2: double;
  operador: char;
begin
  valor1 := StrToFloat(lb_numero1.Text);
  valor2 := StrToFloat(lb_numero2.Text);

  // usando switch case
  operador := lb_operador.Text[1];
  case operador of
    '+':
      begin
        ShowMessage((valor1 + valor2).ToString);
      end;
    '-':
      begin
        ShowMessage((valor1 - valor2).ToString);
      end;
    '*':
      begin
        ShowMessage((valor1 * valor2).ToString);
      end;
    '/':
      begin
        ShowMessage((valor1 / valor2).ToString);
      end;
  end;

  lb_operador.Text := '.';
  lb_numero1.Text := '';
  lb_numero2.Text := '';
  btn_somar.Enabled := true;
  btn_subtrair.Enabled := true;
  btn_dividir.Enabled := true;
  btn_multiplicar.Enabled := true;
end;

procedure Tfrm_calculadora.btn_limparClick(Sender: TObject);
begin
  lb_operador.Text := '.';
  lb_numero1.Text := '';
  lb_numero2.Text := '';
  btn_somar.Enabled := true;
  btn_subtrair.Enabled := true;
  btn_dividir.Enabled := true;
  btn_multiplicar.Enabled := true;
end;

procedure Tfrm_calculadora.btn_multiplicarClick(Sender: TObject);
begin
  lb_operador.Text := '*';
  btn_somar.Enabled := true;
  btn_subtrair.Enabled := true;
  btn_dividir.Enabled := true;
  btn_multiplicar.Enabled := false;
end;

procedure Tfrm_calculadora.btn_pontoClick(Sender: TObject);
begin
  Adiciona_numero(',');
end;

procedure Tfrm_calculadora.btn_somarClick(Sender: TObject);
begin
  lb_operador.Text := '+';
  btn_somar.Enabled := false;
  btn_subtrair.Enabled := true;
  btn_dividir.Enabled := true;
  btn_multiplicar.Enabled := true;
end;

procedure Tfrm_calculadora.btn_subtrairClick(Sender: TObject);
begin
  lb_operador.Text := '-';
  btn_somar.Enabled := true;
  btn_subtrair.Enabled := false;
  btn_dividir.Enabled := true;
  btn_multiplicar.Enabled := true;
end;

end.
