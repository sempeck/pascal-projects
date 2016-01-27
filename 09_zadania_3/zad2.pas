program zad2;

var
  i, s, n : Integer;
  tn : Char;

begin

	repeat
	  	 
	  writeln('Podaj liczbe N (od 0 do 10):');
	  readln(n);
	    if (n < 10) and (n >= 0) then
		  begin
			  s := 1;
			  for i := 1 to n-1 do
			      s := s*(i+1);

			  writeln(n, '! = ', s);
			  
	      end    
	    else
	      writeln('Nieprawidlowa liczba.');
	    

	  writeln('Jeszcze raz? (t/n)');
	      readln(tn);
	until tn = 'n';

end.
