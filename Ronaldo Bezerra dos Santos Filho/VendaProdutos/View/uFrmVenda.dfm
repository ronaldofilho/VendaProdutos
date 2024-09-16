object FrmVenda: TFrmVenda
  Left = 0
  Top = 0
  Caption = 'Venda'
  ClientHeight = 522
  ClientWidth = 1091
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Pnl_Cabecalho: TPanel
    Left = 0
    Top = 0
    Width = 1091
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1089
    object Lbl_Cliente: TLabel
      Left = 16
      Top = 16
      Width = 37
      Height = 15
      Caption = 'Cliente'
    end
    object Edt_Cliente: TEdit
      Left = 16
      Top = 37
      Width = 305
      Height = 23
      TabOrder = 0
      OnKeyPress = Edt_ClienteKeyPress
    end
    object Btn_listarPedidos: TButton
      Left = 984
      Top = 36
      Width = 99
      Height = 25
      Caption = 'Listar Pedidos'
      TabOrder = 1
      OnClick = Btn_listarPedidosClick
    end
  end
  object Pnl_SelProdutos: TPanel
    Left = 0
    Top = 81
    Width = 1091
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 1089
    object Lbl_Produto: TLabel
      Left = 16
      Top = 6
      Width = 43
      Height = 15
      Caption = 'Produto'
    end
    object Lbl_ValorUni: TLabel
      Left = 336
      Top = 6
      Width = 71
      Height = 15
      Caption = 'Valor Unit'#225'rio'
    end
    object Lbl_Quantidade: TLabel
      Left = 445
      Top = 6
      Width = 62
      Height = 15
      Caption = 'Quantidade'
    end
    object Edt_Produto: TEdit
      Left = 16
      Top = 27
      Width = 305
      Height = 23
      TabOrder = 0
      OnKeyPress = Edt_ProdutoKeyPress
    end
    object Edt_ValorUni: TEdit
      Left = 336
      Top = 27
      Width = 97
      Height = 23
      Enabled = False
      TabOrder = 1
    end
    object Edt_Quantidade: TEdit
      Left = 445
      Top = 27
      Width = 97
      Height = 23
      TabOrder = 2
    end
    object Btn_AddItem: TButton
      Left = 584
      Top = 24
      Width = 113
      Height = 25
      Caption = 'Lan'#231'ar Item'
      TabOrder = 3
      OnClick = Btn_AddItemClick
    end
    object Btn_CancelarPedido: TButton
      Left = 984
      Top = 44
      Width = 99
      Height = 25
      Caption = 'Cancelar Pedido'
      TabOrder = 4
      OnClick = Btn_CancelarPedidoClick
    end
  end
  object Dbg_Produtos: TDBGrid
    Left = 0
    Top = 162
    Width = 1091
    Height = 335
    Align = alClient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnKeyDown = Dbg_ProdutosKeyDown
    OnKeyPress = Dbg_ProdutosKeyPress
  end
  object Stb_Rodape: TStatusBar
    Left = 0
    Top = 497
    Width = 1091
    Height = 25
    Panels = <
      item
        Width = 50
      end>
    ExplicitTop = 489
    ExplicitWidth = 1089
  end
end
