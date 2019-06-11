object FrmCadastroProdutos: TFrmCadastroProdutos
  Left = 0
  Top = 0
  Caption = 'Cadastro de produtos'
  ClientHeight = 365
  ClientWidth = 614
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 29
    Top = 66
    Width = 50
    Height = 19
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 173
    Top = 66
    Width = 67
    Height = 19
    Caption = 'Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 29
    Top = 127
    Width = 83
    Height = 19
    Caption = 'Embalagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 173
    Top = 127
    Width = 39
    Height = 19
    Caption = 'Pre'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 317
    Top = 127
    Width = 95
    Height = 19
    Caption = 'Qtde Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 461
    Top = 127
    Width = 67
    Height = 19
    Caption = 'Categoria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 8
    Width = 550
    Height = 50
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 27
    Top = 192
    Width = 550
    Height = 153
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edtCod: TEdit
    Left = 29
    Top = 91
    Width = 83
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 173
    Top = 91
    Width = 324
    Height = 21
    TabOrder = 3
  end
  object edtEmbala: TEdit
    Left = 29
    Top = 152
    Width = 116
    Height = 21
    TabOrder = 4
  end
  object Edit4: TEdit
    Left = 173
    Top = 152
    Width = 83
    Height = 21
    TabOrder = 5
  end
  object edtQtdEstoque: TEdit
    Left = 317
    Top = 152
    Width = 76
    Height = 21
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 461
    Top = 152
    Width = 116
    Height = 21
    TabOrder = 7
  end
  object queProdutos: TFDQuery
    Connection = conexao.conexaoMySQL
    SQL.Strings = (
      'select * from Produtos')
    Left = 448
    Top = 200
    object queProdutoscodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object queProdutosdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 50
    end
    object queProdutosembalagem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'embalagem'
      Origin = 'embalagem'
    end
    object queProdutospreco: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'preco'
      Origin = 'preco'
      Precision = 10
      Size = 2
    end
    object queProdutosqtde_estoque: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'qtde_estoque'
      Origin = 'qtde_estoque'
      Precision = 10
      Size = 2
    end
    object queProdutoscategoria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'categoria'
      Origin = 'categoria'
    end
  end
  object DataSource1: TDataSource
    DataSet = queProdutos
    Left = 520
    Top = 200
  end
end
