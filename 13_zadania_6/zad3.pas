program zad3;

uses sysutils;

type tosoba = record
	     imie : string[20];
	 nazwisko : string[20];
	     wiek : byte;
         id : word;

end;

var
	tablica : array[1..5] of tosoba;
	      i : Integer;
	   dane : String;
	     tn : char;

begin
	
	randomize;

	repeat
	
		for i:=1 to 5 do 
		    begin 
		      tablica[i].imie := 'Imie ' + intToStr(i);
		      tablica[i].nazwisko := 'Nazwisko ' + intToStr(i);
		      tablica[i].wiek := random(50)+1;
		      tablica[i].id := i;
		    end;

		for i:=1 to 5 do
		  begin
		  	writeln('Imie: ', tablica[i].imie);
		  	// writeln('Nazwisko: ', tablica[i].nazwisko);
		  	// writeln('Wiek: ', tablica[i].wiek);
		  	// writeln('ID: ',tablica[i].id);
		  	// writeln;
		  end;

		writeln('Wpisz imie, ktorego chcesz pozostale dane: ' );
		  readln(dane);
		  for i:=1 to 5 do
			  if dane = tablica[i].imie then
		  	  begin
			  	  writeln;
			  	  writeln('Oto dane:');
			  	  writeln('Imie: ', tablica[i].imie);
						writeln('Nazwisko: ', tablica[i].nazwisko);
				  	writeln('Wiek: ', tablica[i].wiek);
				  	writeln('ID: ',tablica[i].id);
				  	writeln;
		  	  end;

      writeln('Jeszcze raz? (t/n): ');
      readln(tn);

  until tn = 'n';

end.

