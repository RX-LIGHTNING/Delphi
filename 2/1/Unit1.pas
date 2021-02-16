unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    mmo1: TMemo;
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
var i,res:integer;

begin

  mmo1.Clear();
  for i := 0 to 10 do
  mmo1.Lines.add(IntToStr(random(10)-5));

  for i := 0 to 10 do
  if StrToInt(mmo1.Lines[i]) < 0 then
    res := res + StrToInt(mmo1.Lines[i]);

   edt1.Text := IntToStr(res);
   res:=0;  

end;

end.
