unit Resources.Strings.uStrDadosErro;

interface
type
  TConstDadosErro = class
  public
  const
    _ksCDErroConexao = 'Falha ao conectar ao banco de dados, confira os dados da conexão e tente novamente';
    _ksCDErroSelectLista = 'Falha ao consultar registros em banco.' + sLineBreak + 'Tabela - %s' + sLineBreak;
  end;

implementation

end.
