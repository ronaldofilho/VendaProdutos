unit Resources.Strings.uStrDados;

interface
type
  TConstConexao = class
  public
  const
    _ksCCBanco = 'vendaprodutos';
    _knCCPorta = 3306;
    _ksCCBiblioteca = '\LIBMYSQL.DLL';
    _ksCCSenha = '';
    _ksCCServidor = 'localhost';
    _ksCCUsuario = 'root';
  end;

  TConstSesoes = class
  public
  const
    _ksCSSessaoConexao = 'CONEXAO';
    _ksCSSubSessaBanco = 'BANCO';
    _ksCSSubSessaBiblioteca = 'BIBLIOTECA';
    _ksCSSubSessaSenha = 'SENHA';
    _ksCSSubSessaServidor = 'SERVIDOR';
    _ksCSSubSessaPorta = 'PORTA';
    _ksCSSubSessaUsuario = 'USUARIO';
  end;

  TConstFireDACCon = class
  public
  const
    _ksCFDatabase = 'Database=';
    _ksCFUserName = 'User_Name=';
    _ksCFPassword = 'Password=';
    _ksCFServer = 'Server=';
    _ksCFDriverID = 'DriverID=MySQL';
  end;

implementation

end.
