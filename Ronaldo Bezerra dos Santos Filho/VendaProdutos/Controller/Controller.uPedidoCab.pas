unit Controller.uPedidoCab;

interface
uses Generics.uController, Resources.Strings.uStrSQLs, SysUtils, FireDAC.Comp.Client,
Data.DB, Controller.uClientes;
type
  TControllerPedidoCab = class(TGenericController)
  private
    procedure CheckQueryState;
    procedure SetCampoValor(const AnCampo: string; const AvValor: Variant);
    procedure SetSQLConsulta(var AoQuery: TFDQuery); override;
  public
    class function New: IController; overload;
    function SetCamposCodigoDescricao: IController; override;
    function MontarQueryVazia: TControllerPedidoCab;
    function PreparaQuery: TControllerPedidoCab;
    function SetCliente(const AnCliente: Integer): TControllerPedidoCab;
    function SetTotal(const AnTotal: Extended): TControllerPedidoCab;
    function GetNomeCliente:string;

  published
  end;

implementation

{ TControllerPedidoCab }

procedure TControllerPedidoCab.CheckQueryState;
begin
  if not (GetQueryDados.State in [dsEdit, dsInsert]) then
  begin
    if GetQueryDados.IsEmpty then
      GetQueryDados.Append
    else
      GetQueryDados.Edit;
  end;
end;

function TControllerPedidoCab.GetNomeCliente: string;
begin
  Result := TControllerClientes(TControllerClientes.new)
              .GetNome(Self.GetQueryDados
                           .FieldByName(TConstCamposPedidoCab._ksCCPCliente).Asinteger);
end;

function TControllerPedidoCab.MontarQueryVazia: TControllerPedidoCab;
var
  oQuery: TFDQuery;
begin
  Result := Self;
  oQuery := QueryVazio;
  SetQueryDados(oQuery);
end;

class function TControllerPedidoCab.New: IController;
begin
  inherited;
  Result := TControllerPedidoCab.Create;
  Result.SetTabela(TConstTabelas._ksCTPedidoCab)
        .SetCamposListaTodos(TConstCamposPedidoCab.GetListaCamposSQL)
        .SetCamposCodigoDescricao
        .SetCampoIdUpdate(TConstCamposPedidoCab._ksCCPPedido)
        .SetCamposInsertUpdate(TConstCamposPedidoCab.GetListaCamposInsetUpdate);
end;

function TControllerPedidoCab.PreparaQuery: TControllerPedidoCab;
begin
  Result := Self;
  if GetQueryDados.IsEmpty then
    GetQueryDados.Append;
end;

function TControllerPedidoCab.SetCamposCodigoDescricao: IController;
begin
  Result := Self;
  SetCamposCodigoDescricao(TConstCamposPedidoCab._ksCCPPedido,
                           EmptyStr);
end;

procedure TControllerPedidoCab.SetCampoValor(const AnCampo: string; const AvValor: Variant);
begin
  CheckQueryState;
  GetQueryDados.FindField(AnCampo).Value := AvValor;
end;

function TControllerPedidoCab.SetCliente(const AnCliente: Integer): TControllerPedidoCab;
begin
  Result := Self;
  SetCampoValor(TConstCamposPedidoCab._ksCCPCliente, AnCliente);
end;

function TControllerPedidoCab.SetTotal(const AnTotal: Extended): TControllerPedidoCab;
begin
  Result := Self;
  SetCampoValor(TConstCamposPedidoCab._ksCCPTotal, AnTotal);
end;

procedure TControllerPedidoCab.SetSQLConsulta(var AoQuery: TFDQuery);
var
  sAux: string;
begin
  sAux := Self.Filtro;
  SetFiltro(MontarFiltroConsulta);
  SetSqlListaJoin(AoQuery);
  SetFiltro(sAux);
end;

end.
