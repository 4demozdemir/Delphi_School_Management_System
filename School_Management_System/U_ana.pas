unit U_ana;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB,
  Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    ADOConnection1: TADOConnection;
    MainMenu1: TMainMenu;
    Blm1: TMenuItem;
    Ders1: TMenuItem;
    renci1: TMenuItem;
    Notlemleri1: TMenuItem;
    Raporlar1: TMenuItem;
    k1: TMenuItem;
    BlmEkle11: TMenuItem;
    BlmEkle21: TMenuItem;
    DersEkle1: TMenuItem;
    BlmEkle31: TMenuItem;
    renciEkle11: TMenuItem;
    renciEkle21: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure BlmEkle11Click(Sender: TObject);
    procedure BlmEkle21Click(Sender: TObject);
    procedure DersEkle1Click(Sender: TObject);
    procedure BlmEkle31Click(Sender: TObject);
    procedure renciEkle11Click(Sender: TObject);
    procedure renciEkle21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses U_bolum_ekle_1,U_bolum_ekle_2,u_ders_ekle,U_bolum_ekle_3, U_ogrenci_ekle_1, U_ogrenci_ekle_2;


procedure TForm1.BlmEkle11Click(Sender: TObject);
begin
  Application.CreateForm(TForm2, Form2);
  form2.showmodal;
  form2.Free;
end;

procedure TForm1.BlmEkle21Click(Sender: TObject);
begin
  Application.CreateForm(TForm3, Form3);
  form3.showmodal;
  form3.free;
end;

procedure TForm1.BlmEkle31Click(Sender: TObject);
begin
  Application.CreateForm(TForm5, Form5);
  form5.showmodal;
  form5.free;
end;

procedure TForm1.DersEkle1Click(Sender: TObject);
begin
  Application.CreateForm(TForm4, Form4);
  form4.ShowModal;
  form4.Free;
end;

procedure TForm1.k1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.renciEkle11Click(Sender: TObject);
begin
Application.CreateForm(TForm6, Form6);
form6.showmodal;
form6.Free;
end;

procedure TForm1.renciEkle21Click(Sender: TObject);
begin
  Application.CreateForm(TForm7, Form7);
  form7.showmodal;
  form7.free;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
form1.Caption:='ÝMYO Öðrenci Ýþleri Otomasyonu    '+DateTimeToStr(now);
end;

end.
