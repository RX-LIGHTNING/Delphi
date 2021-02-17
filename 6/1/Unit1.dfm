object Form1: TForm1
  Left = 174
  Top = 158
  Width = 934
  Height = 509
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 64
    Top = 32
    Width = 65
    Height = 13
    Caption = #1095#1080#1089#1083#1086' '#1089#1090#1088#1086#1082':'
  end
  object lbl2: TLabel
    Left = 328
    Top = 32
    Width = 83
    Height = 13
    Caption = #1095#1080#1089#1083#1086' '#1089#1090#1086#1083#1073#1094#1086#1074':'
  end
  object lbl3: TLabel
    Left = 240
    Top = 352
    Width = 43
    Height = 13
    Caption = #1057#1090#1086#1083#1073#1094#1072
  end
  object lbl4: TLabel
    Left = 240
    Top = 392
    Width = 35
    Height = 13
    Caption = #1089#1090#1088#1086#1082#1080
  end
  object strngrd1: TStringGrid
    Left = 40
    Top = 104
    Width = 785
    Height = 201
    FixedCols = 0
    FixedRows = 0
    TabOrder = 0
  end
  object edt1: TEdit
    Left = 64
    Top = 56
    Width = 193
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object edt2: TEdit
    Left = 328
    Top = 56
    Width = 209
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object btn1: TButton
    Left = 568
    Top = 56
    Width = 129
    Height = 25
    Caption = #1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1084#1072#1089#1089#1080#1074
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 40
    Top = 312
    Width = 89
    Height = 33
    Caption = #1057#1091#1084#1084#1072
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 40
    Top = 352
    Width = 89
    Height = 33
    Caption = #1057#1091#1084#1084#1072
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 40
    Top = 392
    Width = 89
    Height = 33
    Caption = 'max'
    TabOrder = 6
    OnClick = btn4Click
  end
  object UpDown1: TUpDown
    Left = 537
    Top = 56
    Width = 16
    Height = 21
    Associate = edt2
    TabOrder = 7
  end
  object ud1: TUpDown
    Left = 257
    Top = 56
    Width = 16
    Height = 21
    Associate = edt1
    TabOrder = 8
  end
  object edt3: TEdit
    Left = 144
    Top = 312
    Width = 81
    Height = 21
    ReadOnly = True
    TabOrder = 9
  end
  object edt4: TEdit
    Left = 144
    Top = 352
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 10
  end
  object edt5: TEdit
    Left = 144
    Top = 392
    Width = 81
    Height = 21
    Enabled = False
    TabOrder = 11
  end
  object edt6: TEdit
    Left = 304
    Top = 352
    Width = 97
    Height = 21
    TabOrder = 12
  end
  object edt7: TEdit
    Left = 304
    Top = 392
    Width = 97
    Height = 21
    TabOrder = 13
  end
  object btn5: TBitBtn
    Left = 560
    Top = 312
    Width = 137
    Height = 49
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 14
    OnClick = btn5Click
    Kind = bkNo
  end
  object btn6: TBitBtn
    Left = 560
    Top = 376
    Width = 137
    Height = 41
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 15
    OnClick = btn6Click
    Kind = bkCancel
  end
  object stat1: TStatusBar
    Left = 0
    Top = 440
    Width = 918
    Height = 30
    Panels = <
      item
        Width = 50
      end>
  end
end
