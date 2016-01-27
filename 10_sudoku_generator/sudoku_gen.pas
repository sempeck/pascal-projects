program sudoku_ver2;

uses
Windows;


var
	 tablica : array[0..80] of Byte;
	 testowa : array[1..9] of Byte;
	 i, j, x, l, k, rzad, space, xx, suma_testowa : Byte;
   next : Boolean;
   counter: Longint;
   tn : Char;
   a, b : Integer;
 

function pion : Boolean;
  begin
      pion := true;
      xx := x;
    
      if (x <= 8) then
        rzad := 1
      else   
        rzad := (x div 9); 

      for k:= 1 to rzad do
        begin  
          xx := xx-9;
         if (tablica[xx] = l) then
          pion := false;
        end;                 
  end;

function poziom : Boolean;
 begin
    poziom := true;
    xx := x;

  if (x = 0) or (x mod 9 = 0) then
    poziom := true
  else
    if (x > 0) and (x <= 8) then
      repeat
         xx := xx-1;
           if (tablica[xx] = l) then
              poziom := false;
      until (xx = 0)

    else
  
      repeat
         xx := xx-1;
           if (tablica[xx] = l) then
              poziom := false;
      until (xx mod 9 = 0);
 end;

function kwadrat : Boolean;
 begin
   	kwadrat := true;
     xx := x;
     rzad := (x div 9); 
 if (rzad in [0,3,6]) then 
   kwadrat := true
 else
  begin
  if (x in [9,12,15,18,21,24,36,39,42,45,48,51,63,66,69,72,75,78]) then
     begin 
       if (tablica[xx - 17] = l) or (tablica[xx - 16] = l) or (tablica[xx - 8] = l) or (tablica[xx - 7] = l) then
         kwadrat := false;
     end;

  if (x in [10,13,16,19,22,25,37,40,43,46,49,52,64,67,70,73,76,79]) then
     begin 
       if (tablica[xx - 19] = l) or (tablica[xx - 17] = l) or (tablica[xx - 10] = l) or (tablica[xx - 8] = l) then
         kwadrat := false;
     end;

  if (x in [11,14,17,20,23,26,38,41,44,47,50,53,65,68,71,74,77,80]) then
     begin 
       if (tablica[xx - 20] = l) or (tablica[xx - 19] = l) or (tablica[xx - 11] = l) or (tablica[xx - 10] = l) then
         kwadrat := false;
     end;

  end;

 end;

 

begin

a := gettickcount();

repeat
    
  randomize;

       counter := 0;
             x := 0;
  suma_testowa := 0;
// zerowanie całej tablicy
  for i:= 0 to 80 do
    tablica[i] := 0;


  repeat
    // cyfry 1-9 do umieszczenia
      for i := 1 to 9 do
        testowa[i] := i;

         repeat
            // licznik operacji
              counter := counter+1;
            
            // losowanie  
              l := random(9)+1;
              testowa[l] := 0; // zaznaczanie, że ta cyfra już była sprawdzana
              next := false;
              suma_testowa := 0;
              for j:= 1 to 9 do
                  suma_testowa := suma_testowa + testowa[j];

            // testy na pion, poziom i kwadrat
            if pion and poziom and kwadrat then

              begin
                tablica[x] := l;
                x := x+1;
                next := true;
              end;

         until (next = true) or (suma_testowa = 0);


      if (suma_testowa = 0) then
        x := x-9; //cofamy.


  until x = 81;


// wyświetlanie
  writeln('******************* licznik operacji: ', counter);
    
  space := 0;

  for i := 0 to 80 do
   begin 
     write(tablica[i], ' ');
    
     if ((i+1) mod 3 = 0) then
        write(' ');

     if ((i+1) mod 9 = 0) then
       begin
         writeln;
      
         space := space + 1;
         if (space = 3) or (space = 6) then
           writeln;
      end;
    end;
  writeln('*******************');
  writeln();
  writeln('jeszcze raz? (t/n)');
  readln(tn);

until tn = 'n';  

end.
