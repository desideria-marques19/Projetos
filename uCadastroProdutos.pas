unit uCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmCadastroProdutos = class(TForm)
    queProdutos: TFDQuery;
    queProdutoscodigo: TFDAutoIncField;
    queProdutosdescricao: TStringField;
    queProdutosembalagem: TStringField;
    queProdutospreco: TBCDField;
    queProdutosqtde_estoque: TBCDField;
    queProdutoscategoria: TStringField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    edtEmbala: TEdit;
    Edit4: TEdit;
    edtQtdEstoque: TEdit;
    Edit6: TEdit;
    edtCod: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroProdutos: TFrmCadastroProdutos;

implementation

uses
  uBancoDados;

{$R *.dfm}

procedure TFrmCadastroProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Esta linha libera o formulário da memória
  Action := caFree;
end;

procedure TFrmCadastroProdutos.FormCreate(Sender: TObject);
begin
  //Aqui ativamos a Query para consulta ao banco de dados
  queProdutos.Active := True;
  //Em seguida, abrimos a Query para as operações
  queProdutos.Open();
end;

procedure TFrmCadastroProdutos.FormDestroy(Sender: TObject);
begin
  FrmCadastroProdutos := nil;
end;

end.
