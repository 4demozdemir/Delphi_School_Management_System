object Form3: TForm3
  Left = 624
  Top = 178
  Caption = 'B'#246'l'#252'm Ekle 2. Y'#246'ntem'
  ClientHeight = 356
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 46
    Height = 13
    Caption = 'B'#246'l'#252'm Ad'#305
  end
  object Label2: TLabel
    Left = 128
    Top = 328
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Button1: TButton
    Left = 173
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Kaydet'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 68
    Top = 8
    Width = 99
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
  end
  object DBGrid1: TDBGrid
    Left = 23
    Top = 49
    Width = 225
    Height = 273
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'bad'
        Visible = True
      end>
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'x'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select bad'
      'from bolum'
      'where bad like '#39'%'#39'+:x +'#39'%'#39)
    Left = 32
    Top = 56
    object ADOQuery1bad: TStringField
      FieldName = 'bad'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 72
    Top = 64
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'x'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'insert into bolum(bad) values(:x)')
    Left = 96
    Top = 160
  end
  object ADOQuery3: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'x'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'select count(*) as say'
      'from bolum'
      'where bad=:x')
    Left = 152
    Top = 152
    object ADOQuery3say: TIntegerField
      FieldName = 'say'
      ReadOnly = True
    end
  end
end
