program zad1c;

var
	n, i, j: Integer;
	tn : Char;

begin

  repeat
  	
	  repeat 
		  writeln('Podaj N (od 1 do 15):');
		  readln(n);
	  until (n < 16) and (n > 0);

		for i := 1 to n do
		  begin
		    for j := 1 to n-i do
		      write(' ');
		      
            for j := 1 to i * 2 - 1 do
              write('*');
		      
		    writeln; 
		  end;

    writeln('Jeszcze raz? (t/n)');
	  readln(tn);

  until tn = 'n';

end.