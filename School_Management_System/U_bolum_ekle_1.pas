unit U_bolum_ekle_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    ADOTable1: TADOTable;
    ADOTable1bnum: TWordField;
    ADOTable1bad: TStringField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
   uses u_ana;
{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
ADOTable1.Insert;
ADOTable1bad.Value:=edit1.Text;
ADOTable1.Post;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
ADOTable1.Open;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOTable1.Close;
end;

end.
