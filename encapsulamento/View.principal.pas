unit View.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, pessoa, contaBancaria;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
pessoa : Tpessoa;
  MyClass: TObject;
begin
   pessoa := Tpessoa.create;

   try
   // pessoa.id := 1;
     pessoa.nome := 'carlos';
 //    pessoa.tipo :='f';
//     pessoa.email := 'carlos@gmail.com';
   //  ShowMessage(pessoa.id.ToString + ' - '+pessoa.nome + ' - ' + pessoa.tipo + ' - ' + pessoa.email);
   finally
     MyClass.Free;
   end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
lConta, lConta2: TContaBancaria;
begin

  lConta :=TContaBancaria.Create;
  lConta2 :=TContaBancaria.Create;
     try
        lConta.Nome := 'Carlos';
        lconta.Depositar(50);

        lConta2.Nome := 'Carlos';
        lconta2.Depositar(50);

        Memo1.Lines.Clear;
        Memo1.Lines.Add(lConta.Nome);
        Memo1.Lines.Add(lConta.Saldo.ToString);
        Memo1.Lines.Add(lConta2.Nome);
        Memo1.Lines.Add(lConta2.Saldo.ToString);
     finally
      lConta.DisposeOf;
     end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
pessoa : Tpessoa;
  MyClass: TObject;
begin
   pessoa := Tpessoa.create;
 try
   pessoa.nome:= 'carlos';
   pessoa.Datanascimento:= '09/09/1980';
   ShowMessage(pessoa.nome + '-' + pessoa.idade.Funcoes.CalcularIdade(pessoa.Datanascimento).ToString);
 finally

 end;
end;

end.
