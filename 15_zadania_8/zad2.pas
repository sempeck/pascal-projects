program zad2;

  var
  	n: Integer;

function silnia(x:Integer): Integer;
 var
 	i,w: Integer;

 begin
   w := 1;
    for i:=1 to n do
      w := w * i;
      silnia := w;	
 end; 

begin
  
  writeln('Podaj n: ');
  readln(n);

  writeln(n, '! = ', silnia(n));
  readln;

end.
