unit uCadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls,
   Vcl.StdCtrls, Vcl.Mask;

type
  TFrmCadastroUsuarios = class(TForm)
    queUsuarios: TFDQuery;
    queUsuariosidUsuario: TFDAutoIncField;
    queUsuariosnome: TStringField;
    queUsuarioscpf: TLargeintField;
    queUsuariosemail: TStringField;
    queUsuariossenha: TStringField;
    DataSource1: TDataSource;
    Label1: TLabel;

    Label2: TLabel;

    Label3: TLabel;

    Label4: TLabel;

    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    lbl1: TLabel;
    dbedtsenha: TDBEdit;
    edtCodUsuario: TEdit;
    edtEmail1: TEdit;
    edtCPF1: TEdit;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroUsuarios: TFrmCadastroUsuarios;

implementation

uses
  uBancoDados;

{$R *.dfm}

procedure TFrmCadastroUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //Esta linha libera o formulário da memória
  Action := caFree;
end;

procedure TFrmCadastroUsuarios.FormCreate(Sender: TObject);
begin
  //Aqui ativamos a Query para consulta ao banco de dados
  queUsuarios.Active := True;
  //Em seguida, abrimos a Query para as operações
  queUsuarios.Open();
end;

procedure TFrmCadastroUsuarios.FormDestroy(Sender: TObject);
begin
  FrmCadastroUsuarios := nil;
end;

end.
