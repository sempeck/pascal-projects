program zad5;

var
  a, b, i : Integer;	


procedure parzyste;
	begin
		if (i mod 2 = 0) and (i >= 0) then
			writeln(i)
	end;


begin
  
  writeln('Podaj granice przedzialu:');
  readln(a, b);

  writeln;
    
    if a < b then
	    for i := a to b do
	      parzyste
	  
	else
      for i := a downto b do
        parzyste;

end.