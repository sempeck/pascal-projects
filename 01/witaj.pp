program ruch;
uses Crt;
var x,y : Integer;
    kierunek : Char;
begin
 ClrScr;
 x:=10;
 y:=10;
 repeat
 ClrScr;
   TextColor(WHITE);
   GotoXY(X,Y);
   Write('*');
   kierunek:=ReadKey;
   if kierunek=#0 then
   begin
     kierunek:=ReadKey;
     GotoXY(x,y);
     Write('*');


     if (kierunek=#75) AND (x>1) then x:=x-1;
     if (kierunek=#77) AND (x<79) then x:=x+1;
     if (kierunek=#72) AND (y>1) then y:=y-1;
     if (kierunek=#80) AND (y<25) then y:=y+1;
   end;

  until kierunek=#27;
end.