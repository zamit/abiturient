unit spezr;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DbCtrls,
  StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form5: TForm5;

implementation
       uses spez,main;

       { TForm5 }

       procedure TForm5.Button1Click(Sender: TObject);
       begin
         form1.spez.Post;
         form1.spez.ApplyUpdates;
         form5.close;
       end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  form1.spez.Cancel;

         form5.close;
end;

{$R *.lfm}

end.

