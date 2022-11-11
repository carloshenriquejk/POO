program Project2;

uses
  Vcl.Forms,
  Generics in 'Generics.pas' {Form2},
  validacao in 'validacao.pas' {Form1},
  list in 'list.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
 // Application.CreateForm(TForm2, Form2);
 // Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
