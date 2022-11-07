unit pessoa;

interface
uses
 System.SysUtils;

 type

 TPessoa = class
     private
     Fdados : string;
     FNome: string;
     FDataNacsimento: string;
     public
     property Nome: string read FNome write FNome;
     property DataNacsimento: string read FDataNacsimento write FDataNacsimento;
     function idade: integer;
     function RetornaDados:string ;Virtual;
     function contrato :string ;Virtual; abstract;
     property dados: string read Fdados write Fdados;
 end;

implementation

{ TPessoa }

function TPessoa.idade: integer;
begin
Result :=Trunc((now - StrToDate(FDataNacsimento))/ 365.25);
end;

function TPessoa.RetornaDados: string;
begin
   Dados := ' Nome:'+ FNome +
   ', Data de Nacsimento:' + FDataNacsimento+
   ', Idade: ' + self.idade.ToString;
end;

end.
