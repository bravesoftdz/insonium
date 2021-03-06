unit uProdutoDAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uPersistente, uProduto, DB, ADODB, uDMPrincipal;

type
  ProdutoDAO = class(TPersistente)

public
  class function Obter(pcodigo : Integer) : Produto; reintroduce; overload;
  class function ObterTodos : TList; override;
  function Destruir(pcodigo : Integer) : boolean; override;
end;



implementation

class function ProdutoDAO.Obter(pcodigo : Integer) : Produto;
var
//  produto : Produto;
  Query : TADOQuery;
  
begin
  Query := TADOQuery.Create(nil);
//  try
    Query.Connection := dmPrincipal.adoConn;
    Query.SQL.Clear;
    Query.SQL.Text := 'select codigo, nome, preco, quantidade from produto '+
                      'where codigo = :cod';
    Query.Parameters.ParamByName('cod').Value := pcodigo;
    Query.Open;
//    if Query.RecordCount > 0 then
//      produto := Produto.Create;

end;

class function ProdutoDAO.ObterTodos : TList;
begin

end;

function ProdutoDAO.Destruir(pcodigo : Integer) : boolean;
begin

end;

end.
 