program suma;

Uses Crt;

Label 
  Koniec;

var
	a, b : Real;
	x : Integer;
	YN : Char;

begin
	Koniec: Clrscr;

	
	writeln('podaj a:');
	readln(a);
	writeln('podaj b:');
	readln(b);
	writeln('ile miejsc po przecinku?');
	readln(x);
	writeln('suma a i b to ', a+b:0:x);
    writeln('jeszcze raz? t/n');
    readln(YN);
          if YN = 't' then
            goto Koniec
          else
            halt;
        
end.