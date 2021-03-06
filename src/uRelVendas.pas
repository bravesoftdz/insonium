unit uRelVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, QuickRpt, ExtCtrls, QRCtrls, QRExport;

type
  TRelVendas = class(TForm)
    qRelVendas: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    qrTitulo: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    qTipo: TQRLabel;
    QRHTMLFilter1: TQRHTMLFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRHTMLFilter2: TQRHTMLFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FAdo : TADOQuery;
  public
    { Public declarations }
  end;

var
  RelVendas: TRelVendas;

implementation

uses uMain, ufrmRelVenda;

{$R *.dfm}

procedure TRelVendas.FormCreate(Sender: TObject);
begin

    case frmRelVenda.rOpcoes.ItemIndex of
        0:
            qTipo.Caption := 'Referente ao dia '+
            FormatDateTime('yyyy-mm-dd', frmRelVenda.dt1.DateTime);
        1:
            qTipo.Caption := 'Referente ao m�s de '+frmRelVenda.cbMes.Items[frmRelVenda.cbMes.ItemIndex]+
            ' do ano de '+frmRelVenda.eAno.Text;
        2:
            qTipo.Caption := 'Referente ao intervalo de '+
            FormatDateTime('dd-mm-yyyy', frmRelVenda.dt1.DateTime)+' at� '+
            FormatDateTime('dd-mm-yyyy', frmRelVenda.dt2.DateTime);
    end;
end;

end.
