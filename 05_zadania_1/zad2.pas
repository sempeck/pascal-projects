program zad2;

{$APPTYPE CONSOLE}

var
	n, m : Real;

begin
	writeln('Podaj N:');
	readLn(n);
	writeln('Podaj M:');
	readln(m);
	writeln('N - M = ', n-m:1:2);
	writeln('N + M = ', n+m:1:2);
	readln;
end.