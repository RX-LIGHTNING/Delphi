object Form1: TForm1
  Left = 217
  Top = 148
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
  object rg1: TRadioGroup
    Left = 56
    Top = 296
    Width = 137
    Height = 81
    Caption = #1058#1080#1087' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
    Items.Strings = (
      #1073#1077#1089#1087#1088#1077#1088#1099#1074#1085#1086
      #1087#1086' '#1082#1072#1076#1088#1072#1084)
    TabOrder = 0
  end
  object btn1: TButton
    Left = 232
    Top = 296
    Width = 113
    Height = 33
    Caption = #1055#1091#1089#1082
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 232
    Top = 336
    Width = 41
    Height = 33
    Caption = '<'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 304
    Top = 336
    Width = 41
    Height = 33
    Caption = '>'
    TabOrder = 3
    OnClick = btn3Click
  end
  object ani1: TAnimate
    Left = 56
    Top = 48
    Width = 289
    Height = 201
  end
end
