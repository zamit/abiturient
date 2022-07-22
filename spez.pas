unit spez;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  StdCtrls, Buttons, Menus;

type

  { TForm2 }

  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBGrid1: TDBGrid;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    PopupMenu1: TPopupMenu;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation
     uses main,spezr;
{$R *.lfm}

{ TForm2 }

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
  form1.spez.Append;
  form5.show;
  form5.caption:='Добавление специальности';
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
    form1.spez.edit;
  form5.show;
  form5.caption:='Редактирование специальности';
end;

end.

