unit uCadastroFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadastroPrincipal, StdCtrls, Mask, DBCtrls, DB, ADODB, Buttons;

type
  TfCadastroFornecedor = class(TfCadastroPrincipal)
    adoQuerycodigo: TAutoIncField;
    adoQuerynome: TWideStringField;
    adoQueryendereco: TWideStringField;
    adoQuerynumero: TIntegerField;
    adoQueryestado: TWideStringField;
    adoQuerycidade: TWideStringField;
    Label1: TLabel;
    eCodigo: TDBEdit;
    Label2: TLabel;
    eNome: TDBEdit;
    Label3: TLabel;
    eEndereco: TDBEdit;
    Label4: TLabel;
    eNumero: TDBEdit;
    Label5: TLabel;
    eEstado: TDBEdit;
    Label6: TLabel;
    eCidade: TDBEdit;
    Label7: TLabel;
    procedure bSairClick(Sender: TObject);
    procedure dsQueryStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadastroFornecedor: TfCadastroFornecedor;

implementation

{$R *.dfm}

procedure TfCadastroFornecedor.bSairClick(Sender: TObject);
begin
  inherited;
  fCadastroFornecedor.Close;
end;

procedure TfCadastroFornecedor.dsQueryStateChange(Sender: TObject);
begin
  inherited;
  eNome.Enabled := TDataSource(Sender).DataSet.State in [dsEdit,dsInsert];
  eEndereco.Enabled := TDataSource(Sender).DataSet.State in [dsEdit,dsInsert];
  eNumero.Enabled := TDataSource(Sender).DataSet.State in [dsEdit,dsInsert];
  eCidade.Enabled := TDataSource(Sender).DataSet.State in [dsEdit,dsInsert];
  eEstado.Enabled := TDataSource(Sender).DataSet.State in [dsEdit,dsInsert];
end;

end.
