program zad4;

var
	tablica: array[1..100] of Integer;
	i,j, temp : Integer;
	tn : Char;

begin

repeat 

   randomize;

   for i:= 1 to 100 do
     tablica[i] := random(200)-100;

   for i:= 1 to 100 do
     writeln(tablica[i]);
     writeln;
   
   for i:=1 to 99 do 
     for j:=i+1 to 100 do 
       begin
       	if tablica[i]>tablica[j] then 
       	  begin
       	  	temp:=tablica[i];
       	  	tablica[i]:=tablica[j];
       	  	tablica[j]:=temp;
       	  end;
       end;

    for i:= 1 to 100 do
    writeln(tablica[i]);
    writeln;

writeln('Jeszcze raz?');
readln(tn); 

until tn = 'n';

end.


