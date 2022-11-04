unit cliente;

interface

uses
  pessoa;
type
tcliente = class(Tpessoa)
  private
    Fcpf: string;
  public
  property cpf: string read Fcpf write Fcpf;
end;

implementation

end.
