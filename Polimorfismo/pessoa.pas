unit pessoa;

interface
uses
System.SysUtils;
type
 Tpessoa = class
private
    Fnome: string;
    FDataNascimento: string;

public
property nome: string read Fnome write Fnome;
property DataNascimento: string read FDataNascimento write FDataNascimento;
function idade: integer;
end;

implementation

{ Tpessoa }

function Tpessoa.idade: integer;
begin
Result := Trunc(now -StrToDate(DataNascimento)/ 365.25);
end;

end.
