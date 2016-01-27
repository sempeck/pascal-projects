program zad3;

var
  a, i, min, max : Integer;
  tn : Char;

begin
	repeat
		writeln('Podaj 10 wartosci: ');
		readln(a);
		    min := a;
		    max := a;
		 
		for i := 1 to 9 do  
		  begin  
			  readln(a);
			    if a < min then min := a;
			    if a > max then max := a;
	      end;

		writeln('Najwieksza wartosc to: ', max);
		writeln('Najmniejsza wartosc to: ', min);  
        writeln();

    	writeln('Jeszcze raz? (t/n)');
	    readln(tn);

	until tn = 'n';

end.