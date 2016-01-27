// Zdefiniuj typ rekordowy
// type tosoba = record
// Imie: string[30];
// Nazwisko: string[50];
// Wiek: byte;
// PESEL: string;
// Email: string;
// end;

// Zadeklaruj tablicę dynamiczną mającą za zadanie przechowywanie elementów wcześniej
// zdefiniowanego typu rekordowego. Opracuj :
// 1 procedurę dodającą element do tablicy
// 2 procedurę usuwającą wybrany element tablicy
// 3 procedurę wyszukującą element według podanego przez użytkownika numeru PESEL

// 4 procedurę sortującą rosnąco tablicę według elementu Nazwisko.
// 5 funkcję zwracającą informację o ilości osób pełnoletnich w tablicy
// 6 funkcję sprawdzającą poprawność adresu email (weryfikacja wystąpienia znaku @ )
//   wybranym przez użytkownika elemencie tablicy.

program zadanie1;

type tosoba = record
	Imie: string[30];
	Nazwisko: string[50];
	Wiek: byte;
	PESEL: string;
	Email: string;
  widoczny: Boolean;

end;

type tablica = array of tosoba;
	
var
  tab : tablica;
  x : Integer;
  k : char;

procedure dodaj(var t:tablica);
var
  i: Integer;

begin
  setlength(t,Length(t)+1);
  i := Length(t);
    write('Podaj imie: ');
    readln(tab[i].imie);
    write('Podaj nazwisko: ');
    readln(tab[i].nazwisko);
    write('Podaj wiek: ');
    readln(tab[i].wiek);
    write('Podaj pesel: ');
    readln(tab[i].pesel);
    write('Podaj email: ');
    readln(tab[i].email);
    tab[i].widoczny := true;
    writeln;
end;

procedure usun(var t:tablica);
  var
    i : Integer;

begin
  write('Który element usunąć? ');
  readln(i);
  t[i].widoczny := false;
end;

procedure wypisz(t:tablica);
  var i,n:integer;
  begin 
  writeln('Który element wypisać? ');
  readln(n);
  i := Length(t);
  if (t[i].widoczny = true) then
   begin 
     writeln(t[i].imie);
     writeln(t[i].nazwisko);
     writeln(t[i].wiek);
     writeln(t[i].pesel);
     writeln(t[i].email);
   end;
  end;

procedure wyszukaj(t:tablica);
var 
  i : Integer;
  pesel:String;

begin 
  writeln('Podaj pesel: ');
  readln(pesel);
  for i:=1 to Length(t) do
    if (tab[i].pesel = pesel) then
      writeln('Ten pesel znajduje się u osoby o nazwisku: ', tab[i].nazwisko);
end;


begin
  repeat
    writeln('Co zrobić? ');
    writeln('1: dodaj - 2: usuń - 3: wyszukaj - 4: sortuj - 5: pełnoletni - 6: email - 7: wypisz - 0: koniec');
    readln(x);

    Case x of
    1 : dodaj(tab);
    2 : usun(tab);
    3 : wyszukaj(tab);
    // 4 : sortuj();
    // 5 : pelnoletni();
    // 6 : email();
    7 : wypisz(tab);
    0 : k:='k';
    end;
  until k='k';
end.
