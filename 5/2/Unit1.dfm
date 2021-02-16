object Form1: TForm1
  Left = 194
  Top = 138
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
    Left = 296
    Top = 264
    Width = 397
    Height = 57
    TabOrder = 0
  end
  object rg1: TRadioGroup
    Left = 56
    Top = 152
    Width = 177
    Height = 177
    Caption = #1052#1091#1079#1099#1082#1072
    Items.Strings = (
      #1043#1072#1076#1079#1072
      '300$'
      'Gachi-havana')
    TabOrder = 1
    OnClick = rg1Click
  end
end
