program ProjetoInicial;

uses
  Vcl.Forms,
  Inicial in 'Inicial.pas' {Cad_Usuarios},
  Tela2 in 'Tela2.pas' {frm_tela2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCad_Usuarios, Cad_Usuarios);
  Application.Run;

end.
