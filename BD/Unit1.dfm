object Form1: TForm1
  Left = 436
  Top = 162
  Width = 1219
  Height = 778
  Caption = #1052#1072#1075#1072#1079#1080#1085' '#1072#1074#1090#1086#1079#1072#1087#1095#1072#1089#1090#1080#1085
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1201
    Height = 713
    TabOrder = 0
    object pnl1: TPanel
      Left = 0
      Top = 0
      Width = 1201
      Height = 377
      TabOrder = 0
      object dbgrd1: TDBGrid
        Left = 1
        Top = 1
        Width = 1199
        Height = 375
        Align = alClient
        DataSource = Form5.dsCheki
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object pnl2: TPanel
      Left = 1
      Top = 375
      Width = 1200
      Height = 49
      Align = alCustom
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object lbl2: TLabel
        Left = 88
        Top = 16
        Width = 30
        Height = 15
        Caption = #1044#1072#1090#1072':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = lbl2Click
      end
      object lbl3: TLabel
        Left = 5
        Top = 16
        Width = 37
        Height = 15
        Caption = #1063#1077#1082' '#8470
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 456
        Top = 16
        Width = 110
        Height = 15
        Caption = #1057#1091#1084#1072' '#1087#1086' '#1095#1077#1082#1091' ('#1075#1088#1085'): '
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btn1: TButton
        Left = 336
        Top = 8
        Width = 97
        Height = 25
        Caption = #1057#1090#1074#1086#1088#1080#1090#1080' '#1063#1077#1082
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btn1Click
      end
      object dtp1: TDateTimePicker
        Left = 135
        Top = 12
        Width = 186
        Height = 23
        Date = 41966.651846273090000000
        Time = 41966.651846273090000000
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object pnl3: TPanel
      Left = 1
      Top = 424
      Width = 1199
      Height = 288
      Align = alBottom
      Enabled = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object lbl5: TLabel
        Left = 24
        Top = 93
        Width = 60
        Height = 15
        Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl6: TLabel
        Left = 23
        Top = 17
        Width = 42
        Height = 15
        Caption = #1058#1086#1074#1072#1088#1080':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl7: TLabel
        Left = 25
        Top = 134
        Width = 56
        Height = 15
        Caption = #1055#1077#1088#1089#1086#1085#1072#1083':'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl8: TLabel
        Left = 24
        Top = 53
        Width = 114
        Height = 15
        Caption = #1062#1110#1085#1072' '#1079#1072' '#1096#1090#1091#1082#1091' ('#1075#1088#1085'): '
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl9: TLabel
        Left = 24
        Top = 176
        Width = 108
        Height = 15
        Caption = #1062#1110#1085#1072' '#1087#1088#1086#1076#1072#1078#1110'  ('#1075#1088#1085'):'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt1: TEdit
        Left = 96
        Top = 88
        Width = 137
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '1'
      end
      object dblkcbb1: TDBLookupComboBox
        Left = 104
        Top = 8
        Width = 153
        Height = 23
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        KeyField = #1050#1086#1076'_'#1090#1086#1074#1072#1088#1072
        ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        ListSource = Form5.dsTovari2
        ParentFont = False
        TabOrder = 1
        OnClick = dblkcbb1Click
      end
      object dblkcbb2: TDBLookupComboBox
        Left = 96
        Top = 128
        Width = 153
        Height = 21
        KeyField = #1050#1086#1076'_'#1087#1088#1072#1094#1110#1074#1085#1080#1082#1072
        ListField = #1055#1030#1041
        ListSource = Form5.dsPracivniki
        TabOrder = 2
      end
      object btn2: TButton
        Left = 24
        Top = 208
        Width = 75
        Height = 25
        Caption = #1044#1086#1076#1072#1090#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btn2Click
      end
      object dbgrd2: TDBGrid
        Left = 296
        Top = 16
        Width = 913
        Height = 233
        DataSource = Form5.dsProdazhi2
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = RUSSIAN_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1087#1088#1086#1076#1072#1078#1110
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1076#1072#1090#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1090#1086#1074#1072#1088#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1091#1084#1084#1072
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1110#1083#1100#1082#1110#1089#1090#1100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1095#1077#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1055#1030#1041
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1094#1110#1085#1072
            Width = 80
            Visible = True
          end>
      end
      object btn3: TButton
        Left = 104
        Top = 208
        Width = 75
        Height = 25
        Caption = #1042#1080#1076#1072#1083#1080#1090#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btn3Click
      end
      object btn4: TButton
        Left = 184
        Top = 208
        Width = 97
        Height = 25
        Caption = #1056#1086#1079#1076#1088#1091#1082#1091#1074#1072#1090#1080
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = btn4Click
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\AL' +
      'L\study\BD\bd11.mdb;Mode=Share Deny None;Persist Security Info=F' +
      'alse;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet' +
      ' OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Da' +
      'tabase Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OL' +
      'EDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="' +
      '";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Datab' +
      'ase=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB' +
      ':Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 72
    Top = 768
  end
  object QueryTovari: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Tovari ORDER BY Code')
    Left = 8
    Top = 720
  end
  object MainMenu1: TMainMenu
    Left = 144
    Top = 768
    object N1: TMenuItem
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082#1080
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1110
      OnClick = N3Click
    end
  end
  object DataTovari: TDataSource
    DataSet = QueryTovari
    Left = 8
    Top = 768
  end
end
