program MeuApp;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uCalendario in 'uCalendario.pas' {FrmCalendario},
  uTabuadas in 'uTabuadas.pas' {FrmTabuadas},
  uTriangulo in 'uTriangulo.pas' {FrmTriangulo},
  uBancoDados in 'uBancoDados.pas' {conexao: TDataModule},
  uCadastroClientes in 'uCadastroClientes.pas' {FrmCadastroClientes},
  uCadastroProdutos in 'uCadastroProdutos.pas' {FrmCadastroProdutos},
  uCadastroUsuarios in 'uCadastroUsuarios.pas' {FrmCadastroUsuarios};

{$R *.res}
 var
  i : Integer;
 begin
  {
  // cria a tela de abertura antes
  Application.CreateForm(TFrmSplash, FrmSplash);
  // mostra a tela de abertura
  FrmSplash.Show;
  FrmSplash.Update;

   for i := 0 to 100 do
   begin
     FrmSplash.Gauge1.Progress := i;
     FrmSplash.Gauge1.Refresh;
     if FrmSplash.Gauge1.Progress = 100 then
     begin
      FrmSplash.Gauge1.Progress := 100;
      FrmSplash.Gauge1.Refresh;
      FrmSplash.Gauge1.Visible := False;
      end;
      Sleep(10);
   end;

  //libera o form de splash da memória
  FrmSplash.Release;
   }
  //Abre o formulário principal
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(Tconexao, conexao);
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Run;
end.
