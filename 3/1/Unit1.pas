unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn5: TButton;
    lbl4: TLabel;
    btn6: TButton;
    btn7: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
 function summ(x,y: integer): integer;stdcall; external 'project2.dll' name 'summ';
function min(x,y: integer): integer;stdcall;  external 'project2.dll'name 'min';
function mul(x,y: integer): integer;stdcall;  external 'project2.dll'name 'mul';
function divide(x,y: integer): integer;stdcall;  external 'project2.dll'name 'divide';
{$R *.dfm}


procedure TForm1.btn1Click(Sender: TObject);
begin
  lbl3.Caption:='Результат: ';
  lbl3.caption:=lbl3.Caption + IntToStr(summ(strtoint(edt1.text),strtoint(edt2.text)));
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  lbl3.Caption:='Результат: ';
  lbl3.caption:=lbl3.Caption + IntToStr(min(strtoint(edt1.text),strtoint(edt2.text)));
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  lbl3.Caption:='Результат: ';
  lbl3.caption:=lbl3.Caption + IntToStr(mul(strtoint(edt1.text),strtoint(edt2.text)));
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  lbl3.Caption:='Результат: ';
  lbl3.caption:=lbl3.Caption + IntToStr(divide(strtoint(edt1.text),strtoint(edt2.text)));
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
               lbl4.Caption:='Кузнецов Роман';
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
      edt1.Text :='';
      edt2.Text :='';
      lbl3.Caption:= '';
      lbl4.Caption:= '';
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
