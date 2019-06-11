unit uCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmCadastroClientes = class(TForm)
    queClientes: TFDQuery;
    ds1: TDataSource;
    queClientesidCliente: TFDAutoIncField;
    queClientescpf: TLargeintField;
    queClientesdataNascimento: TDateField;
    queClientesnome: TStringField;
    queClientesendereco: TStringField;
    queClientesbairro: TStringField;
    queClientescidade: TStringField;
    queClientesestado: TStringField;
    queClientestelefone: TStringField;
    queClientescelular: TStringField;
    queClientesemail: TStringField;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    edtNome: TEdit;
    edtCPF: TEdit;
    edtDtaNasc: TEdit;
    edtEndereco: TEdit;
    edtCelular: TEdit;
    edtCidade: TEdit;
    edtEstado: TEdit;
    edtTelefone: TEdit;
    edtBairro: TEdit;
    edtEmail: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroClientes: TFrmCadastroClientes;

implementation

uses
  uBancoDados;

{$R *.dfm}


procedure TFrmCadastroClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Esta linha libera o formulário da memória
  Action := caFree;
end;

procedure TFrmCadastroClientes.FormCreate(Sender: TObject);
begin
  //Aqui ativamos a Query para consulta ao banco de dados
  queClientes.Active := True;
  //Em seguida, abrimos a Query para as operações
  queClientes.Open();
end;

procedure TFrmCadastroClientes.FormDestroy(Sender: TObject);
begin
  //Aqui anulamos o ponteiro de memória associado à variável do formulário
  FrmCadastroClientes := nil;
end;

end.
