unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uFrmConsulta, Controller.uProdutos, uFrmDadosConexao,
  Controller.uClientes, uFrmVenda;

type
  TFrmPrincipal = class(TForm)
    Mm_Principal: TMainMenu;
    Mi_Consulta: TMenuItem;
    Smi_ConsultaProdutos: TMenuItem;
    Smi_Clientes: TMenuItem;
    Mi_Venda: TMenuItem;
    Mi_Configuracao: TMenuItem;
    Smi_Conexao: TMenuItem;
    procedure Smi_ConsultaProdutosClick(Sender: TObject);
    procedure Smi_ConexaoClick(Sender: TObject);
    procedure Smi_ClientesClick(Sender: TObject);
    procedure Mi_VendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Mi_VendaClick(Sender: TObject);
begin
  TFrmVenda.New.ShowModal;
end;

procedure TFrmPrincipal.Smi_ClientesClick(Sender: TObject);
begin
  TFrmConsulta.New
              .SetController(TControllerClientes.New)
              .ConfigurarConsulta
              .MostrarConsulta;
end;

procedure TFrmPrincipal.Smi_ConexaoClick(Sender: TObject);
begin
  TFrmDadosConexao.Create(Self).ShowModal;
end;

procedure TFrmPrincipal.Smi_ConsultaProdutosClick(Sender: TObject);
begin
  TFrmConsulta.New
              .SetController(TControllerProduto.New)
              .ConfigurarConsulta
              .MostrarConsulta;
end;

end.
