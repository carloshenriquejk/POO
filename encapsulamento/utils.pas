unit utils;

interface

uses
   funcoesdata;

type TUtius = class
  function Funcoes : TFuncaoData ;
end;

implementation

{ TUtius }

function TUtius.Funcoes: TFuncaoData;
begin
 Result := TFuncaoData.Create;
end;

end.
