program zadanie3;

type
  tablica = array[1..10, 1..10] of Real;
  
var
  n,i,j : Integer;
  tt : tablica;

procedure losowa(var tab : tablica);
  begin
  randomize;
    for i:=1 to n do 
      for j:=1 to n do
        repeat
          tab[i,j] := random(20)-10 + random();
        until tab[i,j] >= 10;
  end;

begin

	writeln('Podaj n: ');
	readln(n);
    
	losowa(tt);

    for i:=1 to 10 do
      begin 
       writeln;
     for j:=1 to 10 do
       write(' ', tt[i,j]:7:2);
       end;

 readln;

end.