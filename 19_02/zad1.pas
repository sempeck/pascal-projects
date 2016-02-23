// Napisz program wykorzystujący funkcję rekurencyjną obliczającą wartość silni dla liczby N wprowadzonej z klawiatury. Liczba N może być liczbą całkowitą z przedziału <0,10>.

program silniaRekurencyjna;

var
  n : Integer;
  tn : Char;

function silnia(n: Integer): Integer;
begin
  if (n<2) then
    silnia := 1
  else
    silnia := n*silnia(n-1); 
end;


begin

  repeat
       
    writeln('Podaj liczbe N (od 0 do 10):');
    readln(n);

      if (n <= 10) and (n >= 0) then
        writeln(n,'! = ', silnia(n))
      else
        writeln('Nieprawidlowa liczba.');
     
    writeln('Jeszcze raz? (t/n)');
        readln(tn);
  until tn = 'n';

end.
