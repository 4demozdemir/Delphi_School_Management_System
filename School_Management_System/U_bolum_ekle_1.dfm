object Form2: TForm2
  Left = 583
  Top = 211
  Caption = 'B'#246'l'#252'm Ekle 1. Y'#246'ntem'
  ClientHeight = 351
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 46
    Height = 13
    Caption = 'B'#246'l'#252'm Ad'#305
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 240
    Height = 273
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bad'
        Title.Alignment = taCenter
        Title.Caption = 'B'#246'l'#252'm Ad'#305
        Title.Color = clBlue
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlue
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 211
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 319
    Width = 240
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 68
    Top = 8
    Width = 99
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 173
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Kaydet'
    TabOrder = 3
    OnClick = Button1Click
  end
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'bolum'
    Left = 40
    Top = 88
    object ADOTable1bnum: TWordField
      FieldName = 'bnum'
      ReadOnly = True
    end
    object ADOTable1bad: TStringField
      FieldName = 'bad'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 88
    Top = 80
  end
end
