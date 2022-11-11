unit Generics;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

 TKeyValue<T> = class
  private
    FKey: string;
    FValue: T;
    procedure SetKey(const Value: string);
    procedure SetValue(const Value: T);
  published
   property Key: string read FKey write SetKey;
   property Value: T read FValue write SetValue;
 end;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
 KV: TKeyValue<TForm>;
begin
    KV:= TKeyValue<TForm>.Create;
     try
      kv.FKey :='F1';
      KV.Value := self;
      ShowMessage(kv.FKey +' - ' + kv.Value.Name);
     finally
       KV.Free;
     end;
end;

{ TKeyValue<T> }

procedure TKeyValue<T>.SetKey(const Value: string);
begin
  FKey := Value;
end;

procedure TKeyValue<T>.SetValue(const Value: T);
begin
  FValue := Value;
end;

end.
