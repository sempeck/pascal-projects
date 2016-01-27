program zad6;

var 
  x : Integer;
  y : Real;

begin
	writeln('Program sprawdzi czy liczba jest kwadratowa.');
	writeln('Podaj x:');
	readln(x);

    y := sqrt(abs(x));

      if (y*y = x) then
          writeln('Tak, podana liczba jest kwadratowa.') 
      else
    writeln('Niestety podana liczba nie jest kwadratowa.');

    readln;

end.