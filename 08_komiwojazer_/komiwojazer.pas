program komiwojazer;

var
	x, i, j, odl : Integer;
	   odleglosc : array[1..10, 1..10] of Integer;
        miasto : array[1..10] of String;

//metoda 1
   miasto_spr1 : array[1..10] of String;
        droga1 : array[1..10] of String;
         start : Integer;
            st : Integer;
            min: Integer;

begin
	
//zerowanie tablic i integerów
      x := 0;
      i := 0;
  start := 0;
     st := 0;

    for i := 1 to 10 do
      begin
        odleglosc[i, i] := 0;
              miasto[i] := '';
        
//metoda 1
         miasto_spr1[i] := '';
              droga1[i] := '';
      end;


//początek
	  writeln('Ten program znajdzie optymalna trase.');
    writeln('Przez ile miast musisz przejechac? Maksymalnie 9:');
    readln(x);   


//wczytywanie kolejnych miast do tablicy
    for i := 1 to x do
      begin
	      writeln('Podaj miasto numer ', i);
	      readln(miasto[i]);
      end;


//wczytywanie odległości
    writeln('Podaj odleglosc:');
 
    for j := 1 to x do

	    begin

  	    for i := 1 to x do
  		  begin
  		  
              if (i = j) then
                begin
                  odleglosc[i, j] := 0;
                  odleglosc[j, i] := 0;              	
                end

              else
                  if (odleglosc[i, j] > 0) then odleglosc[i, j] := odleglosc[j, i] //gwarancja, że nie zapyta o ten sam dystans tylko w drugą stronę
                  // if (odleglosc[j, i] > 0) then odleglosc[j, i] := odleglosc[i, j];
                  else
            			 	begin
            				 	writeln(miasto[i], ' - ', miasto[j]);
            				  readln(odl);
            		      odleglosc[i, j] := odl;
            		      odleglosc[j, i] := odl;
            		    end;
  		  end;
	    end;
       

//test
     Writeln('*test miasta: ', miasto[1], ' - ', miasto[2], ' - ', miasto[3]);
     writeln('*test 1-1: ', odleglosc[1, 1]);
     writeln('*test 1-2: ', odleglosc[1, 2]);
     writeln('*test 1-3: ', odleglosc[1, 3]);
     
     writeln('*test 2-1: ', odleglosc[2, 1]);
     writeln('*test 2-2: ', odleglosc[2, 2]);
     writeln('*test 2-3: ', odleglosc[2, 3]);

     writeln('*test 3-1: ', odleglosc[3, 1]);
     writeln('*test 3-2: ', odleglosc[3, 2]);
     writeln('*test 3-3: ', odleglosc[3, 3]);

//od którego zacząć
    writeln('Od ktorego miasta chcesz zaczac? Podaj numer:');
      for i := 1 to x do writeln(i, ') ', miasto[i]);
      readln(start);

// ****************************************************************************************************
// LICZENIE METODĄ GREEDY, czyli najbliższe miasto
// ****************************************************************************************************
// ****************************************************************************************************

   
// ****************************************************************************************************
// ****************************************************************************************************
// ****************************************************************************************************


//po obliczeniach
   // wróć do miasta początkowego i dodaj go do statystyk
       droga1[x+1] := miasto[start];


//WYNIKI
  writeln('Optymalna trasa wedlug metody GREEDY to: '); //Pokaż trasę
    for i := 1 to (x+1) do
      writeln(droga1[i]);

//ewentualnie także: Pokaż liczbę kilometrów


end.


// pytania:
// - co gdy pozostają dwie odległości i są takie same?
