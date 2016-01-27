program zad1;

var
	znak: Char;

begin
	writeln('Podaj litere od "a" do "z"');
	readln(znak);
	znak := lowercase(znak);
	writeln;
	writeln('mala litera: ', znak);
	writeln('wielka litera: ', upcase(znak));
    readln;
end.