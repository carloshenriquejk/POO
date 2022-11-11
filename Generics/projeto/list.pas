unit list;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
   TDias = (Segunda, TErca, Quarta, Quinta, Sexta, Sabado, Domingo);
   TMes  = (Janeiro, Fevereiro, Marco, Abril, Maio, Junho);

   TEnumUtils<T> = class
     class Procedure EnumToList(Value: Tstrings);
   end;

  TForm3 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  System.TypInfo;

{$R *.dfm}

{ TEnumUtils<T> }

class procedure TEnumUtils<T>.EnumToList(Value: Tstrings);
var
  Aux: string;
  I: Integer;
  Pos : Integer;
begin
value.Clear;
i:= 0;
repeat
     Aux := GetEnumName(TypeInfo(T), I);
     pos := GetEnumValue(TypeInfo(T), Aux);
     if pos <> -1 then value.Add(Aux) ;
     inc(I);
until Pos<0 ;

end;

procedure TForm3.Button1Click(Sender: TObject);
begin
 TEnumUtils<Tmes>.EnumToList(ComboBox1.Items);
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  TEnumUtils<TDias>.EnumToList(ComboBox1.Items);
end;

end.
