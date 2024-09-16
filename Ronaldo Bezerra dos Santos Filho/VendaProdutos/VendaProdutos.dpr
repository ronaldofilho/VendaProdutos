program VendaProdutos;

uses
  Vcl.Forms,
  FireDAC.VCLUI.Wait,
  FireDAC.DApt,
  FireDAC.Stan.Async,
  uFrmDadosConexao in 'View\uFrmDadosConexao.pas' {FrmDadosConexao},
  Generics.uConexao in 'Generics\Generics.uConexao.pas',
  Resources.Strings.uStrDados in 'Resources\Strings\Resources.Strings.uStrDados.pas',
  Resources.Strings.uStrDadosErro in 'Resources\Strings\Resources.Strings.uStrDadosErro.pas',
  Resources.Strings.uStrPrefixos in 'Resources\Strings\Resources.Strings.uStrPrefixos.pas',
  Resources.Strings.uStrMensagens in 'Resources\Strings\Resources.Strings.uStrMensagens.pas',
  Generics.uController in 'Generics\Generics.uController.pas',
  Resources.Strings.uStrSQLs in 'Resources\Strings\Resources.Strings.uStrSQLs.pas',
  Controller.uProdutos in 'Controller\Controller.uProdutos.pas',
  uFrmConsulta in 'View\uFrmConsulta.pas' {FrmConsulta},
  uFrmPrincipal in 'View\uFrmPrincipal.pas' {FrmPrincipal},
  Controller.uClientes in 'Controller\Controller.uClientes.pas',
  uFrmVenda in 'View\uFrmVenda.pas' {FrmVenda},
  Resources.Strings.uStrUtils in 'Resources\Strings\Resources.Strings.uStrUtils.pas',
  Controller.uPedidoCab in 'Controller\Controller.uPedidoCab.pas',
  Controller.uPedidoItens in 'Controller\Controller.uPedidoItens.pas';

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
