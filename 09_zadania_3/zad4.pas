program zad4;

var
  i, n : Integer;
  suma : Real;
    tn : Char;
	

begin
  
  repeat

		  suma := 0;

		  writeln('Podaj N: ');
		  readln(n);
		    
		  writeln('Elementy:');
			  for i := 1 to n do 
			    begin
			      writeln('1/', i);
			      suma := suma + 1/i;
			    end; 
			 
		  writeln('Suma ciagu = ', suma:1:2);

	  writeln('Jeszcze raz? (t/n)');
	  readln(tn);

	until tn = 'n';

end.