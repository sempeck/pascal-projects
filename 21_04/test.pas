//Plik sciagniety ze strony www.algorytm.org
//Program napisal: Michal Knasiecki
unit Unit1;
 
interface
 
uses
Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
StdCtrls;
 
type
TForm1 = class(TForm)
Button1: TButton;
Edit1: TEdit;
Label1: TLabel;
Label2: TLabel;
Edit2: TEdit;
Button2: TButton;
procedure Button1Click(Sender: TObject);
procedure Button2Click(Sender: TObject);
private
{ Private declarations }
public
{ Public declarations }
end;
 
 
//  Nasz stos będzie się skladal z:
TYPE  wskaznik_stosu=^skladnik_stosu;
skladnik_stosu=record
Nazwisko:string;
wskaznik:wskaznik_stosu;
end;
 
var
Form1: TForm1;
Licznik:integer=0; //Licznik elementów na stosie
wskaznik:wskaznik_stosu;
implementation
//Zdefiniujemy sobie dwie procedury:
 
//Poniższa procedura dodaje na stos nazwisko
procedure nastos(element:string;
var wierzcholek:wskaznik_stosu);
var punkt:wskaznik_stosu;
begin
punkt:=wierzcholek;
New(wierzcholek);
with wierzcholek^ do
begin
nazwisko:=element;
wskaznik:=punkt
end;
end;
//Poniższa procedura usuwa ze stosu nazwisko
procedure zestosu(var element:String;
var wierzcholek:wskaznik_stosu);
var punkt:wskaznik_stosu;
begin
if wierzcholek<>nil then
begin
with wierzcholek^ do
begin
element:=nazwisko;
punkt:=wskaznik;
end;
Dispose(wierzcholek);
wierzcholek:=punkt;
end;
end;
 
{$R *.DFM}
 
procedure TForm1.Button1Click(Sender: TObject);
 
begin
//jeżeli stos jest pusty to
if licznik=0 then wskaznik:=nil;
//Dalej zwiększ licznik o 1
inc(licznik);
//i dodaj do niego nazwisko z pola edit1:
nastos(edit1.text,wskaznik);
end;
 
procedure TForm1.Button2Click(Sender: TObject);
var
naz:string;
begin
//jeżeli stos nie jest pusty
if wskaznik<>nil then
begin
//zmniejsz licznik
dec(licznik);
//zdejmij ze stosu
zestosu(naz,wskaznik);
//i wypisz
edit2.text:=naz;
end
//jesli stos jest pusty pokaz komunikat
else showmessage('Stos jest pusty');
end;
 
end.