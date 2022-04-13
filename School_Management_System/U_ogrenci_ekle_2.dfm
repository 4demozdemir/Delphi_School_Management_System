object Form7: TForm7
  Left = 572
  Top = 231
  Caption = #214#287'renci Kaydet 2. Y'#246'ntem'
  ClientHeight = 183
  ClientWidth = 276
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
    Top = 24
    Width = 37
    Height = 13
    Caption = 'Numara'
  end
  object Label2: TLabel
    Left = 8
    Top = 54
    Width = 19
    Height = 13
    Caption = #304'sim'
  end
  object Label3: TLabel
    Left = 8
    Top = 81
    Width = 35
    Height = 13
    Caption = 'Soyisim'
  end
  object Label4: TLabel
    Left = 8
    Top = 136
    Width = 28
    Height = 13
    Caption = 'B'#246'l'#252'm'
  end
  object Button1: TButton
    Left = 183
    Top = 20
    Width = 75
    Height = 132
    Caption = 'Kaydet'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 56
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 56
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 56
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit3'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 56
    Top = 131
    Width = 121
    Height = 21
    KeyField = 'bnum'
    ListField = 'bad'
    ListSource = DataSource1
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 56
    Top = 105
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Cinsiyet Se'#231'iniz'
    Items.Strings = (
      'Kad'#305'n'
      'Erkek')
  end
  object ADOQuery1: TADOQuery
    Connection = Form1.ADOConnection1
    Parameters = <
      item
        Name = 'a'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'b'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'c'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'd'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'e'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    SQL.Strings = (
      'insert into ogrenci(ogr_no,isim,soyisim,cinsiyet,bno) '
      'values(:a,:b,:c,:d,:e)')
    Left = 184
    Top = 24
  end
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'bolum'
    Left = 192
    Top = 112
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
    Left = 224
    Top = 112
  end
  object ADOQuery2: TADOQuery
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'x'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select count(*) as say'
      'from ogrenci'
      'where ogr_no=:x')
    Left = 232
    Top = 24
    object ADOQuery2say: TIntegerField
      FieldName = 'say'
      ReadOnly = True
    end
  end
end
