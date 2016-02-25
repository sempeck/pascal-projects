// Napisz program wykorzystujący funkcję rekurencyjną, która przeszukuje zdefiniowaną (i wypełnioną losowymi wartościami z zakresu <0,100> ) tablicę jednowymiarową 50 elementową będącą parametrem wywołania funkcji, oraz zwraca informację o maksymalnym elemencie tablicy.

program zad4;
type
  tablica = array [1..50] of Integer;

var
  tab: tablica;
  i: Integer;

function max(var tab : tablica): Integer;
var
  max_temp: Integer;
  l : Integer;

      function mielenie(l : Integer): Integer;
      begin
        if (l > -1) then
          begin
          if (tab[l] > max_temp) then
            max_temp := tab[l];
            // writeln('max_temp ', max_temp);
          mielenie(l-1);
          max := max_temp;
          end;
      end;

begin
  l := Length(tab);
  max_temp := 0;
  max := mielenie(l);
end;

begin
  randomize;

for i:= 0 to 49 do
  begin
    tab[i] := random(101);
    // writeln(tab[i], ' ', ' id: ', i);   
  end; 

writeln('Maksymalna wartość w tablicy to: ', max(tab));

  readln();

end.
