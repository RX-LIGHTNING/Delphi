unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    mmo1: TMemo;
    mmo2: TMemo;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    pm1: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    dlgOpen1: TOpenDialog;
    dlgSave1: TSaveDialog;
    N9: TMenuItem;
    mmo11: TMenuItem;
    mmo21: TMenuItem;
    procedure N7Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mmo11Click(Sender: TObject);
    procedure mmo21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.N7Click(Sender: TObject);
begin
mmo1.Lines.Clear;
mmo2.Lines.Clear;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.N8Click(Sender: TObject);
var i:Integer;
begin
  mmo2.Lines.Clear;
for i:=0 to mmo1.Lines.Count do
begin
mmo2.Lines.Add(mmo1.Lines[i]);
end;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
if dlgOpen1.Execute then
mmo1.Lines.LoadFromFile(dlgOpen1.FileName);


end;

procedure TForm1.N3Click(Sender: TObject);
begin
if dlgSave1.Execute then
mmo2.Lines.SaveToFile(dlgSave1.FileName);
end;

procedure TForm1.N4Click(Sender: TObject);
var i,min:Integer;
begin
mmo2.Lines.Clear;
for i:=0 to mmo1.Lines.Count-1 do
begin
if   min < Length(mmo1.Lines[i]) then
min := Length(mmo1.Lines[i]);
end;
for i:=0 to mmo1.Lines.Count-1 do
begin
if Length(mmo1.Lines[i]) = min then
mmo2.Lines.Add(mmo1.Lines[i]);
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
mmo1.Lines.Clear;
  mmo2.Lines.Clear;
end;

procedure TForm1.mmo11Click(Sender: TObject);
begin
mmo1.Lines.Clear;
end;

procedure TForm1.mmo21Click(Sender: TObject);
begin
mmo2.Lines.Clear;
end;

end.
