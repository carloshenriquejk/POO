unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
     Tpessoa = class
  private
    Fnome: String;
    procedure Setnome(const Value: String);
  published
       property nome : String read Fnome write Setnome;
     end;
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TNFE<T: constructor> = class
    FGenerics : T;
    constructor create;
    function GetGeneric : T;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
Nfe : TNFE<Tpessoa>;
begin
 Nfe := TNFE<Tpessoa>.Create;
 try
   nfe.FGenerics.nome := 'Carlos';
 finally
   Nfe.Free;
 end;
end;

{ Tpessoa }

procedure Tpessoa.Setnome(const Value: String);
begin
  Fnome := Value;
end;

{ TNFE<T> }

constructor TNFE<T>.create;
begin
 FGenerics := T.create;
end;

function TNFE<T>.GetGeneric: T;
begin
 Result := FGenerics;
end;

end.
