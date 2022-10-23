unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids, DBCtrls;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    Edit1: TEdit;
    ADODataSet1: TADODataSet;
    Button2: TButton;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button3: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Button4: TButton;
    Button5: TButton;
    Label3: TLabel;
    Button6: TButton;
    Button7: TButton;
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

function GetComputerNetName: string;
var
  buffer: array[0..255] of char;
  size: dword;
begin
  size := 256;
  if GetComputerName(buffer, size) then
    Result := buffer
  else
    Result := ''
end;


procedure TForm1.Button1Click(Sender: TObject);
var tabl2:string;
begin
adoconnection1.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Data Source='
+edit1.Text;
adoconnection1.Connected:=true;
adoquery1.SQL.Text:='CREATE database belgosles2_';
adoquery1.ExecSQL;
adoquery1.SQL.Text:='use belgosles2_; CREATE table naimenov (id varchar(256) primary key, naim varchar(256)); COMMIT;';
adoquery1.ExecSQL; 
tabl2:='use belgosles2_; CREATE table inform (id varchar(256), kl UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID() primary key, '+
'dnach date, dkon date, idorg varchar(256), indikator bit not null);';
adoquery1.SQL.Text:=tabl2;
adoquery1.ExecSQL;
end;

procedure TForm1.Button2Click(Sender: TObject);
var zap1:string;
begin
adoconnection1.close;
adoconnection1.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Data Source='
+edit1.Text;
 if (adoconnection1.Connected=false) then adoconnection1.Connected:=true;
adoquery2.SQL.Text:='use belgosles2_';
adoquery2.ExecSQL;
adoquery2.SQL.Text:='select * from naimenov';
adoquery2.Open;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
DBGrid1.DataSource.DataSet.Post;
ShowMessage('Изменения внесены в базу');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
adoquery2.SQL.Text:='insert into naimenov (id, naim) values ('+#39+
edit2.Text+#39+', '+#39+edit3.text+#39+'); COMMIT;';
adoquery2.ExecSQL;
edit2.text:=''; edit3.Text:='';
adoquery2.SQL.Text:='select * from naimenov';
adoquery2.Open;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
DBGrid1.SelectedField.DataSet.Delete;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
adoconnection1.close;
adoconnection1.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Data Source='
+edit1.Text;
 if (adoconnection1.Connected=false) then adoconnection1.Connected:=true;
adoquery1.SQL.Text:='drop database belgosles2_';
adoquery1.ExecSQL;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
edit1.Text:=GetComputerNetName+'\SQLEXPRESS';

end;

end.
