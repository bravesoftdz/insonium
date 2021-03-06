unit uProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Produto = class

private
  codigo : Integer;
  nome : String;
  preco : Currency;
  quantidade : Integer;

public
  constructor Create;
  destructor Destroy;
  function getCodigo() : Integer;
  procedure setCodigo(pcodigo : Integer);
  function getNome() : String;
  procedure setNome(pnome : String);
  function getPreco() : Currency;
  procedure setPreco(ppreco : Currency);
  function getQuantidade() : Integer;
  procedure setQuantidade(pquantidade: Integer);
  class function Obter(pcodigo : Integer) : Produto;
  class function ObterTodos : TList;
  function Destruir : boolean; reintroduce; overload;
end;



implementation

uses uProdutoDAO;

constructor Produto.Create;
begin

end;

destructor Produto.Destroy;
begin

end;

function Produto.getCodigo : Integer;
begin
  result := codigo;
end;

procedure Produto.setCodigo(pcodigo : Integer);
begin
  codigo := pcodigo;
end;

function Produto.getNome : String;
begin
  result := nome;
end;

procedure Produto.setNome(pnome : String);
begin
  nome := pnome;
end;

function Produto.getPreco : Currency;
begin
  result := preco;
end;

procedure Produto.setPreco(ppreco : Currency);
begin
  preco := ppreco;
end;

function Produto.getQuantidade : Integer;
begin
  result := quantidade;
end;

procedure Produto.setQuantidade(pquantidade : Integer);
begin
  quantidade := pquantidade;
end;

class function Produto.Obter(pcodigo : Integer) : Produto;
var
  objPersistente : ProdutoDAO;
begin
  objPersistente := ProdutoDAO.Create;
  result := ProdutoDAO.Obter(pcodigo);
  objPersistente.Free;
end;

class function Produto.ObterTodos : TList;
var
  objPersistente : ProdutoDAO;
begin
  objPersistente := ProdutoDAO.Create;
  result := objPersistente.ObterTodos;
  objPersistente.Free;
end;

function Produto.Destruir : boolean;
var
  objPersistente : ProdutoDAO;
begin
  objPersistente := ProdutoDAO.Create;
  result := objPersistente.Destruir(Self.codigo);
  objPersistente.Free;
end;


end.
 