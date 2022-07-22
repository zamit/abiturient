unit svod;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  DBGrids, LConvEncoding, Variants, ComObj;

type

  { TForm7 }

  TForm7 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form7: TForm7;

implementation
      uses main;
{$R *.lfm}

{ TForm7 }

procedure TForm7.FormCreate(Sender: TObject);
begin
    ComboBox1.Clear;
  form1.spez.First;
While not form1.Spez.EOF do
begin
 ComboBox1.Items.Add(form1.spez.FieldByName('kod').AsString);
  form1.spez.Next;
end;
combobox1.ItemIndex:=0;
  if combobox2.ItemIndex=0 then
   combobox3.Visible:=True
   else
     combobox3.Visible:=False

end;

procedure TForm7.Button1Click(Sender: TObject);
var Excel_OLE,VExcel: Variant;
     path,f,o:string;
    i,n:integer;

begin
 if combobox2.ItemIndex=1 then
   form1.vedom.SQL.Text:='Select fam,imya,otch, spez,vid_obraz,data_okonch,sr_ball,tip_obr,giarus_ball,giarusocenka,giamat_ball,giamatocenka,giaalg_ball,giaalgocenka,giageom_ball,giageomocenka,forma_obuch from abitur where spez='+#39+ComboBox1.Text+#39+ 'AND forma_obuch='+#39+combobox2.Text+#39 +'ORDER BY sr_ball DESC'
   else
   form1.vedom.SQL.Text:='Select fam,imya,otch, spez,vid_obraz,data_okonch,sr_ball,tip_obr,giarus_ball,giarusocenka,giamat_ball,giamatocenka,giaalg_ball,giaalgocenka,giageom_ball,giageomocenka,baz_obr from abitur where spez='+#39+ComboBox1.Text+#39+'AND forma_obuch='+#39+Combobox2.text+#39+' '+'AND baz_obr='+#39+Combobox3.text+#39+'ORDER BY sr_ball DESC';
   form1.vedom.Open;
   form1.vedom1.SQL.Text:='Select kod,name from spez where kod='+#39+ComboBox1.Text+#39;
   form1.vedom1.Open;
//   Excel_OLE := CreateOleObject('Excel.Application');
 //  path:='Rep\svod.xls';
//Excel_OLE:=CreateOLEObject('Excel.Application');
//Excel_OLE.WorkBooks.Open((path));
//Excel_OLE.Visible:=true;
//Excel_OLE.Workbooks.Add;
//Excel_OLE.DisplayAlerts:=False;
{i:=5;
form1.vedom.First;
while not form1.vedom.EOF do
    begin
    Excel_OLE.Cells(i,4):=widestring(UTF8ToCP1251(form1.vedom.fieldByName('fam').asstring+' '+form1.vedom.fieldByName('imya').asstring+' '+form1.vedom.fieldByName('otch').asstring)) ;
    i:=i+1;
    form1.vedom.Next;
    end;

Excel_OLE.Visible:=true;

 try
    //проверяем, нет ли запущенного Excel
    VExcel := GetActiveOleObject('Excel.Application');
  except
    //если нет, то запускаем
    on EOLESysError do
      VExcel := CreateOleObject('Excel.Application');
  end;

    //Открывать Excel на полный экран

    //не показывать предупреждающие сообщения
 //   VExcel.DisplayAlerts := False;
    //Открываем рабочую книгу        }
    VExcel := CreateOleObject('Excel.Application');
    VExcel.WorkBooks.Open(widestring(UTF8ToCP1251(ExtractFilePath(Application.ExeName)+'rep\svod.xls')));
    //Становимся на первый лист
   VExcel.WorkSheets[1].Activate;
     VExcel.Cells(3,4):=widestring(Utf8Encode(form1.vedom1.fieldByName('kod').asstring+' '+form1.vedom1.fieldByName('name').asstring));
     n:=1;
     i:=7;
form1.vedom.First;
while not form1.vedom.EOF do
    begin
    VExcel.Cells(i,2):=n;
    VExcel.Cells(i,3):=widestring(Utf8Encode(form1.vedom.fieldByName('fam').asstring+' '+form1.vedom.fieldByName('imya').asstring+' '+form1.vedom.fieldByName('otch').asstring)) ;
    VExcel.Cells(i,4):=widestring(Utf8Encode(form1.vedom.fieldByName('vid_obraz').asstring+', '+form1.vedom.fieldByName('data_okonch').asstring)) ;
    if not   form1.vedom.fieldByName('giarus_ball').IsNull then
    VExcel.Cells(i,5):=widestring(Utf8Encode(form1.vedom.fieldByName('giarus_ball').asstring+'-'+form1.vedom.fieldByName('giarusocenka').asstring))
    else
    VExcel.Cells(i,5):=widestring(Utf8Encode(form1.vedom.fieldByName('giarusocenka').asstring)) ;

    VExcel.Cells(i,7):=widestring(Utf8Encode(form1.vedom.fieldByName('sr_ball').asstring)) ;
     VExcel.Cells(i,9):=widestring(Utf8Encode(form1.vedom.fieldByName('tip_obr').asstring)) ;

    if not form1.vedom.FieldByName('giaalg_ball').IsNull then
     VExcel.Cells(i,6):=widestring(UTF8ToCP1251(form1.vedom.fieldByName('giamat_ball').asstring+'-'+form1.vedom.fieldByName('giamatocenka').asstring+', '+form1.vedom.fieldByName('giaalg_ball').asstring+'-'+form1.vedom.fieldByName('giaalgocenka').asstring+', '+form1.vedom.fieldByName('giageom_ball').asstring+'-'+form1.vedom.fieldByName('giageomocenka').asstring))
     else
     VExcel.Cells(i,6):=widestring(UTF8ToCP1251(form1.vedom.fieldByName('giamat_ball').asstring+'-'+form1.vedom.fieldByName('giamatocenka').asstring)) ;

    i:=i+1;
    n:=n+1;
    form1.vedom.Next;
    end;
VExcel.range[VExcel.cells[7,2],VExcel.cells[i,10]].Select;
VExcel.Selection.WrapText:=True;
VExcel.Selection.Borders.LineStyle:=1;
VExcel.Visible := True;
end;

procedure TForm7.ComboBox2Change(Sender: TObject);
begin
  if combobox2.ItemIndex=0 then
  combobox3.Visible:=True
  else
    combobox3.Visible:=False
end;

end.

