unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    procedure Button13Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
var
temp:string;
c:integer;
procedure TForm1.Button13Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'0';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'7'
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
          edit1.Text:=edit1.Text+'8'
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'9'
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 edit1.Text:=edit1.Text+'4'
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'5'
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
    edit1.Text:=edit1.Text+'6'
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
 edit1.Text:=edit1.Text+'1'
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'2'
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
edit1.Text:=edit1.Text+'3'
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
temp:=edit1.Text;
c:=4;

edit1.Text:=''
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
temp:=edit1.Text;
c:=3;

edit1.Text:=''
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
temp:=edit1.Text;
c:=2;

edit1.Text:=''
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
temp:=edit1.Text;
c:=1;
edit1.Text:=''
end;

procedure TForm1.Button14Click(Sender: TObject);
begin

edit1.Text:='';
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
if c = 1 then edit1.Text:= IntToStr(StrToInt(temp)-StrToInt(edit1.Text));
if c = 2 then edit1.Text:= IntToStr(StrToInt(temp)+StrToInt(edit1.Text));
if c = 3 then edit1.Text:= IntToStr(StrToInt(temp)*StrToInt(edit1.Text));
if c = 4 then
begin
edit1.Text:= FloatToStr(StrToInt(temp)/StrToInt(edit1.Text));
end;
 end;
end.
