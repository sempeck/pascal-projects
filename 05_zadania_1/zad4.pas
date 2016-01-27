program zad4;

{$APPTYPE CONSOLE}

var
    c : Byte;

begin
	writeln('Podaj wartosc C:');
	readln(c);
	writeln('C podstawione do wzoru (C*3-C+6)/(1/C^2) daje:');
    writeln((c*3-c+6)/(1/Sqr(c)):1:2);
    readln;
end.
