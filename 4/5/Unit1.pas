unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pb1: TPaintBox;
    btn1: TButton;
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
begin
With pb1.Canvas do begin
        Brush.Color:=clgray;
        Pen.Color:=clblack;
        Rectangle(140, 300,160, 500);

       Rectangle(90, 0,210, 310);
      Brush.Color:=clred;
      Pen.Color:=clblack;

      Ellipse(100,10,200,100);
      Brush.Color:=clyellow;
      Ellipse(100,110,200,200);
      Brush.Color:=clgreen;
      Ellipse(100,210,200,300);


    end;
end;

end.
