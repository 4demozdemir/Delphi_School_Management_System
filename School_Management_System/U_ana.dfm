object Form1: TForm1
  Left = 450
  Top = 249
  Caption = #304'MYO '#214#287'renci '#304#351'leri Otomasyonu'
  ClientHeight = 250
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 224
    Top = 120
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=123;Persist Security Info=True;User' +
      ' ID=gorsel;Initial Catalog=gorsel;Data Source=309ogret'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 120
  end
  object MainMenu1: TMainMenu
    Left = 136
    Top = 120
    object Blm1: TMenuItem
      Caption = 'B'#246'l'#252'm'
      object BlmEkle11: TMenuItem
        Caption = 'B'#246'l'#252'm Ekle 1'
        OnClick = BlmEkle11Click
      end
      object BlmEkle21: TMenuItem
        Caption = 'B'#246'l'#252'm Ekle 2'
        OnClick = BlmEkle21Click
      end
      object BlmEkle31: TMenuItem
        Caption = 'B'#246'l'#252'm Ekle 3'
        OnClick = BlmEkle31Click
      end
    end
    object Ders1: TMenuItem
      Caption = 'Ders'
      object DersEkle1: TMenuItem
        Caption = 'Ders Ekle'
        OnClick = DersEkle1Click
      end
    end
    object renci1: TMenuItem
      Caption = #214#287'renci'
      object renciEkle11: TMenuItem
        Caption = #214#287'renci Ekle 1'
        OnClick = renciEkle11Click
      end
      object renciEkle21: TMenuItem
        Caption = #214#287'renci Ekle 2'
        OnClick = renciEkle21Click
      end
    end
    object Notlemleri1: TMenuItem
      Caption = 'Not '#304#351'lemleri'
    end
    object Raporlar1: TMenuItem
      Caption = 'Raporlar'
    end
    object k1: TMenuItem
      Caption = #199#305'k'#305#351
      OnClick = k1Click
    end
  end
end
