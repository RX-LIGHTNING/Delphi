unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lst1: TListBox;
    btn1: TButton;
    Edit1: TEdit;
    btn2: TButton;
    btn3: TButton;
    lbl1: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
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

procedure TForm1.btn1Click(Sender: TObject);
var i:Integer;
begin
lst1.Items.Add(edit1.Text);

end;

procedure TForm1.btn2Click(Sender: TObject);
var i:Integer;
begin
 For i := Lst1.Items.Count - 1 downto 0 do
      if Lst1.Selected [i] then
        Lst1.Items.Delete (i);
end;

procedure TForm1.btn3Click(Sender: TObject);
var i,b,c:Integer; s:string;
begin
  c:=Length(lst1.items[0]);
      for i:= 0 to lst1.Items.Count - 1 do
        if Length(lst1.items[i])< c then
        begin
                    b:=i;
                    c:=Length(lst1.items[i]);
        end;

      lbl1.Caption :=lst1.Items[b];
end;

end.
