unit post_spez;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DbCtrls,
  StdCtrls, LConvEncoding, Variants, ComObj;

type

  { TForm14 }

  TForm14 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form14: TForm14;

implementation
      uses main;
{$R *.lfm}

{ TForm14 }

procedure TForm14.Button1Click(Sender: TObject);

  var Excel_OLE,VExcel: Variant;
     path,f,s:string;
    i,n:integer;
begin
     s:=ComboBox1.Text;

form1.vedom.SQL.Clear;
     form1.vedom.SQL.Text:='Select fam,imya,otch,spez from abitur where spez='+#39+s+#39+'AND prinyat=1';
     form1.vedom.Open;
     VExcel := CreateOleObject('Excel.Application');
         VExcel.WorkBooks.Open(widestring(UTF8ToCP1251(ExtractFilePath(Application.ExeName)+'rep\post.xls')));
         //Становимся на первый лист
        VExcel.WorkSheets[1].Activate;
          VExcel.Cells(3,3):=widestring(UTF8ToCP1251(form1.vedom.fieldByName('spez').asstring));
          n:=1;
          i:=7;
     form1.vedom.First;
     while not form1.vedom.EOF do
         begin
         VExcel.Cells(i,2):=n;
         VExcel.Cells(i,3):=widestring(UTF8ToCP1251(form1.vedom.fieldByName('fam').asstring+' '+form1.vedom.fieldByName('imya').asstring+' '+form1.vedom.fieldByName('otch').asstring)) ;

         i:=i+1;
         n:=n+1;
         form1.vedom.Next;
         end;
     VExcel.range[VExcel.cells[7,2],VExcel.cells[i,3]].Select;
     VExcel.Selection.WrapText:=True;
     VExcel.Selection.Borders.LineStyle:=1;
     VExcel.Visible := True;
end;

procedure TForm14.FormCreate(Sender: TObject);
begin
       ComboBox1.Clear;
  form1.spez.First;
While not form1.spez.EOF do
begin
 ComboBox1.Items.Add(form1.spez.FieldByName('kod').AsString);
  form1.spez.Next;
end;
combobox1.ItemIndex:=0;
end;

end.

