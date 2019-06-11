object FrmSplash: TFrmSplash
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Tela de abertura'
  ClientHeight = 221
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    Left = 48
    Top = 88
    Width = 345
    Height = 28
    ForeColor = clSkyBlue
    Progress = 0
  end
  object Label1: TLabel
    Left = 48
    Top = 69
    Width = 288
    Height = 18
    Caption = 'Aguarde enquanto o programa '#233' carregado!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
end
