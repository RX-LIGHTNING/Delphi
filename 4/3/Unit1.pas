unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ColorGrd;

type
  TForm1 = class(TForm)
    Button1: TButton;
    PaintBox1: TPaintBox;
    Button2: TButton;
    clrbx1: TColorBox;
    procedure Button1Click(Sender: TObject);
    procedure clrbx1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,b,c,d,e,f,g,r:tcolor;
  i:integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  for i:=1 to 13 do begin
r:=random(255);
g:=random(255);
b:=random(255);
end;
with PaintBox1.Canvas do begin
font.Color:=RGB(random(255),random(255),random(255));
font.Size:=15;
textout(1,100,'Ê');
font.Color:=RGB(random(255),random(255),random(255));
textout(20,100,'ó');
font.Color:=RGB(random(255),random(255),random(255));
textout(35,100,'ç');
font.Color:=RGB(random(255),random(255),random(255));
textout(50,100,'í');
font.Color:=RGB(random(255),random(255),random(255));
textout(65,100,'å');
font.Color:=RGB(random(255),random(255),random(255));
textout(80,100,'ö');
font.Color:=RGB(random(255),random(255),random(255));
textout(95,100,'î');
font.Color:=RGB(random(255),random(255),random(255));
textout(110,100,'â');
font.Color:=RGB(random(255),random(255),random(255));
textout(127,100,' ');
font.Color:=RGB(random(255),random(255),random(255));
textout(142,100,'Ð');
font.Color:=RGB(random(255),random(255),random(255));
textout(157,100,'î');
font.Color:=RGB(random(255),random(255),random(255));
textout(172,100,'ì');
font.Color:=RGB(random(255),random(255),random(255));
textout(187,100,'à');
font.Color:=RGB(random(255),random(255),random(255));
textout(202,100,'í');
end;


end;



procedure TForm1.clrbx1Change(Sender: TObject);
begin
     PaintBox1.Canvas.Brush.Color:=clrbx1.Selected;
     PaintBox1.Canvas.FloodFill(1,1,clBlack,fsborder);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
         PaintBox1.Invalidate();
end;

end.
