program zad1;

var
  a,b,c: Integer;

begin
  writeln('Podaj a i b:');
  readln(a,b);
    while b<>0 do
	    begin
	        c := a mod b;
	        a := b;
	        b := c;
	     end;
    writeln('Najwiekszy wspolny dzielnik: ',a);
  readln;
end.