program zad2;

var
	a, b, c: Integer;

begin
  writeln('Program sprawdzi czy ktoras z liczb jest parzysta.');
  writeln('Podaj a, b, c:');
  readln(a, b, c);
    if (a mod 2 = 0) or (b mod 2 = 0) or (c mod 2 = 0) then
      writeln('Podales liczbe parzysta.')
    else
      writeln('Wszystkie liczby sa nieparzyste.');
  readln;	

end.
