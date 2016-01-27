program zad4;

var
 k,i : Integer;

function suma(s : Integer) : Integer;
begin
  suma := 0;
  for i:=1 to s do
    suma := suma + (sqr(i)*i);
end;

begin
  writeln('Podaj k: ');
  readln(k);
  writeln('Suma ciągu: ', suma(k));
end.