// Napisz program wykorzystujący funkcję rekurencyjną, która oblicza maksymalny wspólny dzielnik dwóch liczb wprowadzonych z klawiatury, będących parametrami wywołania funkcji.

program dzielnikRekurencyjny;

var
  a, b: Integer;

function dzielnik(a,b: Integer): Integer;
  // begin
  //   if (b<>0) then
  //     dzielnik(b, a mod b)
  //   else
  //     dzielnik := a;
  // end;

 begin
    if (b=0) then
      dzielnik := a
    else
      dzielnik(b, a mod b);
  end;

begin
  writeln('Podaj liczbę a:');
  readln(a);
  writeln('Podaj liczbę b:');
  readln(b);
  writeln('Największy współny dzielnik: ', dzielnik(a,b));
end.


// 42 i 56 = 14
