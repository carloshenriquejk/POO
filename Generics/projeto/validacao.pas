unit validacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TmeuGenerico = array [0..9] of string;

  TMeuArrayGenerico<T> = class
    FArray : array[0..9] of T
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;
 TmeuGenericoA = TMeuArrayGenerico<string>;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
 aux1 : TmeuGenerico;
 aux2 : TmeuGenerico;
 aux3 : array [0..9] of string;
 aux4 : array [0..9] of string;

begin
   aux1 := aux2;
 //  aux1 := aux3;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
 aux1 : TMeuArrayGenerico<String>;
 aux2 : TMeuArrayGenerico<String>;
 aux3 : TmeuGenericoA;
 aux4 : TmeuGenericoA;

begin
   aux1 := aux3;
end;
end.
