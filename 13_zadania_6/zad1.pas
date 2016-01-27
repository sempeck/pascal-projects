program zad1;

uses
  sysutils;

var
	n,i,x: Integer;
	tablica : array[1..10] of String;
    imie : String;
    tn: Char;

begin

  repeat
  	
	  x := 0;	
	  
	  repeat
    	  writeln('Ile imion chcesz wprowadzić? (1 do 10): ');
         readln(n);
      until n < 10;
	  
	  for i:=1 to n do
	    begin
	      writeln('Podaj imie', ' ', inttostr(i));
	  	  readln(imie);
	  	  tablica[i] := imie;
	    end;
	   
	   for i:=1 to n do
	     begin
	       if (tablica[i][Length(tablica[i])]) = 'a' then
	         x := x+1;
	     end;

	    writeln('Ilosc imion konczacych sie na a: ', x);

	   writeln;
	   
	   writeln('Jeszcze raz?');
	   readln(tn); 

    until tn = 'n';

end.
