program zad5;

uses sysutils;

type
	osoba = Record
            imie: String[20];
            nazwisko: String[20];
            rok_u, mies_u, dzien_u: Word;
            id: Word;
end;

var
  jakasOsoba : osoba;  

begin
  
  randomize;

  jakasOsoba.imie := 'imie' + IntToStr(random(100)); // [0,100)
  jakasOsoba.nazwisko := 'naz'+ IntToStr(random(100)); // [0,100)
  jakasOsoba.rok_u := random(100)+1900;// [1900, 2000)
  jakasOsoba.mies_u := random(12)+1;// [1,13)
  jakasOsoba.dzien_u := random(31)+1;// [1,32)
  jakasOsoba.id := random(99)+1;// [1,100)

writeln('Dane osoby:');
  writeln('Imie: ', jakasOsoba.imie);
  writeln('Nazwisko: ', jakasOsoba.nazwisko);
  writeln('Rok urodzenia: ', jakasOsoba.rok_u);
  writeln('Miesiac urodzenia: ', jakasOsoba.mies_u);
  writeln('Dzien urodzenia: ', jakasOsoba.dzien_u);
  writeln('ID: ', jakasOsoba.id);
 readln;

end.
