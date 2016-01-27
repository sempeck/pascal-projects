program zadanie3;

var
  tablica : array[1..10, 1..10] of Integer;
  i,j,n,suma : Integer;


begin
  randomize;

  repeat 
    writeln('Jakiej wielkosci ma byc tablica? (max. 10 na 10)');
    readln(n);
  until n < 11;

  for i:=1 to n do 
    for j:=1 to n do
      tablica[i,j] := random(20)-10;

  for i:=1 to n do 
    begin
     writeln;
      for j:=1 to n do
        write(' ', tablica[i,j]:3);  
   end;

   writeln;
     
    suma := 0;

     for i:=1 to n do 
       suma := suma + tablica[i,i];
   
    writeln('Suma pierwszej przekatnej: ', suma);

    suma := 0;

     for i:=1 to n do
         suma := suma + tablica[i,n+1-i];

     writeln('Suma drugiej przekatnej: ', suma);

   readln;
	
end.