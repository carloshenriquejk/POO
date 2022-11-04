unit Pessoa;

interface
uses
System.SysUtils;

type Tpessoa = class (TObject)
  private
  public
  nome : string;
   dataNacinemto: string;
   function idade:Integer;

end;

implementation

{ Tpessoa }

function Tpessoa.idade: Integer;
begin
result := Trunc((Now - StrToDate(dataNacinemto))/ 365.25);
end;

end.
