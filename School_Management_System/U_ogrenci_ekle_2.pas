unit U_ogrenci_ekle_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls;

type
  TForm7 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    ADOTable1bnum: TWordField;
    ADOTable1bad: TStringField;
    DataSource1: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    ComboBox1: TComboBox;
    ADOQuery2: TADOQuery;
    ADOQuery2say: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
   uses u_ana;
{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var a,b:integer;
begin
val(edit1.Text,a,b);
 if b=0 then
 begin
  ADOQuery2.Close;
  ADOQuery2.Parameters[0].Value:=strtoint(edit1.Text);
  ADOQuery2.Open;

  if ADOQuery2say.Value=0 then
   begin
    if ComboBox1.ItemIndex<>-1 then
     begin
      ADOQuery1.Close;
      ADOQuery1.Parameters[0].Value:=strtoint(edit1.Text);
      ADOQuery1.Parameters[1].Value:=edit2.text;
      ADOQuery1.Parameters[2].Value:=edit3.Text;
      ADOQuery1.Parameters[3].Value:=ComboBox1.itemindex;
      ADOQuery1.Parameters[4].Value:=ADOTable1bnum.Value;
      ADOQuery1.ExecSQL;
      ShowMessage('Kay?t Tamamlanm??t?r');
    end
   else
   ShowMessage('Cinsiyet Se?iniz');
  end
 else
 ShowMessage('Bu numaral? ??renci kay?tl?d?r');
 end
 else
ShowMessage('??renci Numaras? Say? Olmal?');

end;

procedure TForm7.FormActivate(Sender: TObject);
begin
ADOTable1.Open;
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOTable1.Close;
end;

end.
