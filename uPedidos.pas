unit uPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmPedidos = class(TForm)
    quePedidos: TFDQuery;
    quePedidosidPedidos: TFDAutoIncField;
    quePedidosProdutos_codigo: TLongWordField;
    quePedidosClientes_idClientes: TLongWordField;
    quePedidosdataPedido: TDateTimeField;
    quePedidosvalorPedido: TBCDField;
    quePedidossituacao: TStringField;
    ds1: TDataSource;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPedidos: TFrmPedidos;

implementation

uses
  uBancoDados;

{$R *.dfm}

procedure TFrmPedidos.FormCreate(Sender: TObject);
begin
  quePedidos.Active := True;
  quePedidos.Open();
end;


end.
