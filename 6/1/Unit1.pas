unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComCtrls, Buttons;

type
  TForm1 = class(TForm)
    strngrd1: TStringGrid;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    UpDown1: TUpDown;
    ud1: TUpDown;
    lbl1: TLabel;
    lbl2: TLabel;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    btn5: TBitBtn;
    btn6: TBitBtn;
    stat1: TStatusBar;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n,m:Integer;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var i,j : Integer;
begin


    n:=StrToInt(edt1.text)-1;
    m:=StrToInt(edt2.text)-1;
    if (n > -1) and (m > -1)  then
    begin
        strngrd1.RowCount:=n+1;
    strngrd1.ColCount :=m+1;
     for i:=0 to m do
     begin

     for j := 0 to n do
     begin
          strngrd1.Cells[i,j]:= IntToStr(Random(10));
     end;

     end;
     end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var i,j,sum:Integer;
begin
  sum:=0;
for i:=0 to m do
begin
  for J:=0 to n do
  begin
  sum:= sum + strtoint(strngrd1.cells[i,j]);
  end;
end;
edt3.text:=IntToStr(sum);
end;

procedure TForm1.btn3Click(Sender: TObject);
var i,sum:integer;
begin
  if strtoint(edt6.Text) < strngrd1.ColCount+1 then
 begin
sum:=0;
   for i:=0 to strngrd1.rowcount-1 do
   begin
         sum:= sum+strtoint(strngrd1.cells[strtoint(edt6.Text)-1,i]);
   end;
   edt4.Text:=IntToStr(sum);
end
else edt4.Text:='???';
end;
procedure TForm1.btn4Click(Sender: TObject);
var i,max:integer;
begin
if strtoint(edt7.Text) < strngrd1.RowCount+1 then
 begin
max:=0;
   for i:=0 to strngrd1.colcount-1 do
   begin
     if strtoint(strngrd1.cells[i,strtoint(edt7.Text)-1]) > max then
         max := strtoint(strngrd1.cells[i,strtoint(edt7.Text)-1]);
   end;
   edt5.Text:=IntToStr(max);
end
else edt5.Text:='???';
end;
procedure TForm1.btn6Click(Sender: TObject);
begin
Form1.Close();
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
strngrd1.ColCount:=-2;
strngrd1.rowCount:=-2;
strngrd1.Cells[0,0]:='';
edt1.text:='0';
edt2.text:='0';
edt3.text:='';
edt4.text:='';
edt5.text:='';
edt6.text:='';
edt7.text:='';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
strngrd1.RowCount:=-1;
strngrd1.ColCount:=-1;
Stat1.Panels[0].Text := 'сегодня: ' + FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);
end;

end.
