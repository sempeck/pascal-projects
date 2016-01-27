program zad2;

var
	tablica : array[1..100] of Integer;
    i,x,y, suma: Integer;
    tn : Char;

begin

repeat
	
  randomize;
  suma := 0;

  for i := 1 to 100 do
    begin
        x:= random(40)+11;
        y:= random(2);

        if y = 0 then x:=-x;

        tablica[i] :=x;

        if tablica[i] mod 2 = 0 then suma := tablica[i] + suma;
        
    end;

    for i:=1 to 100 do 
      begin
        writeln(tablica[i]);
      end;
     
	writeln('Suma liczb parzystych to: ', suma);
	writeln;
	writeln('Jeszcze raz?');
	readln(tn); 

until tn = 'n';

end.
