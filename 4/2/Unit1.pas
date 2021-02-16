unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pb1: TPaintBox;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
const
  L = 440;
  H = 100;
var x,y:integer;
begin

  x := 10;
  y := 10;
with pb1.Canvas do begin

    Brush.Color := clWhite;
    Pen.Color := clWhite;
    Rectangle(x, y, x + L, y + H * 2);
    Brush.Color := clRed;
    Pen.Color := clRed;
    Rectangle(x, y + H * 2 - H div 2, x + L, y + H * 3);
    Brush.Color := clBlue;
    Pen.Color := clBlue;
    Polygon([Point(x, y), Point(x + L div 2, y + 3 * H div 2), Point(x, y + H *
      3)]);
    Pen.Color := clBlack;
    Brush.Style := bsClear;
    Rectangle(x, y, x + L, y + H * 3 + 1);
end;

end;

procedure TForm1.btn3Click(Sender: TObject);
begin


with PB1.Canvas do begin
pen.Color:=clblack;
moveto(0,100);
lineto(600,100);
moveto(0,200);
lineto(600,200);
brush.color:=clblack;
floodfill(1,1,clblack,fsborder);
brush.color:=clred;
floodfill(150,150,clblack,fsborder);
brush.color:= clyellow;
floodfill(250,250,clblack,fsborder);
end;
   end;
procedure TForm1.btn4Click(Sender: TObject);
begin

      with PB1.Canvas do begin
        brush.Color:=clred;
        floodfill(1,1,clred,fsborder);
                brush.Color:=clwhite;
        Rectangle(200,20,300,260);
        brush.Color:=clwhite;
        Rectangle(120,106,372,200);
      end;
        end;

procedure TForm1.btn5Click(Sender: TObject);
begin
pb1.Invalidate();
end;

end.
