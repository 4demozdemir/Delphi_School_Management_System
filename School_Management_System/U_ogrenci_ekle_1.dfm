object Form6: TForm6
  Left = 450
  Top = 196
  Caption = #214#287'renci Kaydet 1. Y'#246'ntem'
  ClientHeight = 378
  ClientWidth = 587
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
    Left = 24
    Top = 24
    Width = 34
    Height = 13
    Caption = 'ogr_no'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 17
    Height = 13
    Caption = 'isim'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 104
    Width = 34
    Height = 13
    Caption = 'soyisim'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 168
    Width = 46
    Height = 13
    Caption = 'B'#246'l'#252'm Ad'#305
  end
  object Label5: TLabel
    Left = 24
    Top = 208
    Width = 25
    Height = 13
    Caption = 'resim'
    FocusControl = DBImage1
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 21
    Width = 134
    Height = 21
    DataField = 'ogr_no'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 61
    Width = 264
    Height = 21
    DataField = 'isim'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 80
    Top = 101
    Width = 264
    Height = 21
    DataField = 'soyisim'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBCheckBox1: TDBCheckBox
    Left = 80
    Top = 133
    Width = 97
    Height = 17
    Caption = 'cinsiyet'
    DataField = 'cinsiyet'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBImage1: TDBImage
    Left = 80
    Top = 205
    Width = 105
    Height = 105
    DataField = 'resim'
    DataSource = DataSource1
    Stretch = True
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 316
    Width = 320
    Height = 37
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 80
    Top = 167
    Width = 145
    Height = 21
    DataField = 'bno'
    DataSource = DataSource1
    KeyField = 'bnum'
    ListField = 'bad'
    ListSource = DataSource2
    TabOrder = 6
  end
  object Button1: TButton
    Left = 191
    Top = 208
    Width = 75
    Height = 102
    Caption = 'Resim Se'#231
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 504
    Top = 19
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 8
    OnClick = Button2Click
  end
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'ogrenci'
    Left = 224
    Top = 24
    object ADOTable1ogr_no: TIntegerField
      FieldName = 'ogr_no'
    end
    object ADOTable1isim: TStringField
      FieldName = 'isim'
    end
    object ADOTable1soyisim: TStringField
      FieldName = 'soyisim'
    end
    object ADOTable1cinsiyet: TBooleanField
      FieldName = 'cinsiyet'
    end
    object ADOTable1bno: TWordField
      FieldName = 'bno'
    end
    object ADOTable1resim: TBlobField
      FieldName = 'resim'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 256
    Top = 29
  end
  object ADOTable2: TADOTable
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'bolum'
    Left = 432
    Top = 24
    object ADOTable2bnum: TWordField
      FieldName = 'bnum'
      ReadOnly = True
    end
    object ADOTable2bad: TStringField
      FieldName = 'bad'
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 480
    Top = 24
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 392
    Top = 128
  end
end
