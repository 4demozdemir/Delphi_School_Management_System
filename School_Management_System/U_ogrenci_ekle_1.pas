unit U_ogrenci_ekle_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Mask, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtDlgs;

type
  TForm6 = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1ogr_no: TIntegerField;
    ADOTable1isim: TStringField;
    ADOTable1soyisim: TStringField;
    ADOTable1cinsiyet: TBooleanField;
    ADOTable1bno: TWordField;
    ADOTable1resim: TBlobField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    DBImage1: TDBImage;
    DBNavigator1: TDBNavigator;
    ADOTable2: TADOTable;
    ADOTable2bnum: TWordField;
    ADOTable2bad: TStringField;
    DataSource2: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    OpenPictureDialog1: TOpenPictureDialog;
    Button1: TButton;
    Button2: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
     uses u_ana;
{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
ADOTable1.Edit;
OpenPictureDialog1.Execute;
DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
ADOTable1.Edit;
ADOTable1isim.Value:='aaa';
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
ADOTable1.Open;
ADOTable2.Open;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOTable1.Close;
ADOTable2.Close;
end;

end.
