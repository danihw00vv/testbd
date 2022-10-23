object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 621
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI Semibold'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 293
    Width = 10
    Height = 13
    Caption = 'id'
  end
  object Label2: TLabel
    Left = 264
    Top = 293
    Width = 27
    Height = 13
    Caption = #1082#1083#1102#1095
  end
  object Label3: TLabel
    Left = 440
    Top = 296
    Width = 89
    Height = 13
    Caption = #1085#1072#1095#1072#1083#1086' '#1076#1077#1081#1089#1090#1074#1080#1103
  end
  object Label4: TLabel
    Left = 560
    Top = 296
    Width = 84
    Height = 13
    Caption = #1082#1086#1085#1077#1094' '#1076#1077#1081#1089#1090#1074#1080#1103
  end
  object Label5: TLabel
    Left = 672
    Top = 296
    Width = 93
    Height = 13
    Caption = #1073#1083#1086#1082#1080#1088#1086#1074#1082#1072' (0/1)'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 96
    Width = 785
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI Semibold'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'naim'
        ReadOnly = True
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kl'
        Title.Caption = #1050#1083#1102#1095
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dnach'
        Title.Caption = #1053#1072#1095#1072#1083#1086' '#1076#1077#1081#1089#1090#1074#1080#1103
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dkon'
        Title.Caption = #1050#1086#1085#1077#1094' '#1076#1077#1081#1089#1090#1074#1080#1103
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'indikator'
        Title.Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1072
        Width = 90
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 110
    Top = 240
    Width = 75
    Height = 25
    Caption = #1042#1099#1074#1077#1089#1090#1080
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 344
    Top = 376
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 264
    Top = 240
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 24
    Top = 312
    Width = 161
    Height = 21
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 175
    Top = 312
    Width = 258
    Height = 21
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 432
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 552
    Top = 312
    Width = 105
    Height = 21
    TabOrder = 7
  end
  object Edit5: TEdit
    Left = 656
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Button4: TButton
    Left = 416
    Top = 240
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 9
    OnClick = Button4Click
  end
  object RadioGroup1: TRadioGroup
    Left = 24
    Top = 8
    Width = 133
    Height = 57
    Caption = #1042#1074#1086#1076' '#1082#1083#1102#1095#1072
    ItemIndex = 0
    Items.Strings = (
      #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
      #1042#1088#1091#1095#1085#1091#1102)
    TabOrder = 10
  end
  object RadioGroup2: TRadioGroup
    Left = 40
    Top = 464
    Width = 169
    Height = 73
    Caption = #1055#1086#1080#1089#1082' '#1087#1086'..'
    ItemIndex = 0
    Items.Strings = (
      #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      #1050#1083#1102#1095#1091)
    TabOrder = 11
  end
  object Edit6: TEdit
    Left = 40
    Top = 560
    Width = 281
    Height = 21
    TabOrder = 12
  end
  object Button5: TButton
    Left = 416
    Top = 558
    Width = 169
    Height = 25
    Caption = #1048#1089#1082#1072#1090#1100' --->>>'
    TabOrder = 13
    OnClick = Button5Click
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <>
    Left = 216
    Top = 416
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 104
    Top = 416
  end
end
