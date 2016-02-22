program zadanie1;

uses sysutils;

type tosoba = record
  id: longint;
  Imie: string[20];
  Nazwisko: string[40];
  Pesel: string[11];
  Plec: char;
end;

var
  menu: Integer;
  k : Char;

  baza : file of tosoba;
  bazaTekstowa : text;
  plikBaza, plikBazaTekstowa, plikImiona, plikNazwiska : String;

  
////////// a) TWORZENIE PLIKU BINARNEGO ///////
procedure createBinaryFile();
  var 
    imiona, nazwiska : text;
    i,j : Integer;
    osoba: tosoba;
    tablicaImion, tablicaNazwisk : array of String;

  function plec(): Char;
    begin
      if (osoba.Imie[Length(osoba.Imie)] = 'a') then
        plec := 'K'
        else plec := 'M'; 
    end;

  begin 
    // tablica imion
    assign(imiona, plikImiona);
    reset(imiona);
    Setlength(tablicaImion, 1);
      while not eof(imiona) do
       begin
         readln(imiona, tablicaImion[Length(tablicaImion)-1]);
         SetLength(tablicaImion, Length(tablicaImion)+1);
       end;
    close(imiona);

    // tablica nazwisk
    assign(nazwiska, plikNazwiska);
    reset(nazwiska);
    Setlength(tablicaNazwisk, 1);
      while not eof(nazwiska) do
       begin
         readln(nazwiska, tablicaNazwisk[Length(tablicaNazwisk)-1]);
         SetLength(tablicaNazwisk, Length(tablicaNazwisk)+1);
       end;
    close(nazwiska);

    // tworzenie pliku binarnego
    assign(baza, plikBaza);    
    rewrite(baza);
      for i := 1 to 25000 do
        begin
          osoba.id := i;
          osoba.Imie := tablicaImion[random(Length(tablicaImion))];
          osoba.Nazwisko := tablicaNazwisk[random(Length(tablicaNazwisk))];
          osoba.Pesel := '';
            for j:=1 to 11 do begin
              osoba.Pesel := osoba.Pesel + IntToStr((Random(10)));
            end;
          osoba.Plec := plec();
          write(baza, osoba);
        end;
    close(baza);
    
  end;

////// b) Z BINARNEGO DO TEKSTOWEGO ////////

procedure binaryToText();
var
  osoba: tosoba;

begin
  assign(baza, plikBaza);
  assign(bazaTekstowa, plikBazaTekstowa);

  reset(baza);
  rewrite(bazaTekstowa);
  
  while not eof(baza) do
    begin
      read(baza, osoba);
      write(bazaTekstowa, IntToStr(osoba.Id)+';'+osoba.Imie+';'+osoba.Nazwisko+';'+osoba.Pesel+';'+osoba.plec+';');
    end;
  
  close(baza);
  close(bazaTekstowa);

end;

////// c) ZAKRES REKORDÓW DO TABLICY DYNAMICZNEJ ////////

// c) Wpisującą do tablicy dynamicznej rekordy z pliku z zakresu od N do M gdzie N i M są pozycjami w pliku binarnym podawanymi podczas działania programu. Parametrem procedury ma być tablica.






//////////// PROGRAM GŁÓWNY ////////////////
begin

randomize;

plikImiona := '/Users/Mediorama/PROJEKTY/_PROGRAMOWANIE/Pascal/18_01/imiona.txt';
plikNazwiska := '/Users/Mediorama/PROJEKTY/_PROGRAMOWANIE/Pascal/18_01/nazwiska.txt';
plikBazaTekstowa := '/Users/Mediorama/PROJEKTY/_PROGRAMOWANIE/Pascal/18_01/baza.txt';
plikBaza := '/Users/Mediorama/PROJEKTY/_PROGRAMOWANIE/Pascal/18_01/baza.bin';

repeat
    writeln();
    writeln('Menu: ');
    writeln('1: Tworzenie pliku binarnego z losowymi danymi 25 tysięcy osób.');
    writeln('2: Kopiowanie pliku binarnego do tekstowego.');
    writeln('3: ');
    writeln('4: ');
    writeln('5: ');
    writeln('6: ');
    writeln('0: ');
    readln(menu);

    Case menu of
    1 : createBinaryFile();
    2 : binaryToText();
    3 : ;
    4 : ;
    0 : k:='k';
    end;
  until k='k';

end.


// Opracować procedury:

// a) Tworzącą plik binarny składający się z 25000 losowych rekordów typu tosoba. Imiona i nazwiska mają być także przydzielane losowo do rekordu z zewnętrznej listy co najmniej 100 imion i 100 nazwisk (np. z pliku tekstowego).

// b) Zapisującą wszystkie rekordy z pliku binarnego do pliku tekstowego. Każdy element rekordu ma być oddzielony od kolejnego elementu separatorem w postaci znaku ‘;’.

// c) Wpisującą do tablicy dynamicznej rekordy z pliku z zakresu od N do M gdzie N i M są pozycjami w pliku binarnym podawanymi podczas działania programu. Parametrem procedury ma być tablica.

// d) Wyszukującą rekordy według wzorca określonego przez użytkownika. Parametrami procedury ma być tablica rekordów oraz wzorzec określony przez użytkownika (wzorcami może być: imię, nazwisko, pesel lub płeć)

// e) Wyświetlającą na ekran elementy dynamicznej tablicy rekordów. Parametrem procedury ma być tablica.

// f) Usuwającą z tablicy dynamicznej wybrany przez użytkownika element z zachowaniem kolejności elementów w tablicy. Parametrem procedury ma być tablica. Program ma posiadać menu, dzięki któremu możemy mieć wybór opcji (dodawanie, usuwanie, itd.).
