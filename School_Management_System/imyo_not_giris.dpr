program imyo_not_giris;

uses
  Vcl.Forms,
  U_ana in 'U_ana.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  U_bolum_ekle_1 in 'U_bolum_ekle_1.pas' {Form2},
  U_bolum_ekle_2 in 'U_bolum_ekle_2.pas' {Form3},
  u_ders_ekle in 'u_ders_ekle.pas' {Form4},
  U_bolum_ekle_3 in 'U_bolum_ekle_3.pas' {Form5},
  U_ogrenci_ekle_1 in 'U_ogrenci_ekle_1.pas' {Form6},
  U_ogrenci_ekle_2 in 'U_ogrenci_ekle_2.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Lavender Classico');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
