unit funcoesdata;

interface
uses System.SysUtils;

type
TFuncaoData = class
  function CalcularIdade(Value:String) :Integer;
end;

implementation

{ TFuncaoData }

function TFuncaoData.CalcularIdade(Value: String): Integer;
begin
Result  := Trunc((now - StrToDate(Value))/ 365.25);
end;

end.
