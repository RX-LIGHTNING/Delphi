unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Menus, StdCtrls, ExtCtrls, ComCtrls;

type
    Film=record
     genre:string[255];
     name:string[255];
     county:string[255];
     rate:string[255];
     fees:integer;
   end;
  TForm1 = class(TForm)
    mm1: TMainMenu;
    strngrd1: TStringGrid;
    edt1: TEdit;
    cbb1: TComboBox;
    edt2: TEdit;
    rg1: TRadioGroup;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    cbb2: TComboBox;
    dlgOpen1: TOpenDialog;
    dlgSave1: TSaveDialog;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    cbb3: TComboBox;
    cbb4: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    edt3: TEdit;
    btn4: TButton;
    ud1: TUpDown;
    procedure N2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    f: file of film;
    temp: film;
    CurrentRec,j, i, n, num_p, num_k, indexreplace, delet_elements: integer;
     A, B: array[1..100] of film;
implementation

{$R *.dfm}

procedure TForm1.N2Click(Sender: TObject);
var i:Integer;
begin
if dlgOpen1.Execute then
begin
  for i:=0 to Strngrd1.ColCount do
 Strngrd1.Cols[i].Clear;
for j:=0 to Strngrd1.RowCount do
  Strngrd1.Rows[j].Clear;
strngrd1.Cells[0,0]:= 'Название';
strngrd1.Cells[1,0]:= 'Жанр';
strngrd1.Cells[2,0]:= 'Страна';
strngrd1.Cells[3,0]:= 'Рейтинг';
strngrd1.Cells[4,0]:= 'Сборы в мире';
 num_p:=0;
 CurrentRec:=1;


  Strngrd1.Rows[j].Clear;
AssignFile(f, dlgOpen1.FileName);
Reset(f);
    while not (EOF(f)) do
    begin
      num_p := num_p + 1;
      read(f, A[num_p]);
      strngrd1.Cells[0,num_p]:=A[num_p].name;
      strngrd1.Cells[1,num_p]:=A[num_p].genre;
      strngrd1.Cells[2,num_p]:= A[num_p].county;
      strngrd1.Cells[3,num_p]:= A[num_p].rate;
      strngrd1.Cells[4,num_p]:= inttostr(A[num_p].fees);
      if ( strngrd1.RowCount<num_p) then
            strngrd1.RowCount:= strngrd1.RowCount+1;
    end;

    end;

    end;

procedure TForm1.FormCreate(Sender: TObject);
begin
strngrd1.Cells[0,0]:= 'Название';
strngrd1.Cells[1,0]:= 'Жанр';
strngrd1.Cells[2,0]:= 'Страна';
strngrd1.Cells[3,0]:= 'Рейтинг';
strngrd1.Cells[4,0]:= 'Сборы в мире';
CurrentRec:=0;

end;

procedure TForm1.btn1Click(Sender: TObject);
begin
    currentRec:=num_p+1;
      num_p:=num_p+1;
case rg1.ItemIndex of
0:strngrd1.Cells[3,currentRec]:='0+';
1:strngrd1.Cells[3,currentRec]:='3+';
2:strngrd1.Cells[3,currentRec]:='6+';
3:strngrd1.Cells[3,currentRec]:='12+';
4:strngrd1.Cells[3,currentRec]:='16+';
5:strngrd1.Cells[3,currentRec]:='18+';
end;
strngrd1.Cells[0,currentRec]:= edt1.Text;
strngrd1.Cells[4,currentRec]:= edt2.Text;
strngrd1.Cells[1,currentRec]:= cbb1.Text;
strngrd1.Cells[2,currentRec]:= cbb2.Text;


 A[num_p].name:=edt1.text;
  A[num_p].fees:=strtoint(edt2.text);
  a[num_p].genre:=cbb1.Text;
  a[num_p].county:=cbb2.text;
  a[num_p].rate:=strngrd1.Cells[3,currentRec];


end;

procedure TForm1.N3Click(Sender: TObject);
begin
  if dlgOpen1.Execute then
begin
AssignFile(f, dlgOpen1.FileName);
Rewrite(f);
for i := 1 to num_p do
begin
if a[i].name <> '' then
Write(f, a[i]);
end;
end;
end;

procedure TForm1.btn2Click(Sender: TObject);
var temp2:Integer;
begin
                     for i:=0 to Strngrd1.ColCount do
 Strngrd1.Cols[i].Clear;
for j:=0 to Strngrd1.RowCount do
  Strngrd1.Rows[j].Clear;
  strngrd1.Cells[0,0]:= 'Название';
strngrd1.Cells[1,0]:= 'Жанр';
strngrd1.Cells[2,0]:= 'Страна';
strngrd1.Cells[3,0]:= 'Рейтинг';
strngrd1.Cells[4,0]:= 'Сборы в мире';
for i:=0 to 100 do
begin
b[i]:=a[i];
end;
for i:=0 to 100 do
begin
  for j:=0 to 100 do
begin
  if b[j].fees>b[j+1].fees then
  begin
    //
      temp:=b[j];
      b[j]:=b[j+1];
      b[j+1]:= temp;
    //

  end;
end;
end;
temp2:=1;
for i:=100 DOWNTO 0 do
begin
  if b[i].name <> '' then
  begin
strngrd1.Cells[0,temp2]:= b[i].name;
if (b[i].fees) <> 0 then
strngrd1.Cells[4,temp2]:= IntToStr(b[i].fees);
strngrd1.Cells[1,temp2]:= b[i].genre;
strngrd1.Cells[2,temp2]:= b[i].county;
end;
temp2:=temp2+1;

end;
end;


procedure TForm1.btn3Click(Sender: TObject);
var str1,str2:string; temp2:integer;
begin

temp2:=1;
str1:=cbb3.Text;//что там менять
str2:=cbb4.Text;//заменить на
 for i:=0 to 100 do
 begin
   if a[i].genre=str1 then
      a[i].genre:=str2;
 end;
  for i:=0 to Strngrd1.ColCount do
 Strngrd1.Cols[i].Clear;
for j:=0 to Strngrd1.RowCount do
  Strngrd1.Rows[j].Clear;
strngrd1.Cells[0,0]:= 'Название';
strngrd1.Cells[1,0]:= 'Жанр';
strngrd1.Cells[2,0]:= 'Страна';
strngrd1.Cells[3,0]:= 'Рейтинг';
strngrd1.Cells[4,0]:= 'Сборы в мире';

 for i:=1 to 100 do
begin
if a[i].name <> '' then
begin
strngrd1.Cells[0,temp2]:= a[i].name;
if (a[i].fees) <> 0 then
strngrd1.Cells[4,temp2]:= IntToStr(a[i].fees);
strngrd1.Cells[1,temp2]:= a[i].genre;
strngrd1.Cells[2,temp2]:= a[i].county;
strngrd1.Cells[3,temp2]:= a[i].rate;
end;
temp2:=temp2+1;

end;

 end;
procedure TForm1.btn4Click(Sender: TObject);
var i,j,temp2:integer;
begin
  temp2:=1;
  i:=strtoint(edt3.text);
   a[i].genre:='';
   a[i].name:='';
   a[i].county:='';
   a[i].rate:='';
   a[i].fees:=0;
   for i:=0 to Strngrd1.ColCount do
 Strngrd1.Cols[i].Clear;
for j:=0 to Strngrd1.RowCount do
  Strngrd1.Rows[j].Clear;
strngrd1.Cells[0,0]:= 'Название';
strngrd1.Cells[1,0]:= 'Жанр';
strngrd1.Cells[2,0]:= 'Страна';
strngrd1.Cells[3,0]:= 'Рейтинг';
strngrd1.Cells[4,0]:= 'Сборы в мире';
   for i:=1 to 100 do
begin
if a[i].name <> '' then
begin
strngrd1.Cells[0,temp2]:= a[i].name;
if a[i].fees<>0 then
begin
strngrd1.Cells[4,temp2]:= IntToStr(a[i].fees);
end;
strngrd1.Cells[1,temp2]:= a[i].genre;
strngrd1.Cells[2,temp2]:= a[i].county;
strngrd1.Cells[3,temp2]:= a[i].rate;
end;
temp2:=temp2+1;
end;
 end;
end.
