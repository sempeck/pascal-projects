program zad4;

var
	tablica: array[1..100] of Integer;
	i,j, temp : Integer;
	tn : Char;
	dalej : Boolean;

begin

repeat 

   randomize;

   for i:= 1 to 100 do
     tablica[i] := random(200)-100;

   for i:= 1 to 100 do
     write(' ', tablica[i]);
     writeln;
   
   for i:=1 to 99 do 
     begin
      j:=i+1;
     repeat
       
       	if tablica[i]>tablica[j] then 
       	  begin
       	  	temp:=tablica[i];
       	  	tablica[i]:=tablica[j];
       	  	tablica[j]:=temp;
       	  	dalej := true;
       	  end
       	else dalej := false;
       j := j+1;
     until (j = 100) or (dalej = false);
    end;

writeln;

    for i:= 1 to 100 do
    write(' ', tablica[i]);
    writeln;

writeln('Jeszcze raz?');
readln(tn); 

until tn = 'n';

end.


