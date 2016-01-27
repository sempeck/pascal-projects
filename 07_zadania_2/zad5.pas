program zad5;

var
	a : Integer;
	a100, a10, a1 : Integer;

begin
  writeln('Podaj liczbe wieksza od 99:');
  readln(a);
    if a > 99 then
      begin
         a100 := (a div 100);
         a10 := (a - a100 * 100) div 10;
         a1 := ((a - a100 * 100) - (a10 * 10)) div 1;

  	      writeln('Ilosc jednosci: ', a1);
	      writeln('Ilosc dziesiatek: ', a10);
	      writeln('Ilosc setek: ', a100)
      end  

    else
    writeln('Podales nieprawidlowa liczbe.');

    readln;

end.