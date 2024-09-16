unit Controller.uProdutos;

interface
uses Generics.uController, Resources.Strings.uStrSQLs, SysUtils;
type
  TControllerProduto = class(TGenericController)
  public
    class function New: IController; overload;
    function SetCamposCodigoDescricao: IController; override;
    function GetValorUnitario(const AnCodigo: integer): Extended;
    function GetDescricao(const AnCodigo: integer): string;
  end;

implementation

{ TControllerProduto }

function TControllerProduto.GetValorUnitario(const AnCodigo: integer): Extended;
begin
  Result := SetFiltro('CODIGO = ' + IntToStr(AnCodigo))
            .QueryListaFiltro.FieldByName(TConstCamposProdutos._ksCPPrecoVenda).AsExtended ;
end;

function TControllerProduto.GetDescricao(const AnCodigo: integer): string;
begin
  Result := SetFiltro('CODIGO = ' + IntToStr(AnCodigo))
            .QueryListaFiltro.FieldByName(TConstCamposProdutos._ksCPDescricao).AsString ;
end;

class function TControllerProduto.New: IController;
begin
  inherited;
  Result := TControllerProduto.Create;
  Result.SetTabela(TConstTabelas._ksCTProdutos)
        .SetCamposListaTodos(TConstCamposProdutos.GetListaCamposSQL)
        .SetCamposCodigoDescricao;
end;

function TControllerProduto.SetCamposCodigoDescricao: IController;
begin
  SetCamposCodigoDescricao(TConstCamposProdutos._ksCPCodigo,
                           TConstCamposProdutos._ksCPDescricao);
end;

end.
