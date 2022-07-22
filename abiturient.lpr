program abiturient;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, main, zcomponent, spez, plan, anketa, spezr, spiski, svod, about, 
zachisl, gruppi, gruppred, stud, post, post_spez, auth
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Абитуриенты';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TForm15, Form15);
  Application.CreateForm(TForm1, Form1);
 Application.CreateForm(TForm2, Form2);
 Application.CreateForm(TForm3, Form3);
 Application.CreateForm(TForm4, Form4);
 Application.CreateForm(TForm5, Form5);
 Application.CreateForm(TForm6, Form6);
 Application.CreateForm(TForm7, Form7);
 Application.CreateForm(TForm8, Form8);
Application.CreateForm(TForm9, Form9);
 Application.CreateForm(TForm10, Form10);
 Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm15, Form15);
  Application.Run;
end.

