object Form4: TForm4
  Left = 485
  Top = 214
  Caption = 'Ders Ekle'
  ClientHeight = 348
  ClientWidth = 274
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
  object Label2: TLabel
    Left = 128
    Top = 328
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 40
    Height = 13
    Caption = 'Ders Ad'#305
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
  object DBGrid1: TDBGrid
    Left = 23
    Top = 48
    Width = 225
    Height = 273
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'dersad'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 68
    Top = 8
    Width = 99
    Height = 21
    TabOrder = 2
    OnChange = Edit1Change
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
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select count(*) as say'
      'from ders'
      'where dersad=:x')
    Left = 152
    Top = 152
    object ADOQuery3say: TIntegerField
      FieldName = 'say'
      ReadOnly = True
    end
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
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'insert into ders(dersad) values(:x)')
    Left = 152
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 72
    Top = 64
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
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select dersad'
      'from ders'
      'where dersad like '#39'%'#39'+:x +'#39'%'#39)
    Left = 32
    Top = 56
    object ADOQuery1dersad: TStringField
      FieldName = 'dersad'
      Size = 30
    end
  end
end
