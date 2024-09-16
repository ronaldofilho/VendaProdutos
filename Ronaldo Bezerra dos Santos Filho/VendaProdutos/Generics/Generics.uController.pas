unit Generics.uController;

interface
uses FIREdac.Comp.Client, Resources.Strings.uStrSQLs, SysUtils, Generics.uConexao,
Resources.Strings.uStrDadosErro, Classes, Resources.Strings.uStrUtils, Data.DB;
type
  IController = interface
  ['{88D7B282-0959-4CE9-8F05-C5221B7D5AB3}']
    function SetCamposListaTodos(const Value: string): IController;
    function SetFiltro(const Value: string): IController;
    function SetTabela(const Value: string): IController;
    function SetCamposInsertUpdate(const Value: string): IController;
    function SetId(const Value: integer): IController;
    function GerarListaTodos: TFDQuery;
    function GerarListaFiltro: TFDQuery;
    function GerarListaConsulta: TFDQuery;
    function GerarQueryVazio: TFDQuery;
    function SetCamposCodigoDescricao(const AsCampoCodigo, AsCampoDescricao: string): IController; overload;
    function SetCamposCodigoDescricao: IController; overload;
    function GetCampoCodigo: string;
    function GetCampoDescricao: string;
    function GetId: integer;
    function Gravar: IController;
    function SetQueryDados(var AoQuery: TFDQuery): IController;
    function GetQueryDados: TFDQuery;
    function SetCamposJoin(const Value: string): IController;
    function SetTabelaJoin(const Value: string): IController;
    function SetCampoFiltroJoin(const Value: string): IController;
    function SetValorCampoFiltroJoin(const Value: string): IController;
    function MontarFiltroConsulta: string;
    procedure SetSQLConsulta(var AoQuery: TFDQuery);
    procedure SetSQLLista(var AoQuery: TFDQuery);
    procedure SetSQLFiltro(var AoQuery: TFDQuery);
    procedure SetSqlListaJoin(var AoQuery: TFDQuery);
    function PrepararQueryId: TFDQUery;
    function SetCampoIdUpdate(const Value: string): IController;
    function GetCampoIdUpdate: string;
    function AtualizarIdByCampoIdUpdate: IController;
    function Cancelar: TFDQuery;


    property QueryListaTodos: TFDQuery read GerarListaTodos;
    property QueryListaFiltro: TFDQuery read GerarListaFiltro;
    property QueryListaConsulta: TFDQuery read GerarListaConsulta;
    property QueryVazio: TFDQuery read GerarQueryVazio;
    property CampoCodigo: string read GetCampoCodigo;
    property CampoDescricao: string read GetCampoDescricao;
    property Id: integer read GetId;
    property CampoIdUpdate: string read GetCampoIdUpdate;
  end;

  TGenericController = class(TInterfacedObject, IController)
  private
    FsTabela: string;
    FsCamposListaTodos: string;
    FsFiltro: string;
    FsCamposInsertUpdate: string;
    FsCamposJoin: string;
    FsTabelaJoin: string;
    FsCampoFiltroJoin: string;
    FsValorCampoFiltroJoin: string;
    FsCampoCodigo: string;
    FsCampoDescricao: string;
    FoQuery: TFDQuery;
    FoConexao: TFDConnection;
    FnId: integer;
    FoQueryDados: TFDQuery;
    FsCampoIdUpdate: string;

    function GetQuery: TFDQuery;
    function GerarListaTodos: TFDQuery;
    function GerarListaFiltro: TFDQuery;
    function GerarListaConsulta: TFDQuery; virtual;
    function GerarQueryVazio: TFDQuery;
    function GetCampoCodigo: string;
    function GetCampoDescricao: string;
    function GetId: integer;
    procedure SetSqlInsert(const AoDados: TFDQuery; var AoQuery: TFDQuery);
    procedure FormatFieldValue(var AsLista: string; const AsValor: string);
    function GerarListaJoin: TFDQuery;
    procedure SetQueryId(const Value: TFDQuery);
    procedure Inserir;
    procedure Update;
    procedure FormatFieldUpdateValue(var AsLista: string; const AsCampo, AsValor: string);
    procedure ExecSqlUpdate(const AoDados: TFDQuery; var AoQuery: TFDQuery);
    function GetCampoIdUpdate: string;
    function SetSQLCancelar(var AoQuery: TFDQuery): IController;

  public
    class function New: IController; Virtual;
    constructor Create;
    function PrepararQueryId: TFDQUery;
    function MontarFiltroConsulta: string;
    procedure SetSQLConsulta(var AoQuery: TFDQuery); virtual;
    procedure SetSQLLista(var AoQuery: TFDQuery);
    procedure SetSQLFiltro(var AoQuery: TFDQuery);
    procedure SetSQLId(var AoQuery: TFDQuery);
    procedure SetSqlListaJoin(var AoQuery: TFDQuery);
    function SetCamposListaTodos(const Value: string): IController;
    function SetFiltro(const Value: string): IController;
    function SetTabela(const Value: string): IController;
    function SetCamposInsertUpdate(const Value: string): IController;
    function SetCamposJoin(const Value: string): IController;
    function SetId(const Value: integer): IController;
    function SetCamposCodigoDescricao(const AsCampoCodigo, AsCampoDescricao: string): IController; overload;
    function SetCamposCodigoDescricao: IController; overload; virtual; abstract;
    function SetQueryDados(var AoQuery: TFDQuery): IController;
    function GetQueryDados: TFDQuery;
    function Gravar: IController;
    function SetTabelaJoin(const Value: string): IController;
    function SetCampoFiltroJoin(const Value: string): IController;
    function SetValorCampoFiltroJoin(const Value: string): IController;
    function SetCampoIdUpdate(const Value: string): IController;
    function AtualizarIdByCampoIdUpdate: IController;
    function Cancelar: TFDQuery;

  published
    property Tabela: string read FsTabela;
    property CamposListaTodos: string read FsCamposListaTodos;
    property Filtro: string read FsFiltro;
    property CamposInsertUpdate: string read FsCamposInsertUpdate;
    property CamposJoin: string read FsCamposJoin;
    property QueryListaTodos: TFDQuery read GerarListaTodos;
    property QueryListaFiltro: TFDQuery read GerarListaFiltro;
    property QueryListaConsulta: TFDQuery read GerarListaConsulta;
    property QueryListaJoin: TFDQuery read GerarListaJoin;
    property QueryVazio: TFDQuery read GerarQueryVazio;
    property CampoCodigo: string read GetCampoCodigo;
    property CampoDescricao: string read GetCampoDescricao;
    property Id: integer read GetId;
    property ValorCampoFiltroJoin: string read FsValorCampoFiltroJoin;
    property CampoFiltroJoin: string read FsCampoFiltroJoin;
    property TabelaJoin: string read FsTabelaJoin;
    property CampoIdUpdate: string read GetCampoIdUpdate;
  end;

implementation

{ TGenericController }

function TGenericController.AtualizarIdByCampoIdUpdate: IController;
begin
  Self.SetId(FoQueryDados.FieldByName(Self.CampoIdUpdate).AsInteger);
end;

function TGenericController.Cancelar: TFDQuery;
begin
    FoConexao.StartTransaction;
  try
    Result := GetQuery;
    SetFiltro(Self.Id.ToString);
    MontarFiltroConsulta;
    SetSQLCancelar(Result);
    Result.ExecSQL;
    FoConexao.Commit;
  except on E: Exception do
    begin
      FoConexao.Rollback;
      raise Exception.Create(Format(TConstDadosErro._ksCDErroSelectLista, [Self.Tabela]));
    end;
  end;
end;

constructor TGenericController.Create;
begin
  FoConexao := TConexao
               .New
               .CarregarArquivo
               .ConfigurarConexao
               .TestarConexao
               .Conexao;
end;

function TGenericController.GerarListaConsulta: TFDQuery;
begin
  FoConexao.StartTransaction;
  try
    Result := GetQuery;
    SetSQLConsulta(Result);
    Result.Open;
    FoConexao.Commit;
  except on E: Exception do
    begin
      FoConexao.Rollback;
      raise Exception.Create(Format(TConstDadosErro._ksCDErroSelectLista, [Self.Tabela]));
    end;
  end;
end;

function TGenericController.GerarListaFiltro: TFDQuery;
begin
  FoConexao.StartTransaction;
  try
    Result := GetQuery;
    SetSQLFiltro(Result);
    Result.Open;
    FoConexao.Commit;
  except on E: Exception do
    begin
      FoConexao.Rollback;
      raise Exception.Create(Format(TConstDadosErro._ksCDErroSelectLista, [Self.Tabela]));
    end;
  end;
end;

function TGenericController.GerarListaJoin: TFDQuery;
begin
  FoConexao.StartTransaction;
  try
    Result := GetQuery;
    SetSqlListaJoin(Result);
    Result.Open();
    FoConexao.Commit;
  except on E: Exception do
    begin
      FoConexao.Rollback;
      raise Exception.Create(Format(TConstDadosErro._ksCDErroSelectLista, [Self.Tabela]));
    end;
  end;
end;

function TGenericController.GerarListaTodos: TFDQuery;
begin
  FoConexao.StartTransaction;
  try
    Result := GetQuery;
    SetSQLLista(Result);
    Result.Open();
    FoConexao.Commit;
  except on E: Exception do
    begin
      FoConexao.Rollback;
      raise Exception.Create(Format(TConstDadosErro._ksCDErroSelectLista, [Self.Tabela]));
    end;
  end;
end;

function TGenericController.PrepararQueryId: TFDQUery;
begin
  FoConexao.StartTransaction;
  try
    FoQueryDados := GetQuery;
    SetSQLId(FoQueryDados);
    FoQueryDados.Open();
    Result := FoQueryDados;
    FoConexao.Commit;
  except on E: Exception do
    begin
      FoConexao.Rollback;
      raise Exception.Create(Format(TConstDadosErro._ksCDErroSelectLista, [Self.Tabela]));
    end;
  end;
end;

function TGenericController.GerarQueryVazio: TFDQuery;
var
  sFiltroTemp: string;
begin
  sFiltroTemp := Self.Filtro;
  SetFiltro('-1');
  Result := Self.QueryListaConsulta;
  SetFiltro(sFiltroTemp);
end;

function TGenericController.GetCampoCodigo: string;
begin
  Result := FsCampoCodigo;
end;

function TGenericController.GetCampoDescricao: string;
begin
  Result := FsCampoDescricao;
end;

function TGenericController.GetCampoIdUpdate: string;
begin
   Result := FsCampoIdUpdate;
end;

function TGenericController.GetId: integer;
begin
  Result := FnId;
end;

function TGenericController.GetQuery: TFDQuery;
begin
  Result := TFDQuery.Create(nil);
  Result.Connection := FoConexao;
end;

function TGenericController.GetQueryDados: TFDQuery;
begin
  Result := FoQueryDados;
end;

function TGenericController.SetSQLCancelar(var AoQuery: TFDQuery): IController;
begin
  With AoQuery do
  begin
    SQL.Add(TConstSql._ksCSDelete);
    MacroByName(TConstMacros._ksCMTabela).AsRaw := Self.Tabela;
    MacroByName(TConstMacros._ksCMFiltro).AsRaw := Self.Filtro;
  end;
end;

procedure TGenericController.SetSQLConsulta(var AoQuery: TFDQuery);
var
  sAux: string;
begin
  sAux := Self.Filtro;
  SetFiltro(MontarFiltroConsulta);

  if sAux <> EmptyStr then
    SetSQLFiltro(AoQuery)
  else
    SetSQLLista(AoQuery);

  SetFiltro(sAux);
end;

procedure TGenericController.SetSQLFiltro(var AoQuery: TFDQuery);
begin
  With AoQuery do
  begin
    SQL.Add(TConstSql._ksCSListaComFiltro);
    MacroByName(TConstMacros._ksCMCampos).AsRaw := Self.CamposListaTodos;
    MacroByName(TConstMacros._ksCMTabela).AsRaw := Self.Tabela;
    MacroByName(TConstMacros._ksCMFiltro).AsRaw := Self.Filtro;
  end;
end;

procedure TGenericController.SetSQLId(var AoQuery: TFDQuery);
var
  sAux: string;
begin
  sAux := Self.Filtro;
  SetFiltro(Self.Id.ToString);
  SetFiltro(MontarFiltroConsulta);
  SetSQLFiltro(AoQuery);
  SetFiltro(sAux);
end;

procedure TGenericController.SetSqlInsert(const AoDados: TFDQuery; var AoQuery: TFDQuery);
var
  lCampos: TStringList;
  nAux: integer;
  sValues: string;
  oField: TField;
  oFormato: TFormatSettings;
begin
  sValues := EmptyStr;
  lCampos := TStringList.Create;
  lCampos.Delimiter := ',';
  lCampos.DelimitedText := CamposInsertUpdate;
  lCampos.StrictDelimiter := True;
  oFormato := TFormatSettings.Create;
  oFormato.ThousandSeparator := #0;
  oFormato.DecimalSeparator := '.';
  for nAux := 0 to Pred(lCampos.Count) do
  begin
    oField := AoDados.FindField(lCampos.Strings[nAux]);
    if (ofield.DataType in [ftString, ftWord, ftDate, ftDateTime, ftTime, ftBlob, ftMemo, ftWideString]) then
      FormatFieldValue(sValues, QuotedStr(oField.Value));

    if (ofield.DataType in [ftInteger, ftSmallint, ftShortint, ftLargeint]) then
      FormatFieldValue(sValues, IntToStr(oField.AsInteger));

    if (ofield.DataType in [ftFloat, ftExtended, ftCurrency]) then
      FormatFieldValue(sValues, FloatToStr(oField.AsFloat, oFormato));
  end;

  with AoQuery do
  begin
    SQL.Add(TConstSql._ksCSInsert);
    MacroByName(TConstMacros._ksCMCampos).AsRaw := Self.CamposInsertUpdate;
    MacroByName(TConstMacros._ksCMTabela).AsRaw := Self.Tabela;
    MacroByName(TConstMacros._ksCMValores).AsRaw := sValues;
  end;
end;

procedure TGenericController.ExecSqlUpdate(const AoDados: TFDQuery; var AoQuery: TFDQuery);
var
  lCampos: TStringList;
  nAux: integer;
  sValues: string;
  oField: TField;
  sWhere: string;
  oFormato: TFormatSettings;
begin
  sValues := EmptyStr;
  lCampos := TStringList.Create;
  lCampos.Delimiter := ',';
  lCampos.DelimitedText := CamposInsertUpdate;
  lCampos.StrictDelimiter := True;
  FormatFieldUpdateValue(sWhere, Self.CampoIdUpdate, Self.Id.ToString);
  oFormato := TFormatSettings.Create;
  oFormato.ThousandSeparator := #0;
  oFormato.DecimalSeparator := '.';
  for nAux := 0 to Pred(lCampos.Count) do
  begin
    oField := AoDados.FindField(lCampos.Strings[nAux]);
    if (ofield.DataType in [ftString, ftWord, ftDate, ftDateTime, ftTime, ftBlob, ftMemo, ftWideString]) then
      sValues := QuotedStr(oField.Value);

    if (ofield.DataType in [ftInteger, ftSmallint, ftShortint, ftLargeint]) then
      sValues := IntToStr(oField.AsInteger);

    if (ofield.DataType in [ftFloat, ftExtended, ftCurrency]) then
      sValues := FloatToStr(oField.AsFloat, oFormato);

    with AoQuery do
    begin
      SQL.Add(TConstSql._ksCSUpdate);
      MacroByName(TConstMacros._ksCMCampo).AsRaw := lCampos.Strings[nAux];
      MacroByName(TConstMacros._ksCMTabela).AsRaw := Self.Tabela;
      MacroByName(TConstMacros._ksCMValore).AsRaw := sValues;
      MacroByName(TConstMacros._ksCMFiltro).AsRaw := sWhere;
    end;
    AoQuery.ExecSQL;
    FoConexao.Commit;
    AoQuery.SQL.Clear;
  end;
end;

procedure TGenericController.FormatFieldValue(var AsLista: string; const AsValor: string);
begin
  if AsLista <> EmptyStr then
    AsLista := AsLista + ',' + AsValor
  else
    AsLista := AsValor;
end;

procedure TGenericController.FormatFieldUpdateValue(var AsLista: string; const AsCampo, AsValor: string);
begin
  AsLista := AsCampo + '=' + AsValor;
end;

procedure TGenericController.SetSQLLista(var AoQuery: TFDQuery);
begin
  AoQuery.SQL.Add(TConstSql._ksCSListaTodos);
  AoQuery.MacroByName(TConstMacros._ksCMCampos).AsRaw := Self.CamposListaTodos;
  AoQuery.MacroByName(TConstMacros._ksCMTabela).AsRaw := Self.Tabela;
end;

procedure TGenericController.SetSqlListaJoin(var AoQuery: TFDQuery);
begin
  with AoQuery do
  begin
    SQL.Add(TConstSql._ksCSListaJoin);
    if Self.Filtro <> EmptyStr then
    begin
      SQL.Add(TConstSql._ksCSWhereFiltro);
      AoQuery.MacroByName(TConstMacros._ksCMFiltro).AsRaw := Self.Filtro;
    end;
    AoQuery.MacroByName(TConstMacros._ksCMCampos).AsRaw := Self.CamposJoin;
    AoQuery.MacroByName(TConstMacros._ksCMTabela).AsRaw := Self.Tabela;
    AoQuery.MacroByName(TConstMacros._ksCMTabelaJoin).AsRaw := Self.TabelaJoin;
    AoQuery.MacroByName(TConstMacros._ksCMCampoJoin).AsRaw := Self.CamposJoin;
    AoQuery.MacroByName(TConstMacros._ksCMValoreJoin).AsRaw := Self.ValorCampoFiltroJoin;
  end;
end;

procedure TGenericController.Inserir;
  var
  oQuery: TFDQuery;
begin
  FoConexao.StartTransaction;
  try
    oQuery := GetQuery;
    SetSqlInsert(FoQueryDados, oQuery);
    oQuery.ExecSQL;
    FreeAndNil(FoQueryDados);
    FoQueryDados := QueryListaTodos;
    FoConexao.Commit;
  except on E: Exception do
    begin
      FoConexao.Rollback;
      raise Exception.Create(Format(TConstDadosErro._ksCDErroSelectLista, [Self.Tabela]));
    end;
  end;
end;

procedure TGenericController.Update;
  var
  oQuery: TFDQuery;
begin
  FoConexao.StartTransaction;
  try
    oQuery := GetQuery;
    ExecSqlUpdate(FoQueryDados, oQuery);
    FreeAndNil(FoQueryDados);
    FoQueryDados := QueryListaTodos;
    FoConexao.Commit;
  except on E: Exception do
    begin
      FoConexao.Rollback;
      raise Exception.Create(Format(TConstDadosErro._ksCDErroSelectLista, [Self.Tabela]));
    end;
  end;
end;

function TGenericController.Gravar: IController;
var
  oQuery: TFDQuery;
begin
  if self.Id < 0 then
    Inserir
  else
    Update;
end;

function TGenericController.MontarFiltroConsulta: string;
var
  nAux: Integer;
  nIndice: Integer;
  lFiltros: TStringList;
begin
  Result := EmptyStr;
  lFiltros := TStringList.Create;
  lfiltros.Delimiter := TConstDelimiSep._ksCDSDelimitadorLista;
  lFiltros.Text := Self.Filtro;
  lFiltros.StrictDelimiter := True;
  for nIndice := 0 to Pred(lFiltros.Count) do
  begin
    if TryStrToInt(lFiltros.Strings[nIndice], nAux) then
    begin
      if Result <> EmptyStr then
        Result := Result + TConstSQLClausulas._ksCSCAnd;

      Result := Result + Format(TConstSql._ksCSListaFiltroConsultaCodigo,
                               [Self.CampoCodigo, IntToStr(nAux)]);
    end
    else
    begin
      if Result <> EmptyStr then
        Result := Result + TConstSQLClausulas._ksCSCOr;

      Result := Format(TConstSql._ksCSListaFiltroConsultaDescricao,
                      [Self.CampoDescricao, QuotedStr(TConstSql._ksCSLike +
                                                      lFiltros.Strings[nIndice] +
                                                      TConstSql._ksCSLike).ToUpper]);
    end;
  end;
end;

class function TGenericController.New: IController;
begin
  Result := TGenericController.create;
end;

function TGenericController.SetCamposCodigoDescricao(const AsCampoCodigo,
  AsCampoDescricao: string): IController;
begin
  Result := Self;
  FsCampoCodigo := AsCampoCodigo;
  FsCampoDescricao := AsCampoDescricao;
end;

function TGenericController.SetCamposInsertUpdate(
  const Value: string): IController;
begin
  Result := Self;
  FsCamposInsertUpdate := Value;
end;

function TGenericController.SetCamposJoin(const Value: string): IController;
begin
  Result := Self;
  FsCamposJoin := Value;
end;

function TGenericController.SetCamposListaTodos(const Value: string): IController;
begin
  Result := Self;
  FsCamposListaTodos := Value;
end;

function TGenericController.SetFiltro(const Value: string): IController;
begin
  Result := Self;
  FsFiltro := Value;
end;

function TGenericController.SetId(const Value: integer): IController;
begin
  Result := Self;
  FnId := Value;
end;

function TGenericController.SetQueryDados(var AoQuery: TFDQuery): IController;
begin
  Result := Self;
  FoQueryDados := AoQuery;
end;

procedure TGenericController.SetQueryId(const Value: TFDQuery);
begin
  FoQueryDados := Value;
end;

function TGenericController.SetTabela(const Value: string): IController;
begin
  Result := Self;
  FsTabela := Value;
end;

function TGenericController.SetCampoFiltroJoin(const Value: string): IController;
begin
  Result := Self;
  FsCampoFiltroJoin := Value;
end;

function TGenericController.SetCampoIdUpdate(const Value: string): IController;
begin
  Result := Self;
  FsCampoIdUpdate := Value;
end;

function TGenericController.SetTabelaJoin(const Value: string): IController;
begin
  Result := Self;
  FsTabelaJoin := Value;
end;

function TGenericController.SetValorCampoFiltroJoin(const Value: string): IController;
begin
  Result := Self;
  FsValorCampoFiltroJoin := Value;
end;

end.
