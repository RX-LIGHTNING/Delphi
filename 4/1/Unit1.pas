unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    pb1: TPaintBox;
    btn1: TBitBtn;
    procedure btn1Click(Sender: TObject);
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
var x,y,i,j:integer;
begin

with pb1.Canvas do begin
Brush.Style := bsSolid;
Brush.Color := clblue;
FillRect(ClipRect);
end;
     for i:=0 to 10000 do
       pb1.Canvas.Pixels[Random(1000)+1,Random(1000)+1]:=clWhite;
end;

end.
