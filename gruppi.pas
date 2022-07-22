unit gruppi;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  Buttons, StdCtrls;

type

  { TForm10 }

  TForm10 = class(TForm)
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Datasource1: TDatasource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form10: TForm10;

implementation
   uses main,gruppred;
{$R *.lfm}

{ TForm10 }

procedure TForm10.BitBtn2Click(Sender: TObject);
begin
  form1.gruppa.Append;
  form11.Show;
end;

procedure TForm10.BitBtn3Click(Sender: TObject);
begin
  form1.gruppa.Edit;
  form11.show;
end;

procedure TForm10.BitBtn4Click(Sender: TObject);
begin
  form1.gruppa.Delete;
end;

end.

