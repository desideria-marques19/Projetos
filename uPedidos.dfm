object FrmPedidos: TFrmPedidos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pedidos'
  ClientHeight = 382
  ClientWidth = 607
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 53
    Top = 56
    Width = 95
    Height = 18
    Caption = 'ID Pedidos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 318
    Top = 117
    Width = 150
    Height = 18
    Caption = 'C'#243'digo do Produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 48
    Top = 117
    Width = 90
    Height = 18
    Caption = 'ID Clientes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 318
    Top = 56
    Width = 99
    Height = 18
    Caption = 'Data Pedido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 48
    Top = 176
    Width = 127
    Height = 18
    Caption = 'Valor do Pedido'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 318
    Top = 176
    Width = 75
    Height = 18
    Caption = 'Situa'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 40
    Top = 2
    Width = 480
    Height = 40
    DataSource = ds1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 239
    Width = 497
    Height = 120
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt1: TEdit
    Left = 48
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt2: TEdit
    Left = 318
    Top = 80
    Width = 131
    Height = 21
    TabOrder = 3
  end
  object edt3: TEdit
    Left = 48
    Top = 141
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edt4: TEdit
    Left = 318
    Top = 141
    Width = 131
    Height = 21
    TabOrder = 5
  end
  object edt5: TEdit
    Left = 48
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edt6: TEdit
    Left = 318
    Top = 200
    Width = 187
    Height = 21
    TabOrder = 7
  end
  object quePedidos: TFDQuery
    Connection = conexao.conexaoMySQL
    SQL.Strings = (
      'select * from Pedidos')
    Left = 456
    Top = 248
    object quePedidosidPedidos: TFDAutoIncField
      FieldName = 'idPedidos'
      Origin = 'idPedidos'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object quePedidosProdutos_codigo: TLongWordField
      FieldName = 'Produtos_codigo'
      Origin = 'Produtos_codigo'
      Required = True
    end
    object quePedidosClientes_idClientes: TLongWordField
      FieldName = 'Clientes_idClientes'
      Origin = 'Clientes_idClientes'
      Required = True
    end
    object quePedidosdataPedido: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'dataPedido'
      Origin = 'dataPedido'
    end
    object quePedidosvalorPedido: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorPedido'
      Origin = 'valorPedido'
      Precision = 10
      Size = 2
    end
    object quePedidossituacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'situacao'
      Origin = 'situacao'
      Size = 8
    end
  end
  object ds1: TDataSource
    DataSet = quePedidos
    Left = 496
    Top = 248
  end
end
