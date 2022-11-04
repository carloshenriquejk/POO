unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Pessoa, cliente;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
pessoa1 : TPessoa;
pessoa2 : Tcliente;
begin
 Memo1.Lines.Clear;
 pessoa1 := Tpessoa.Create;
  pessoa2 := Tcliente.Create;
 try
   pessoa1.nome := 'Carlos';
   pessoa1.dataNacinemto := '09/06/2002';

   Memo1.Lines.Add('Pessoa: '  );
   Memo1.Lines.Add('Nome: ' + pessoa1.nome );
   Memo1.Lines.Add('Data nascimento: ' +pessoa1.dataNacinemto);
   Memo1.Lines.Add('Idade: ' + pessoa1.idade.ToString );
   Memo1.Lines.Add('==================================');

   pessoa2.nome := 'matheus';
   pessoa2.dataNacinemto := '09/06/2001';
   pessoa2.valor := 200;
   Memo1.Lines.Add('Pessoa: '  );
   Memo1.Lines.Add('Nome: ' + pessoa2.nome );
   Memo1.Lines.Add('Data nascimento: ' +pessoa2.dataNacinemto);
   Memo1.Lines.Add('Idade: ' + pessoa2.idade.ToString );
   Memo1.Lines.Add('Valos do credito'+ CurrToStr(pessoa2.valor));

 finally
  pessoa1.Free
 end;
end;

end.
