program Project1;

uses
  Vcl.Forms,
  View.principal in 'View.principal.pas' {Form1},
  pessoa in 'pessoa.pas',
  contaBancaria in 'contaBancaria.pas',
  funcoesdata in 'funcoesdata.pas',
  utils in 'utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
