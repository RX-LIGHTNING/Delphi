object Form1: TForm1
  Left = 203
  Top = 132
  Width = 928
  Height = 478
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
  object mmo1: TMemo
    Left = 240
    Top = 16
    Width = 169
    Height = 297
    Lines.Strings = (
      'mmo1')
    PopupMenu = pm1
    TabOrder = 0
  end
  object mmo2: TMemo
    Left = 424
    Top = 16
    Width = 161
    Height = 297
    Lines.Strings = (
      'mmo2')
    TabOrder = 1
  end
  object mm1: TMainMenu
    object N1: TMenuItem
      Caption = #1056#1040#1041#1054#1058#1040' '#1057' '#1060#1040#1049#1051#1040#1052#1048
      object N2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1089#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1080#1079#1084#1077#1085#1080#1090#1100' '#1092#1072#1081#1083
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = '----------------------'
      end
      object N6: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N6Click
      end
    end
    object N9: TMenuItem
      Caption = #1054#1063#1048#1057#1058#1048#1058#1068
      object mmo11: TMenuItem
        Caption = 'mmo1'
        OnClick = mmo11Click
      end
      object mmo21: TMenuItem
        Caption = 'mmo2'
        OnClick = mmo21Click
      end
    end
  end
  object pm1: TPopupMenu
    Left = 24
    object N7: TMenuItem
      Caption = #1086#1095#1080#1089#1090#1080#1090#1100
      OnClick = N7Click
    end
    object N8: TMenuItem
      Caption = #1087#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100
      OnClick = N8Click
    end
  end
  object dlgOpen1: TOpenDialog
    FileName = 'C:\Users\'#1056#1086#1084#1072#1085'\Desktop\'#1083#1072#1073#1099'\delphi\7\1\1.txt'
    FilterIndex = 0
    Left = 56
    Top = 8
  end
  object dlgSave1: TSaveDialog
    FileName = 'C:\Users\'#1056#1086#1084#1072#1085'\Desktop\'#1083#1072#1073#1099'\delphi\7\1\1.txt'
    FilterIndex = 0
    Left = 96
    Top = 8
  end
end
