program zad4;

var
	a,i,x: Integer;
	losowe : array[1..5] of Integer;
    bylo : Boolean;

begin
   randomize;
   x := 1;
   bylo := false;

   repeat
     a := random(899)+100;
       for i := 1 to 5 do 
         if a = losowe[i] then
           bylo := true;

         if not bylo then
           begin 
             losowe[x] := a;
             x := x+1;
           end;

        bylo := false;
   until x = 6;

  for i:=1 to 5 do
    writeln(losowe[i]);
    readln;

end.
