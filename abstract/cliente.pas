unit cliente;

interface

uses
pessoa,
System.SysUtils;

type
Tcliente = class(Tpessoa)
  private
  FCPF : string;
  public
  property CPF: string read FCPF write FCPF;
 function RetornaDados:string ;override;
 function contrato :string ;override;
end;
implementation


{ Tcliente }


{ Tcliente }

function Tcliente.contrato: string;
begin
Result := 'TClienteContrato';
end;

function Tcliente.RetornaDados: string;
begin
 Result := ' Nome:'+ self.Nome +
   ', Data de Nacsimento:' + self.DataNacsimento+
   ', Idade: ' + self.idade.ToString;

end;

end.




