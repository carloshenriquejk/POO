unit usuario;

interface
uses
pessoa;
type
Tusuario = class(Tpessoa)
  private
  FCPF : string;
  public
  property CPF: string read FCPF write FCPF;
 function contrato :string ;override;
end;

implementation

{ Tcliente }

function Tusuario.contrato: string;
begin
Result := 'TusuarioContrato'
end;

end.
