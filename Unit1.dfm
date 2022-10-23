object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 661
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI Semibold'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 112
    Top = 528
    Width = 10
    Height = 13
    Caption = 'id'
  end
  object Label2: TLabel
    Left = 250
    Top = 528
    Width = 154
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  end
  object Label3: TLabel
    Left = 328
    Top = 29
    Width = 71
    Height = 13
    Caption = #1048#1084#1103' '#1089#1077#1088#1074#1077#1088#1072':'
  end
  object Button1: TButton
    Left = 24
    Top = 64
    Width = 193
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1073#1072#1079#1091
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 288
    Top = 48
    Width = 289
    Height = 21
    TabOrder = 1
  end
  object Button2: TButton
    Left = 47
    Top = 248
    Width = 75
    Height = 25
    Caption = #1042#1099#1074#1077#1089#1090#1080
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 33
    Top = 296
    Width = 729
    Height = 120
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI Semibold'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'naim'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        Width = 200
        Visible = True
      end>
  end
  object Button3: TButton
    Left = 240
    Top = 440
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object Edit2: TEdit
    Left = 24
    Top = 547
    Width = 210
    Height = 21
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 232
    Top = 547
    Width = 217
    Height = 21
    TabOrder = 6
  end
  object Button4: TButton
    Left = 536
    Top = 545
    Width = 153
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 374
    Top = 440
    Width = 155
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1086#1077
    TabOrder = 8
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 376
    Top = 240
    Width = 257
    Height = 25
    Caption = #1058#1072#1073#1083#1080#1094#1072' '#1082#1083#1102#1095#1077#1081' -->>>>'
    TabOrder = 9
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 24
    Top = 104
    Width = 193
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1073#1072#1079#1091
    TabOrder = 10
    OnClick = Button7Click
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 24
    Top = 24
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 64
    Top = 24
  end
  object ADODataSet1: TADODataSet
    Parameters = <>
    Left = 64
    Top = 160
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 304
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 504
    Top = 152
  end
end
