unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    mp1: TMediaPlayer;
    btn1: TButton;
    pnl1: TPanel;
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
var openDialog : TOpenDialog;
begin
openDialog := TOpenDialog.Create(self);
                                 mp1.Close;
  openDialog.InitialDir := GetCurrentDir;

  if openDialog.Execute then
  mp1.FileName:= opendialog.FileName;
                                   mp1.Open;
  openDialog.Free;
end;

end.
