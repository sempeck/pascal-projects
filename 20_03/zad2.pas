program zadanie2;

const N=5;

type
  tosoba = record
    a : Integer;  
  end;
  ttab = array[1..N] of tosoba;

var
  ptab: ^ttab;
  i:Integer;


procedure init();
var
  i: Integer;
begin
  new(ptab);
  for i:=1 to N do
    ptab^[i].a := random(100);
end;

begin
  randomize;
  init();
  for i:=1 to N do
    writeln(ptab^[i].a);

  dispose(ptab);
  readln();
end.


// Zadanie 2.
// Utworzyć dynamiczną tablicę rekordów typu tosoba o rozmiarze N, gdzie N – stała. Wskaźnik ptab do początku tablicy określają następujące deklaracje:
// const N=5;
// type ttab = array[1..N] of tosoba;
// Var ptab: ^ttab;
// Opracować procedurę, która inicjuje tablicę losowymi danymi lub danymi wprowadzanymi z klawiatury. Przetestować procedurę w programie głównym. Przed zakończeniem programu zwolnić pamięć.
