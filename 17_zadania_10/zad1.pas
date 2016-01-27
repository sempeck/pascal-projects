// Napisz procedurę zapisującą do pliku tekstowego oraz binarnego elementy tablicy
// jednowymiarowej podanej jako parametr procedury. 
// Procedurę przetestuj w programie głównym.

program zapisDoPlikow;

type
   tab = array [1..5] of Integer;

var  
         i : Integer;
   tablica : tab;

procedure zapis(var tablica : tab);
  var
  	tekstowy : text;
     binarny : file of Integer;
           i : Integer;
     
  begin
  	assign(tekstowy, '/Users/Mediorama/PROJEKTY/_PROGRAMOWANIE/Pascal/17_zadania10/text.txt');
    rewrite(tekstowy);
       for i:=1 to Length(tablica) do
       writeln(tekstowy, tablica[i]);
    close(tekstowy);

    assign(binarny, '/Users/Mediorama/PROJEKTY/_PROGRAMOWANIE/Pascal/17_zadania10/binarny.bin');
    rewrite(binarny);
       for i:=1 to Length(tablica) do
       write(binarny, tablica[i]);
    close(binarny);

  end;

begin
  
  for i:=1 to 5 do
    tablica[i] := i;

  zapis(tablica);

  

  readln;

end.