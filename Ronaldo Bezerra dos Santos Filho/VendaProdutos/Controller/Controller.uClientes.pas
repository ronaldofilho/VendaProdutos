unit Controller.uClientes;

interface
uses Generics.uController, Resources.Strings.uStrSQLs, SysUtils;
type
  TControllerClientes = class(TGenericController)
  public
    class function New: IController; overload;
    function SetCamposCodigoDescricao: IController; override;
    function GetNome(const AnCodigo: integer): string;
  end;

implementation

{ TControllerClientes }

function TControllerClientes.GetNome(const AnCodigo: integer): string;
begin
  Result := SetFiltro('CODIGO = ' + IntToStr(AnCodigo))
            .QueryListaFiltro.FieldByName(TConstCamposClientes._ksCCNome).AsString ;
end;

class function TControllerClientes.New: IController;
begin
  inherited;
  Result := TControllerClientes.Create;
  Result.SetTabela(TConstTabelas._ksCTClientes)
        .SetCamposListaTodos(TConstCamposClientes.GetListaCamposSQL)
        .SetCamposCodigoDescricao;
end;

function TControllerClientes.SetCamposCodigoDescricao: IController;
begin
  SetCamposCodigoDescricao(TConstCamposClientes._ksCCCodigo,
                           TConstCamposClientes._ksCCNome);
end;
end.
