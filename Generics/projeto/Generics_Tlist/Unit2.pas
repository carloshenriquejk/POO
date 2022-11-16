unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    ListaNum : Tlist<Integer>;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
I : Integer;
begin
    Memo1.Lines.Clear;
    for I := 0 to Pred(ListaNum.count) do
    Memo1.lines.add(ListaNum[i].ToString);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 ListaNum.delete(Pred(ListaNum.count));
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
memo1.Lines.clear;
Memo1.Lines(ListaNum.capacity.toString);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
ListaNum := TList<Integer>.Create;
end;

end.
