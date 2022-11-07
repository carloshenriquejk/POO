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
inherited;
 Result := Dados + 'CPF: '+ CPF;

end;

end.




