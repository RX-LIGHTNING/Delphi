unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm;
  r,g,b:tcolor;
  x,y,x1,y1:integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
x:=random(600);
x1:=random(600);
y:=random(600);
y1:=random(600);
r:=random(255);
g:=random(255);
g:=random(255);
with PaintBox1, Canvas do begin
pen.Color:=  RGB(r,g,b);
brush.color:=RGB(random(255),random(255),random(255));
ellipse(x,x1,y,y1);
end;
end;

end.
