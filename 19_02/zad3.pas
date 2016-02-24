// Napisz program obliczający N-ty element ciągu Fibonacciego (rekurencyjnie). Wartość N
// ma być liczbą całkowitą podaną przez użytkownika z klawiatury.
// Przykład
// N=6
// 1+1+2+3+5+8

program zadanie3;
var
  n: Integer;

function fib(n: Integer): Integer;
begin
  if (n<3) then
    fib := 1
  else
    begin
    fib := fib(n-2) + fib(n-1);
    end;
end;

begin
  writeln('Podaj n: ');
  readln(n);
  writeln(n, ' element ciągu Fibonacciego to ', fib(n));
end.
