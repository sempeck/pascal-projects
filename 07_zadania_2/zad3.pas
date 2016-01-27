program zad3;

var
	a, b, c, a2, b2, c2, kw: Integer;

begin
	writeln('Podaj a, b, c:');
	readln(a,b,c);
	
	a2 := sqr(a);
	b2 := sqr(b);
	c2 := sqr(c);	
    
    kw := 0;

      if (a2 <= b2) and (a2 <= c2) then kw := a;
      if (b2 <= a2) and (b2 <= c2) then kw := b;
      if (c2 <= a2) and (c2 <= b2) then kw := c;

  
    writeln('Najmniejszy kwadrat ma: ', kw);
    readln;
end.