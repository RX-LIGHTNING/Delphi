unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl1: TLabel;
    edt2: TEdit;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn2Click(Sender: TObject);
var a,i:Integer;
begin
 for i := 0 to Length(edt1.Text) do
 if (edt1.Text[i]='.') then
                a:=a+1;
 lbl1.Caption := IntToStr(a);

       edt1.Text := '';
end;

procedure TForm1.btn1Click(Sender: TObject);
var a,i:Integer; res:string;
begin
  res:= edt1.Text;
for i := 0 to Length(edt1.Text) do
 if (edt1.Text[i]='?') then
   res[i] := '!';
 lbl1.Caption := res;

       edt1.Text := '';
end;

procedure TForm1.btn3Click(Sender: TObject);
var res:string;
begin
  res := edt1.Text;
  if edt2.Text <> '' then
  Delete(res, StrToInt(edt2.text),1);
    lbl1.Caption := res;
end;

end.
