object FrmCadastroClientes: TFrmCadastroClientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de clientes'
  ClientHeight = 544
  ClientWidth = 583
  Color = cl3DLight
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
    Left = 40
    Top = 63
    Width = 103
    Height = 19
    Caption = 'C'#243'digo Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 176
    Top = 63
    Width = 27
    Height = 19
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 381
    Top = 63
    Width = 141
    Height = 19
    Caption = 'Data de Nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 40
    Top = 119
    Width = 42
    Height = 19
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 40
    Top = 178
    Width = 65
    Height = 19
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 42
    Top = 230
    Width = 42
    Height = 19
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 246
    Top = 230
    Width = 48
    Height = 19
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 472
    Top = 230
    Width = 47
    Height = 19
    Caption = 'Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 40
    Top = 292
    Width = 61
    Height = 19
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl10: TLabel
    Left = 245
    Top = 292
    Width = 49
    Height = 19
    Caption = 'Celular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl11: TLabel
    Left = 42
    Top = 348
    Width = 45
    Height = 19
    Caption = 'E-mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 41
    Top = 8
    Width = 490
    Height = 42
    DataSource = ds1
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 416
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
  object Edit1: TEdit
    Left = 40
    Top = 88
    Width = 81
    Height = 21
    TabOrder = 2
  end
  object edtNome: TEdit
    Left = 40
    Top = 144
    Width = 383
    Height = 21
    TabOrder = 3
  end
  object edtCPF: TEdit
    Left = 176
    Top = 88
    Width = 185
    Height = 21
    TabOrder = 4
  end
  object edtDtaNasc: TEdit
    Left = 381
    Top = 88
    Width = 150
    Height = 21
    TabOrder = 5
  end
  object edtEndereco: TEdit
    Left = 41
    Top = 203
    Width = 321
    Height = 21
    TabOrder = 6
  end
  object edtCelular: TEdit
    Left = 245
    Top = 317
    Width = 127
    Height = 21
    TabOrder = 7
  end
  object edtCidade: TEdit
    Left = 246
    Top = 255
    Width = 177
    Height = 21
    TabOrder = 8
  end
  object edtEstado: TEdit
    Left = 472
    Top = 255
    Width = 47
    Height = 21
    TabOrder = 9
  end
  object edtTelefone: TEdit
    Left = 42
    Top = 317
    Width = 127
    Height = 21
    TabOrder = 10
  end
  object edtBairro: TEdit
    Left = 40
    Top = 255
    Width = 129
    Height = 21
    TabOrder = 11
  end
  object edtEmail: TEdit
    Left = 41
    Top = 373
    Width = 383
    Height = 21
    TabOrder = 12
  end
  object queClientes: TFDQuery
    Connection = conexao.conexaoMySQL
    SQL.Strings = (
      'select * from Clientes')
    Left = 456
    Top = 424
    object queClientesidCliente: TFDAutoIncField
      FieldName = 'idCliente'
      Origin = 'idCliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object queClientescpf: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object queClientesdataNascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dataNascimento'
      Origin = 'dataNascimento'
    end
    object queClientesnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object queClientesendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object queClientesbairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 40
    end
    object queClientescidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 40
    end
    object queClientesestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      FixedChar = True
      Size = 2
    end
    object queClientestelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 12
    end
    object queClientescelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      Size = 12
    end
    object queClientesemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
  end
  object ds1: TDataSource
    DataSet = queClientes
    Left = 504
    Top = 424
  end
end
