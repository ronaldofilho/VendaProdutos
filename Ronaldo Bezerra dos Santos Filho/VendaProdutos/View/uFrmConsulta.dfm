object FrmConsulta: TFrmConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 441
  ClientWidth = 1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object Dbg_Consulta: TDBGrid
    Left = 0
    Top = 73
    Width = 1072
    Height = 368
    Align = alClient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = Dbg_ConsultaDblClick
  end
  object Pnl_CamposConsulta: TPanel
    Left = 0
    Top = 0
    Width = 1072
    Height = 73
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1070
    object Lbl_Consulta: TLabel
      Left = 8
      Top = 16
      Width = 443
      Height = 15
      Caption = 
        'Digite para pesquisar. Para pesquisar por mais de um campo separ' +
        'e os valores por '#39';'#39
      FocusControl = Edt_Consulta
    end
    object Edt_Consulta: TEdit
      Left = 8
      Top = 37
      Width = 689
      Height = 23
      TabOrder = 0
      OnChange = Edt_ConsultaChange
    end
  end
end
