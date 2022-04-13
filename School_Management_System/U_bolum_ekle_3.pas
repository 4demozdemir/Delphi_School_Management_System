unit U_bolum_ekle_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    ADOQuery3: TADOQuery;
    ADOQuery3say: TIntegerField;
    ADOQuery2: TADOQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
    uses u_ana;
{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
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
  form5.Close;
  end
  else
  ShowMessage('Bu isimde b�l�m zaten var');
end;
end;

end.
