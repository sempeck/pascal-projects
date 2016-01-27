program komiwojazer_greedy;

Uses sysutils;

var
  
       x, i, j : Integer;
     odleglosc : array[1..1001, 1..1001] of Integer;
        miasto : array[1..1001] of String;
            tn : Char;

//metoda 1
   miasto_spr1, droga1 : array[1..1001] of String;
   start, st, min, next, suma : Integer;


begin

  repeat

  //skalowanie - ile miast
    writeln('Ile miast chcesz odwiedzic? Od 1 do 1000:');
    readln(x);

  //od którego zacząć
    writeln('Od ktorego zaczac?');
    readln(start);

  // ****************************************************************************
  // losowanie danych
  // ****************************************************************************
   
  //nazwy miast
    for i := 1 to x do
        miasto[i] := 'miasto ' + IntToStr(i);  

  //losowanie odległości      
    for j := 1 to x do
      for i := 1 to x do
        begin
          if (i = j) then
           odleglosc[i,j] := 0
          else
           odleglosc[i,j] := random(1000);
        end; 

  //eliminacja zdublowanych odległości
    for j := 1 to x do
      for i := 1 to x do
        if (odleglosc[i, j] > 0) then odleglosc[i, j] := odleglosc[j, i];


  // ****************************************************************************
  // ****************************************************************************
  // ****************************************************************************

   miasto_spr1 := miasto; //kopia listy miast do zaznaczania odwiedzonych miast
            st := start; //kopia miasta początkowego
          suma := 0; // zerowanie sumy odległości

  //główny loop dla wszystkich miast
    for i := 1 to x do 
      begin
       // default dla min
         min := 1000; 

  //loop szukający najmniejszej odległości do innego miasta    
         for j := 1 to x do 
              if (miasto_spr1[j] <> 'odwiedzone') then
                 begin  
                  if (odleglosc[st, j] < min) and (odleglosc[st, j] > 0) then 
                    begin
                      min := odleglosc[st, j];
                      next := j;
                    end;
                  end;

          suma := suma + min;
          miasto_spr1[st] := 'odwiedzone'; //zaznacza, że tu już był
          droga1[i] := miasto[st]; // kolejne miasta dodawane do tablicy
          st := next;
      
      end;
  //koniec głównego loopa

  //powrót do domu
     droga1[x+1] := miasto[start];
             
  //obliczanie odległości bez ostatniego "min"   ----> do poprawy
     suma := suma - min + odleglosc[start, st];


  //wyniki
    writeln('********** WYNIKI ***********');

    writeln('Optymalna trasa to: ');
        for i := 1 to x do
          write(droga1[i], ' - ');
          writeln(droga1[x+1], '.'); 

    writeln('*****************************');
    writeln('Dystans do przebycia: ', suma, ' km');
    writeln('*****************************');


    writeln('Jeszcze raz? (t/n)');
    readln(tn);

  until tn = 'n';


end.