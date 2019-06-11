object conexao: Tconexao
  OldCreateOrder = False
  Height = 135
  Width = 249
  object conexaoMySQL: TFDConnection
    Params.Strings = (
      'Database=siscom'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'F:\Projetos\MeuApp\Lib\libmysql.dll'
    Left = 152
    Top = 32
  end
end
