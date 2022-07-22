unit auth;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm15 }

  TForm15 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form15: TForm15;

implementation
     uses main;
{$R *.lfm}

{ TForm15 }

procedure TForm15.Button1Click(Sender: TObject);
begin
  if (edit1.Text = '2022') AND (edit2.Text='2022') then
  form1.show;
  form15.Hide;
end;

end.

