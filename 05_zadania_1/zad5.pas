program zad5;

{$APPTYPE CONSOLE}

var
	a, b: Real;

begin
	writeln('Podaj A:');
	readln(a);
	writeln('Podaj B:');
	readln(b);
	writeln('A + B = ', a+b:1:3);
	writeln('A - B = ', a-b:1:3);
	writeln('A * B = ', a*b:1:3);
	writeln('A / B = ', a/b:1:3);
    writeln('A^2 + B^2 = ', sqr(a) + sqr(b):1:3);
	readln;
end.
