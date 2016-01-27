program zad2;

var
  tablica : array[1..5, 1..5] of Integer;
    i,j,n, suma : Integer;
    dalej : Boolean;

begin

writeln('Podaj liczby z zakresu <-5, 10), bez 0.');

  for i:=1 to 5 do
    for j:=1 to 5 do
     begin
       repeat
        dalej := false;
         write('Rzad ',i,' kolumna ',j,': ');
         readln(n);
         if (n >= -5) and (n < 10) and (n <> 0) then
           begin
             tablica[i,j] := n;
             dalej := true;
           end;
       until dalej = true;
    end;

for i:=1 to 5 do
   begin
   writeln;
    for j:=1 to 5 do
      write(' ', tablica[i,j]:3);
   end;

writeln;

suma := 0;

  repeat
    writeln('Ktorej kolumny sume obliczyc? (1 do 5)'); 
    readln(n);
  until (n > 0) and (n < 6);
  
  for i:=1 to 5 do
    suma := suma + tablica[i,n];

  writeln('Suma kolumny ', n, ' to: ', suma);
  readln;


end.
