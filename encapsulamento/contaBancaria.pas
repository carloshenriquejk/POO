unit contaBancaria;

interface

type
  TContaBancaria = class

  private
    { Private declarations }
    Fsaldo:Double;
    Fnome : String;
    function GetSaldo: Double;
   public
  { Public declarations }
     property Nome: string read Fnome Write  Fnome;
     property Saldo: Double read GetSaldo;
     procedure Depositar(Value: Double);
  end;

implementation

{ TContaBancaria }

procedure TContaBancaria.Depositar(Value: Double);
begin
  Fsaldo := Fsaldo + Value + (Value * 0.10)
end;

function TContaBancaria.GetSaldo: Double;
begin
  result:= Fsaldo;
end;

end.
