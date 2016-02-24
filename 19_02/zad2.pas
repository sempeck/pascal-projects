// Napisz program rysujący obiekt z gwiazdek dla N wprowadzonego przez użytkownika z
// klawiatury. Rysowanie obiektu powinno odbywać się z wykorzystaniem rekurencji. (w
// programie nie można użyć pętli !).
// Przykład dla n=5:
// *****
// ****
// ***
// **
// *

program zadanie2;
var
  n: Integer;


function gwiazdka(n : Integer): Integer;

  procedure rzadGwiazdek(x : Integer);
    begin
      if (x<1) then
        begin 
          writeln(' ');
          gwiazdka(n-1);
        end 
      else    
        begin 
          write('*');
          rzadGwiazdek(x-1);
        end;
    end; 

begin
  if (n>=1) then
    rzadGwiazdek(n);
end;


begin
  writeln('Podaj wysokość choinki: ');
  readln(n);

  gwiazdka(n);

  readln();

end.
 