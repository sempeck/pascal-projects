// Według legendy w pewnej świątyni buddyjskiej w Hanoi siedzą mnisi i przekładają 64 złote krążki z jednego stosu na drugi. Krążki są kolejno coraz mniejsze, a problem polega na tym, że podczas przekładania po jednym krążku nie można położyć krążka większego na mniejszy istnieje więc stos pomocniczy. Zgodnie z legendą w chwili położenia ostatniego krążka nastąpi koniec świata. Nie ma się jednak czego obawiać, gdyż nawet gdyby robili to w tempie jeden ruch na sekundę, to i tak nie zdążyliby przed zgaśnięciem naszego słońca. 

// Inaczej mówiąc są 3 drążki A, B i C i danych jest n krążków umieszczonych jeden na drugim, w porządku rosnących średnic, na drążku A. Zadanie polega na przeniesieniu wszystkich krążków w na drążek B z wykorzystaniem ew. pomocniczego drążka C. Przy tym, zawsze musi być zachowana zasada: mniejszy krążek leży na większym (porządek rosnący).

// Problem ten jest dosyć złożony, ale łatwo jest sformułować dla niego rozwiązanie rekurencyjne: W celu przełożenia n krążków ze stosu A na B, należy najpierw przełożyć n-1 krążków ze stosu A na stos pomocniczy, przenieść n-ty największy krążek z A na B, po czym przełożyć n-1 krążków ze stosu pomocniczego na stos B. Napisz program, który dla zadanej liczby krążków n rozwiązuje problem wież Hanoi.

//     żeby   
//                    (A --> B) * n     
// to trzeba       
//                    (A --> C) * n-1
//                   n-ty A --> B
//                    (C --> B) * n-1


program wiezeHanoi;

var
  n : integer;

procedure wieze (n : integer; poczatkowa, docelowa, pomocnicza : char);
  begin
    if n = 1 then
      writeln ('ZZ ', poczatkowa, ' na ', docelowa)
    else
      begin
        wieze (n-1, poczatkowa, pomocnicza, docelowa);
        writeln ('z ', poczatkowa, ' na ', docelowa);
        wieze (n-1, pomocnicza, docelowa, poczatkowa);
      end;
  end;

begin    
  write ('Ile dysków? ');
  readln(n);
  writeln;
  wieze(n, 'A', 'B', 'C');
  readln;
end.