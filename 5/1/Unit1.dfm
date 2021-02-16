object Form1: TForm1
  Left = 194
  Top = 151
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mp1: TMediaPlayer
    Left = 120
    Top = 360
    Width = 397
    Height = 49
    DeviceType = dtAVIVideo
    Display = pnl1
    FileName = 'C:\bart.avi'
    TabOrder = 0
  end
  object btn1: TButton
    Left = 16
    Top = 360
    Width = 89
    Height = 49
    Caption = #1042#1099#1073#1088#1072#1090#1100
    TabOrder = 1
    OnClick = btn1Click
  end
  object pnl1: TPanel
    Left = 128
    Top = 144
    Width = 377
    Height = 209
    TabOrder = 2
  end
end
