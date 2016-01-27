program zad2;

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
	      bin[i] := (a mod 2);
	 	  a := a div 2;
	 	  i := i+1;
		until a = 0;

	  writeln('Liczba w postaci binarnej:');
	    for j := i-1 downto 1 do
	      write(bin[j]);

	  writeln;

  writeln('Jeszcze raz? T/N');
  readln(tn);
  until tn = 'n';

end.
