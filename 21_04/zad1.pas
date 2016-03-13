
program zadanie1;

type
  lista = ^tlista;
  tlista = record
    imie: string[20];
    nazwisko: string[30];
    wiek:byte;
    PESEL: string;
    wsk: lista;
  end;

var
  pocz : lista;
  k: char;
  menu: Integer;

procedure dodaj(poprzedni: lista);
var
  tmp: lista;
begin
  New(tmp);
  writeln('Podaj imię:');
  readln(tmp^.imie);
  writeln('Podaj nazwisko:');
  readln(tmp^.nazwisko);
  writeln('Podaj wiek:');
  readln(tmp^.wiek);
  writeln('Podaj PESEL:');
  readln(tmp^.PESEL);

  if poprzedni = nil then
    begin
      pocz := tmp;
      tmp^.wsk := nil;
    end
  else
    begin
      tmp^.wsk := poprzedni^.wsk;
      poprzedni^.wsk := tmp;
    end;
end;

procedure usun(poprzedni: lista);
var
  tmp: lista;
begin
  if poprzedni^.wsk <> nil then
    begin
      tmp := poprzedni^.wsk^.wsk;
      Dispose(poprzedni^.wsk);
      poprzedni^.wsk := tmp;
    end
  else
    pocz := nil;
end;

procedure wypisz();
var
 tmp: lista;
begin
 tmp := pocz;
 while tmp <> nil do
  begin
    writeln('Imię: ', tmp^.imie);
    writeln('Nazwisko: ', tmp^.nazwisko);
    writeln('Wiek: ', tmp^.wiek);
    writeln('PESEL: ', tmp^.PESEL);
    writeln();
    tmp := tmp^.wsk;
  end;
end;

procedure nazwiska();
var
  tmp: lista;
begin
  tmp := pocz;
  while tmp <> nil do
    begin
      if (length(tmp^.nazwisko) > length(tmp^.imie)) then
        begin
          writeln('Imię: ', tmp^.imie);
          writeln('Nazwisko: ', tmp^.nazwisko);
          writeln('Wiek: ', tmp^.wiek);
          writeln('PESEL: ', tmp^.PESEL);
          writeln();        
        end;
      tmp := tmp^.wsk;
    end;
end;

procedure pesel();
var
  tmp: lista;
  // tablica posortowanych wskaźników
begin
  tmp := pocz;
  while tmp <> nil do
    begin
      if (length(tmp^.nazwisko) > length(tmp^.imie)) then
        begin
          writeln('Imię: ', tmp^.imie);
          writeln('Nazwisko: ', tmp^.nazwisko);
          writeln('Wiek: ', tmp^.wiek);
          writeln('PESEL: ', tmp^.PESEL);
          writeln();        
        end;
      tmp := tmp^.wsk;
    end;
end;


begin
  pocz := nil;

repeat
  writeln();
  writeln('Menu: ');
  writeln('1: Dodaj element na stos.');
  writeln('2: Zdejmij element ze stosu.');
  writeln('3: Pokaż zawartość stosu.');
  writeln('4: Zawartość stosu (gdy nazwiska dłuższe od imion).');
  writeln('5: Elementy stosu posortowane wg peselu.');
  writeln('0: Koniec.');
  readln(menu);

  Case menu of
  1 : dodaj(pocz);
  2 : usun(pocz);
  3 : wypisz();
  4 : nazwiska();
  5 : pesel();
  0 : k:='k';
  end;
until k='k';


end.


// Lista 4
// Zadanie 1. Zadeklarować typy danych określające listę jednokierunkową:
// lista = ^tlista;
// tlista = record
// imie: string[20];
// nazwisko: string[30];
// wiek:byte;
// PESEL: string;
// wsk: lista;
// end;
// Zdefiniować zmienną pocz typu wskazującą na początek listy.
// Wykorzystać przedstawione definicje do implementacji stosu. Opracować procedury:
// a) dodającą element na stos
// b) zdejmującą element ze stosu
// c) wyprowadzającą zawartość stosu na ekran.
// d) wyprowadzającą elementy stosu na ekran, ale tylko te, których nazwiska są
// dłuższe od imion.
// e) wyprowadzającą elementy stosu na ekran, wcześniej sortując wg numeru PESEL
// Przetestować opracowane procedury w programie głównym. Przed zakończeniem
// programu zwolnić pamięć. Wyświetlić stan pamięci na początku i na końcu programu. 