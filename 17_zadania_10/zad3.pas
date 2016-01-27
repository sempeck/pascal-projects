// Napisz program spełniający funkcję bazy danych rekordów typu tosoba. 
// Program ma umożliwiać:

// dodanie
// usunięcie
// wyświetlenie rekordu

// zapis rekordów do pliku binarnego i wyświetlenie zawartości pliku na ekran.

program bazaDanych;

type tosoba = record
	Imie: string[30];
	Nazwisko: string[50];
	Wiek: byte;
	PESEL: string;
	Email: string;
end;

var
	baza : file of tosoba;
	NazwaPliku : String;
    x,i,menu : Integer;
    k : char;

function rozmiarBazy(): Integer;
begin
	reset(baza);
    seek(baza,filesize(baza));
    rozmiarBazy := filesize(baza);
    close(baza);
end;

procedure zapisDoBazy(osoba:tosoba);
begin
    reset(baza);
    seek(baza,filesize(baza));
    write(baza, osoba);
    close(baza);
end;

function odczytZbazy(i:Integer): tosoba;
begin
	reset(baza);
	seek(baza, i);
	read(baza, odczytZbazy);
	close(baza);
end;

procedure wyswietlanieRekordu(osoba:tosoba);
begin
	writeln('Imie: ', osoba.Imie);
	writeln('Nazwisko: ', osoba.Nazwisko);
	writeln('Wiek: ', osoba.Wiek);
	writeln('PESEL: ', osoba.PESEL);
	writeln('Email: ', osoba.Email);
	writeln;
end;

procedure tworzenieRekordu();
var
	osoba: tosoba;
begin
	write('Imie: '); readln(osoba.Imie);
	write('Nazwisko: '); readln(osoba.Nazwisko);
	write('Wiek: '); readln(osoba.Wiek);
	write('PESEL: '); readln(osoba.PESEL);
	write('Email: '); readln(osoba.Email);
	writeln('Osoba dodana.');
	writeln;
	zapisDoBazy(osoba);
end;

procedure kasowanieRekordu(y:Integer);
var 
	i : Integer;
	tymczasowy : tosoba;
begin
 if (y < rozmiarBazy) then 
   begin 
	  reset(baza);
	  for i:=y to rozmiarBazy-2 do
      begin
         
          seek(baza, i+1);   					
          read(baza, tymczasowy);		
          seek(baza,i);
          write(baza,tymczasowy);
      end;
   end;
  reset(baza);
  seek(baza,filesize(baza)-1);
  truncate(baza);
  close(baza);
end;

begin
	NazwaPliku := '/Users/Mediorama/PROJEKTY/_PROGRAMOWANIE/Pascal/17_zadania10/baza.bin';
	assign(baza, NazwaPliku);


repeat
    writeln('Rozmiar bazy: ', rozmiarBazy);
    writeln('Co zrobić? ');
    writeln('1: dodaj - 2: usuń - 3: pokaż jeden - 4: pokaż wszystkie - 0: koniec');
    readln(menu);

    Case menu of
    1 : tworzenieRekordu();
    2 : 
    	begin
    		write('Którą osobę skasować? ');
    		readln(x);
    		kasowanieRekordu(x);
    	end;
    3 : 
    	begin 
		    write('Którą osobę wyświetlić? ');
			readln(x);
			wyswietlanieRekordu(odczytZbazy(x));
    	end;
    4 : 
    	begin 
        	for i:=0 to rozmiarBazy-1 do 
			wyswietlanieRekordu(odczytZbazy(i));
    	end;
    0 : k:='k';
    end;
  until k='k';

end.