program dodawanie;

uses sysutils;
var
  a,b,temp : String;
  i,n,m,x,y,w,plus,reszta : Integer;
  suma : array[1..100] of Integer;
  tn : Char;

begin
repeat 
  writeln('a: ');
  readln(a);
  writeln('b: ');
  readln(b);

  if (length(a)<length(b)) then
    begin
      temp := a;
      a := b;
      b := temp;
    end;

   n := length(a);
   m := length(b);
   reszta := 0;
   w := 0;

for i:=1 to length(a) do
     begin
       plus := 0;
       x := StrToInt(a[n]);
       if (n > 1) then n:=n-1;
       y := StrToInt(b[m]);
       if (m > 1) then m:=m-1;
       plus := x+reszta;
       reszta := 0;

       if (i<=length(b)) then
           plus := plus+y;

       if (plus>=10) then
           begin
             plus := plus-10;
             reszta := 1;
           end;
        
        suma[i] := plus;
      end;

    if (reszta = 1) then 
    begin
     suma[i+1] := 1;
     w := 1;
     end;

write('Suma = ');
for i:=length(a)+w downto 1 do
  write(suma[i]);
 writeln;
 writeln('Jeszcze raz? (t/n)');
 readln(tn);

until tn = 'n';
end.
