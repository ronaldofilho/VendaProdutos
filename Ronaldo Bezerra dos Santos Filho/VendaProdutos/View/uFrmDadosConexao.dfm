object FrmDadosConexao: TFrmDadosConexao
  Left = 0
  Top = 0
  Caption = 'Dados Conex'#227'o'
  ClientHeight = 306
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 15
  object Lbl_Banco: TLabel
    Left = 24
    Top = 150
    Width = 33
    Height = 15
    Caption = 'Banco'
    FocusControl = Edt_Banco
  end
  object Lbl_Usuario: TLabel
    Left = 24
    Top = 200
    Width = 40
    Height = 15
    Caption = 'Usuario'
    FocusControl = Edt_Usuario
  end
  object Lbl_Porta: TLabel
    Left = 224
    Top = 150
    Width = 28
    Height = 15
    Caption = 'Porta'
    FocusControl = Edt_Porta
  end
  object Lbl_Senha: TLabel
    Left = 224
    Top = 200
    Width = 32
    Height = 15
    Caption = 'Senha'
    FocusControl = Edt_Senha
  end
  object Lbl_Servidor: TLabel
    Left = 24
    Top = 50
    Width = 43
    Height = 15
    Caption = 'Servidor'
    FocusControl = Edt_Servidor
  end
  object Lbl_Biblioteca: TLabel
    Left = 24
    Top = 100
    Width = 52
    Height = 15
    Caption = 'Biblioteca'
    FocusControl = Edt_Biblioteca
  end
  object Edt_Banco: TEdit
    Left = 24
    Top = 171
    Width = 185
    Height = 23
    TabOrder = 0
  end
  object Edt_Usuario: TEdit
    Left = 24
    Top = 221
    Width = 185
    Height = 23
    TabOrder = 2
  end
  object Edt_Porta: TEdit
    Left = 224
    Top = 171
    Width = 72
    Height = 23
    TabOrder = 1
    OnKeyPress = Edt_PortaKeyPress
  end
  object Edt_Senha: TEdit
    Left = 224
    Top = 221
    Width = 185
    Height = 23
    PasswordChar = '*'
    TabOrder = 3
  end
  object Btn_Gravar: TButton
    Left = 24
    Top = 273
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 4
  end
  object Edt_Servidor: TEdit
    Left = 24
    Top = 71
    Width = 385
    Height = 23
    TabOrder = 5
  end
  object Edt_Biblioteca: TEdit
    Left = 24
    Top = 121
    Width = 337
    Height = 23
    TabOrder = 6
  end
  object Btn_TestarConexao: TButton
    Left = 280
    Top = 273
    Width = 129
    Height = 25
    Caption = 'Testar Conex'#227'o'
    TabOrder = 7
    OnClick = Btn_TestarConexaoClick
  end
  object Btn_SelBiblioteca: TButton
    Left = 372
    Top = 120
    Width = 37
    Height = 25
    Caption = '...'
    TabOrder = 8
    OnClick = Btn_SelBibliotecaClick
  end
end
