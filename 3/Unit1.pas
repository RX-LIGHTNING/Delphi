unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s:string;
  i,n:integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
listbox1.Items.Add(edit1.text);
edit1.Text:='';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 listbox1.Items.delete(listbox1.ItemIndex);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
n:=256;
for i :=0 to listbox1.Items.Count -1 do
if length(Listbox1.Items[i])<n then  begin
s:= listbox1.Items[i];
n:=length(listbox1.Items[i]);
end;

label1.caption:=s;
    end;
end.
