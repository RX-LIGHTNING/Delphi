unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, MPlayer;

type
  TForm1 = class(TForm)
    mp1: TMediaPlayer;
    rg1: TRadioGroup;
    procedure rg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.rg1Click(Sender: TObject);
begin
if rg1.ItemIndex = 0 then
begin
             mp1.Close;
             mp1.filename:='C:\Users\роман\Desktop\лабы\delphi\5\2\data\1.mp3';
             mp1.Open;
end;
if rg1.ItemIndex = 1 then
begin
             mp1.Close;
             mp1.filename:='C:\Users\роман\Desktop\лабы\delphi\5\2\data\2.mp3';
             mp1.Open;
end;
if rg1.ItemIndex = 2 then
begin
             mp1.Close;
             mp1.filename:='C:\Users\роман\Desktop\лабы\delphi\5\2\data\3.mp3';
             mp1.Open;
end;
end;
end.
