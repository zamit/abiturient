unit stud;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  StdCtrls, Buttons, ZDataset, db;

type

  { TForm12 }

  TForm12 = class(TForm)
    BitBtn1: TBitBtn;
    Datasource1: TDatasource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form12: TForm12;

implementation
     uses main;
{$R *.lfm}

{ TForm12 }

procedure TForm12.Edit1Change(Sender: TObject);
begin
   form1.student.Locate('fam',edit1.text,[loPartialKey,loCaseInsensitive]);
end;

procedure TForm12.BitBtn1Click(Sender: TObject);
begin
  form1.student.Delete;
  form1.student.ApplyUpdates;
end;

end.

