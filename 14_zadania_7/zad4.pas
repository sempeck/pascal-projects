program zadanie4;

var
  tablica : array[1..5, 1..5] of Real;	
  i,j : Integer;
  x : Real;


begin

  randomize;

  for i:=1 to 5 do 
     for j:=i to 5 do
       begin 
         x := random(11) + random;
         if x > 10 then x:=10;
         tablica[i,j] := x;
       end;

  for i:=1 to 5 do 
    begin
     writeln;
    for j:=1 to 5 do 
      write(' ',tablica[i,j]:5:2);
    end;

  writeln;
  readln;
end.
