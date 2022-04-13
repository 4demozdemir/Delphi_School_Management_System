unit u_ders_ekle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB;

type
  TForm4 = class(TForm)
    Button1: TButton;
    ADOQuery3: TADOQuery;
    ADOQuery3say: TIntegerField;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    ADOQuery1dersad: TStringField;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
    uses u_ana;
{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
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
  ShowMessage('Bu isimde ders zaten var');
 end;
end;

procedure TForm4.Edit1Change(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.Parameters[0].Value:=edit1.Text;
ADOQuery1.Open;
Label2.Caption:=inttostr(ADOQuery1.RecordCount);
end;

end.
