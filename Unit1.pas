unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    lbl3: TLabel;
    edt3: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
begin
DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('insert into satuan values(null,"'+edt1.Text+'", "'+edt2.Text+'")');
DataModule2.zqry1.ExecSQL ;

DataModule2.zqry1.SQL.Clear;
DataModule2.zqry1.SQL.Add('select * from satuan');
DataModule2.zqry1.Open;
ShowMessage('Data Berhasil Disimpan!');
end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
edt1.Text:=DataModule2.zqry1.Fields[1].AsString;
edt2.Text:=DataModule2.zqry1.Fields[2].AsString;
a:= DataModule2.zqry1.Fields[0].AsString;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
begin
with DataModule2.zqry1 do
begin
  SQL.Clear;
  SQL.Add('delete from satuan where id= "'+a+'"');
  ExecSQL ;

  SQL.Clear;
  SQL.Add('select * from satuan');
  Open
end;
ShowMessage('Data Berhasil DiDelete!');
end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
edt1.Text := '';
edt2.Text := '';
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:=DataModule2.zqry1.Fields[1].AsString;
edt2.Text:=DataModule2.zqry1.Fields[2].AsString;
a:=DataModule2.zqry1.Fields[0].AsString;
end;

end.
