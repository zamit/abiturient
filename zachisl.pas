unit zachisl;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons,
  DbCtrls, StdCtrls;

type

  { TForm9 }

  TForm9 = class(TForm)
    BitBtn1: TBitBtn;
    Datasource1: TDatasource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form9: TForm9;

implementation
     uses main;

     { TForm9 }

     procedure TForm9.BitBtn1Click(Sender: TObject);
     begin
       form1.student.ApplyUpdates;
       form9.close;
     end;

{$R *.lfm}

end.

