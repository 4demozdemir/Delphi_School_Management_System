object Form5: TForm5
  Left = 589
  Top = 231
  Caption = 'B'#246'l'#252'm Ekle 3. Y'#246'ntem'
  ClientHeight = 85
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
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 46
    Height = 13
    Caption = 'B'#246'l'#252'm Ad'#305
  end
  object Edit1: TEdit
    Left = 76
    Top = 32
    Width = 99
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 181
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Kaydet'
    TabOrder = 1
    OnClick = Button1Click
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
    Left = 120
    Top = 57
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
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      'insert into bolum(bad) values(:x)')
    Left = 168
    Top = 57
  end
end
