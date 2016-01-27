program zadanie6;

var
  i,j,n : Integer;
  suma,el : Real;
	
procedure szereg(x : Integer);
begin
  for i:=1 to x do
    begin 
      el := (1/i);
      for j:=1 to i+1 do
        el := el*(-1);       
        writeln(el:3:2);
      suma := suma + el;
    end;
end;

begin
  writeln('Podaj n: ');
  readln(n);
  szereg(n);
    writeln('Suma szeregu: ', suma:3:2);
  readln;
end.