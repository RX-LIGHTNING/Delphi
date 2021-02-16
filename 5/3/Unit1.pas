unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    rg1: TRadioGroup;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    ani1: TAnimate;
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  frame:Integer;
  isstart : Boolean;
implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin

ani1.FileName:='C:\bart.avi';

ani1.startframe:=1;
if isstart=true then
begin
ani1.Stop;
isstart:=false;
end
else
begin
isstart := True;
if rg1.ItemIndex=0 then
begin
  ani1.Active:=true;
end;
end;

   end;
procedure TForm1.btn3Click(Sender: TObject);
begin
   if rg1.ItemIndex=1 then
   begin
       ani1.StartFrame:=frame;
       frame:=frame+1;
       if(frame=ani1.FrameCount) then
       frame:=1;
   end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
begin
   if rg1.ItemIndex=1 then
   begin
       ani1.StartFrame:=frame;
       frame:=frame-1;
       if(frame=1) then
       frame:=ani1.framecount;
   end;
end;
end;

end.
