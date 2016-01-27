program zad3;

var
  a,i,j : Integer;
  bin : array[1..100] of Integer;
  tn : Char;

begin
  
  repeat
  	 
	  writeln('Podaj liczbe dziesietna:');
	  readln(a);

	  i:=1;

	    repeat
	      bin[i] := (a mod 16);
	 	  a := a div 16;
	 	  i := i+1;
		until a = 0;

	  writeln('Liczba w postaci szesnastkowej:');
	    for j := i-1 downto 1 do
          begin
		           if bin[j] = 10 then write('A')
		      else if bin[j] = 11 then write('B')
	          else if bin[j] = 12 then write('C')
	  	      else if bin[j] = 13 then write('D')
	  	      else if bin[j] = 14 then write('E')
		      else if bin[j] = 15 then write('F')
		      else 
		        write(bin[j]);
	      end;

	  writeln;

  writeln('Jeszcze raz? T/N');
  readln(tn);
  until tn = 'n';

end.
