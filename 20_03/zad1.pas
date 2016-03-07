program zadanie1;

uses
  sysutils;

type
  arr = array[1..5] of Integer;
  tosoba = record
    nazwisko: string[20];
    r, m, d: word;
    id: longint;
  end;
  
var
  wskaznikInteger : ^Integer;
  wskaznikReal : ^Real;
  wskaznikString : ^String;
  wskaznikArr : ^arr;
  wskaznikTOsoba : ^tosoba;
  i : Integer;

begin
  randomize;

  new(wskaznikInteger);  // tworzenie
  new(wskaznikReal);
  new(wskaznikString);
  new(wskaznikArr);
  new(wskaznikTOsoba);

  wskaznikInteger^ := random(100);  // inicjalizacja
  wskaznikReal^ := random(100);
  wskaznikString^ := IntToStr(random(100));
  for i := 1 to 5 do 
    wskaznikArr^[i] := random(100);

  wskaznikTOsoba^.nazwisko := IntToStr(random(100));
  wskaznikTOsoba^.r := random(100);
  wskaznikTOsoba^.m := random(100);
  wskaznikTOsoba^.d := random(100);
  wskaznikTOsoba^.id := random(100);

  writeln(wskaznikInteger^);  // pokazanie na ekranie
  writeln(wskaznikReal^:0:2);
  writeln(wskaznikString^);
  for i := 1 to 5 do 
    write(wskaznikArr^[i], ' ');
  writeln(wskaznikTOsoba^.nazwisko);
  writeln(wskaznikTOsoba^.r);
  writeln(wskaznikTOsoba^.m);
  writeln(wskaznikTOsoba^.d);
  writeln(wskaznikTOsoba^.id);

  dispose(wskaznikInteger);  // zwalnianie pamięci
  dispose(wskaznikReal);
  dispose(wskaznikString);
  dispose(wskaznikArr);
  dispose(wskaznikTOsoba);

  readln();

end.

// Zadanie1.
// Zadeklarować typ wskazujący (wskaźnik) na:
// a)zmienną typu integer;
// b)zmienną typu real;
// c)zmienną typu string;
// d)tablicę liczb typu integer o rozmiarze N, gdzie N – stała;
// e)rekord typu tosoba = record
// nazwisko: string[20];
// r, m., d: word;
// id: longint;
// end;
// W programie głównym utworzyć zmienne dynamiczne odpowiadające zadeklarowanym
// typom. Zainicjować utworzone zmienne losowymi wartościami lub wartościami wprowadzanymi z klawiatury. Wyprowadzić zawartość zmiennych na ekran. Przed zakończeniem programu zwolnić pamięć.
