object Form1: TForm1
  Left = 206
  Top = 149
  Width = 1003
  Height = 558
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 808
    Top = 160
    Width = 12
    Height = 13
    Caption = #1085#1072
  end
  object lbl2: TLabel
    Left = 808
    Top = 120
    Width = 76
    Height = 13
    Caption = #1079#1072#1084#1077#1085#1080#1090#1100' '#1078#1072#1085#1088
  end
  object strngrd1: TStringGrid
    Left = 152
    Top = 8
    Width = 345
    Height = 241
    FixedCols = 4
    RowCount = 100
    FixedRows = 0
    TabOrder = 0
    RowHeights = (
      38
      24
      24
      24
      24
      24
      26
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24
      24)
  end
  object edt1: TEdit
    Left = 336
    Top = 288
    Width = 161
    Height = 21
    TabOrder = 1
    Text = #1053#1072#1079#1074#1072#1085#1080#1077
  end
  object cbb1: TComboBox
    Left = 120
    Top = 288
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Fantasy'
      'Magic'
      'Medieval'
      'Gachi')
  end
  object edt2: TEdit
    Left = 336
    Top = 320
    Width = 161
    Height = 21
    TabOrder = 3
    Text = #1042#1099#1088#1091#1095#1082#1072
  end
  object rg1: TRadioGroup
    Left = 504
    Top = 8
    Width = 161
    Height = 241
    Caption = #1056#1077#1081#1090#1080#1085#1075
    Items.Strings = (
      '0+'
      '3+'
      '6+'
      '12+'
      '16+'
      '18+')
    TabOrder = 4
  end
  object cbb2: TComboBox
    Left = 120
    Top = 320
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Russia'
      'Ukraine'
      'USA'
      'France'
      '')
  end
  object btn1: TButton
    Left = 512
    Top = 288
    Width = 161
    Height = 57
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 712
    Top = 16
    Width = 209
    Height = 65
    Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1084#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1081' '#1074#1099#1088#1091#1095#1082#1077
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 712
    Top = 136
    Width = 89
    Height = 57
    Caption = #1047#1072#1084#1077#1085#1080#1090#1100
    TabOrder = 8
    OnClick = btn3Click
  end
  object cbb3: TComboBox
    Left = 808
    Top = 136
    Width = 113
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'Fantasy'
      'Magic'
      'Medieval'
      'Gachi')
  end
  object cbb4: TComboBox
    Left = 808
    Top = 176
    Width = 113
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      'Fantasy'
      'Magic'
      'Medieval'
      'Gachi')
  end
  object edt3: TEdit
    Left = 872
    Top = 232
    Width = 25
    Height = 21
    TabOrder = 11
    Text = '0'
  end
  object btn4: TButton
    Left = 720
    Top = 232
    Width = 145
    Height = 25
    Caption = #1091#1076#1072#1083#1080#1090#1100' '#1101#1083#1083#1077#1084#1077#1085#1090
    TabOrder = 12
    OnClick = btn4Click
  end
  object ud1: TUpDown
    Left = 897
    Top = 232
    Width = 16
    Height = 21
    Associate = edt3
    TabOrder = 13
  end
  object mm1: TMainMenu
    Left = 16
    Top = 8
    object N1: TMenuItem
      Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1092#1072#1081#1083#1086#1084
      object N2: TMenuItem
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1089#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083
        OnClick = N3Click
      end
    end
  end
  object dlgOpen1: TOpenDialog
    Left = 48
    Top = 8
  end
  object dlgSave1: TSaveDialog
    Left = 80
    Top = 8
  end
end
