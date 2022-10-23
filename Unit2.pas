unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ADODB, unit1, ExtCtrls;

type
  TForm2 = class(TForm)
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button4: TButton;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RadioGroup2: TRadioGroup;
    Edit6: TEdit;
    Button5: TButton;
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2; zap3:string;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
//var zap3:string;
begin
zap3:='SELECT naimenov.naim, inform.kl, inform.dnach, inform.dkon, inform.indikator '+
'FROM inform '+'INNER JOIN naimenov '+'ON inform.idorg = naimenov.id;';
adoquery1.SQL.Text:=zap3;
adoquery1.Open;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
if (radiogroup1.ItemIndex=0) then
adoquery1.SQL.Text:='insert into inform (idorg, dnach, dkon, indikator) values ('+#39+
edit1.Text+#39+', '{+#39+edit2.text+#39+', '}+#39+edit3.text+#39+', '+#39+edit4.text+#39+', '+#39+edit5.text+#39+'); COMMIT;'
 else
adoquery1.SQL.Text:='insert into inform (idorg, kl, dnach, dkon, indikator) values ('+#39+
edit1.Text+#39+', '+#39+edit2.text+#39+', '+#39+edit3.text+#39+', '+#39+edit4.text+#39+', '+#39+edit5.text+#39+'); COMMIT;';
adoquery1.ExecSQL;
edit1.text:=''; edit2.Text:=''; edit3.Text:=''; edit4.Text:=''; edit5.Text:='';
zap3:='SELECT naimenov.naim, inform.kl, inform.dnach, inform.dkon, inform.indikator '+
'FROM inform '+'INNER JOIN naimenov '+'ON inform.idorg = naimenov.id;';
adoquery1.SQL.Text:=zap3;
adoquery1.Open;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
DBGrid1.DataSource.DataSet.Post;
ShowMessage('Изменения внесены в базу');
zap3:='SELECT naimenov.naim, inform.kl, inform.dnach, inform.dkon, inform.indikator '+
'FROM inform '+'INNER JOIN naimenov '+'ON inform.idorg = naimenov.id;';
adoquery1.SQL.Text:=zap3;
adoquery1.Open;
end;

procedure TForm2.Button4Click(Sender: TObject);

    
begin
adoquery1.SQL.Text:='delete inform where kl='+#39+DBGrid1.SelectedField.DataSet.FieldByName('kl').asstring+#39+'; COMMIT;';
adoquery1.ExecSQL;
zap3:='SELECT naimenov.naim, inform.kl, inform.dnach, inform.dkon, inform.indikator '+
'FROM inform '+'INNER JOIN naimenov '+'ON inform.idorg = naimenov.id;';
adoquery1.SQL.Text:=zap3;
adoquery1.Open;
//showmessage(DBGrid1.SelectedField.DataSet.FieldByName('kl').AsString);

end;

procedure TForm2.Button5Click(Sender: TObject);
begin
if (radiogroup2.ItemIndex=0) then
 zap3:='SELECT naimenov.naim, inform.kl, inform.dnach, inform.dkon, inform.indikator '+
'FROM inform '+'INNER JOIN naimenov '+'ON inform.idorg = naimenov.id where naimenov.naim='+#39+edit6.Text+#39;
adoquery1.SQL.Text:=zap3;
adoquery1.Open;

if (radiogroup2.ItemIndex=1) then
 zap3:='SELECT naimenov.naim, inform.kl, inform.dnach, inform.dkon, inform.indikator '+
'FROM inform '+'INNER JOIN naimenov '+'ON inform.idorg = naimenov.id where inform.kl='+#39+edit6.Text+#39;
adoquery1.SQL.Text:=zap3;
adoquery1.Open;

end;

procedure TForm2.FormShow(Sender: TObject);
begin
form1.adoconnection1.close;
form1.adoconnection1.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Data Source='
+form1.edit1.Text;
 if (form1.adoconnection1.Connected=false) then form1.adoconnection1.Connected:=true;
adoquery1.SQL.Text:='use belgosles2_';
adoquery1.ExecSQL;
end;

end.
