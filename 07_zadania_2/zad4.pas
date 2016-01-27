program zad4;

var
	a, b, c, d, e : Real;
    min : Real;


begin
	writeln('Podaj a, b, c, d, e:');
	readln(a,b,c,d,e);

    min := a;

    if (b < min) then min := b;
    if (c < min) then min := c;
    if (d < min) then min := d;
    if (e < min) then min := e;

    writeln('Najmniejsza liczba to: ', min:1:2);
    readln;

end.