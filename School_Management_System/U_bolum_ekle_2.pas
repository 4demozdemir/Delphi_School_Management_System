unit U_bolum_ekle_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    ADOQuery1: TADOQuery;
    ADOQuery1bad: TStringField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ADOQuery3say: TIntegerField;
    Label2: TLabel;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
   uses u_ana;
{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
if edit1.Text<>'' then
 begin
  ADOQuery3.Close;
  ADOQuery3.Parameters[0].Value:=Edit1.Text;
  ADOQuery3.Open;
    if ADOQuery3say.Value=0 then
      begin
        ADOQuery2.Close;
        ADOQuery2.Parameters[0].Value:=edit1.Text;
        ADOQuery2.ExecSQL;
       edit1.Text:='';
    end
    else
    ShowMessage('Bu isimde bölüm zaten var');
 end;

end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.Parameters[0].Value:=edit1.Text;
ADOQuery1.Open;
Label2.Caption:=inttostr(ADOQuery1.RecordCount);
end;

end.
