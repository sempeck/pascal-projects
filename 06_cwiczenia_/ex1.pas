// Modify the previous program such that only multiples of three or five are considered in the sum, e.g. 3, 5, 6, 9, 10, 12, 15 for n=17

program zadanie;

var
	
    a, k, n : Integer;

begin
  writeln('Podaj jakas liczbe');
  readln(n);
  for a := 0 to n do
  begin

  	// if a mod 3 = 0 and a mod 5 = 0 then


  	k := k + a;
  end;
    writeln;
  	writeln('Suma skladnikow to ', k);
  	readln;
end.



