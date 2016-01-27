program zad1;

var
   tablica : array[1..10, 1..10] of Integer;
  tablica2 : array[1..10, 1..10] of Integer;
     i,j,n : Integer;

begin
	
  randomize;
  
  repeat
    writeln('Podaj rozmiar tablicy (max. 10):');
    readln(n);
  until n<11;

	for i:=1 to n do 
	 for j:=1 to n do
     tablica[i,j] := random(19)-9;

  for i:=1 to n do 
   begin 
		 writeln;
		 for j:=1 to n do
	     write(' ', tablica[i,j]:5);  
   end;

	for i:=1 to n do 
	 for j:=1 to n do
    begin
    	tablica2[i,j]:=tablica[j,i];   
    end;

writeln;

     for i:=1 to n do 
   begin 
		 writeln;
		 for j:=1 to n do
	     write(' ', tablica2[i,j]:5);  
   end;


  readln;
   
end.
