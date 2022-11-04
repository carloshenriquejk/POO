unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, pessoa, usuario;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  cliente;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
pessoa : tpessoa;
cliente : Tcliente;
usuario : Tusuario;
begin
  pessoa := tpessoa.Create;
  cliente := Tcliente.Create;
  usuario := Tusuario.Create;
 try
    Memo1.Lines.clear;
    Memo2.Lines.clear;
    pessoa.Nome := 'carlos';
    pessoa.DataNacsimento := '01/01/2002';

    cliente.Nome := 'carlos';
    cliente.DataNacsimento := '01/01/2006';
    cliente.CPF := '15184062617';

    Memo1.Lines.Add('===========Pessoa============');
    memo1.Lines.Add('Nome: '+ pessoa.Nome);
    memo1.Lines.Add('Data de Nacsimento: '+ pessoa.DataNacsimento);
    memo1.Lines.Add('Idade: '+ pessoa.idade.ToString);
    Memo1.Lines.Add('=======================');

    Memo1.Lines.Add('===========Cliente============');
    memo1.Lines.Add('Nome: '+ cliente.Nome);
    memo1.Lines.Add('Data de Nacsimento: '+ cliente.DataNacsimento);
    memo1.Lines.Add('Idade: '+ cliente.idade.ToString);
    memo1.Lines.Add('CPF: '+ cliente.CPF);
      memo1.Lines.Add('Contrato: '+ cliente.contrato);

     memo1.Lines.Add('Contrato: '+ usuario.contrato);

    Memo2.Lines.Add('===========Pessoa============');
    memo2.Lines.Add('Nome: '+ pessoa.RetornaDados);
    Memo2.Lines.Add('===========Cliente============');
    memo2.Lines.Add('Nome: '+ cliente.RetornaDados);
 finally
   pessoa.Free;
   cliente.Free;
   usuario.Free;
 end;
end;

end.
