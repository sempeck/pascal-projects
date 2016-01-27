program zadanie5;

type
	tablica = array[1..10, 1..10] of Integer;
    tab6 = array[1..6] of Integer;

var
	i,j: Integer;
	tab : tablica;
	wynik : tab6;

function minimax(tabb : tablica) : tab6;
var
    max, min : Integer;
    i,j: Integer;

begin
   max := 0;
   min := 100;

   for i:=1 to 10 do 
     for j:=1 to 10 do
      begin
        if max < tabb[i,j] then
          begin 
            max := tabb[i,j];
            minimax[1] := max;
            minimax[2] := i;
            minimax[3] := j;        
          end;
        
         if min > tabb[i,j] then
          begin 
            min := tabb[i,j];
            minimax[4] := min;
            minimax[5] := i;
            minimax[6] := j;        
          end;
      end;
end;

begin
  randomize;
  for i:=1 to 10 do
    begin 
	  writeln;
	  for j:=1 to 10 do
	    begin
	      tab[i,j] := random(100);
	      write(' ', tab[i,j]:2);
	    end;
    end;

writeln;
writeln;

wynik := minimax(tab);

for i:=1 to 6 do 
	write(' ', wynik[i]);

readln;
end.
