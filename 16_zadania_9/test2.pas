program zad1;

var
	n,i,j: Integer;

begin

writeln('Podaj n:');
readln(n);

  for i:=1 to n do
   begin 	     
      for j:=1 to (n div 2) do 
        begin 
        if (j = 1) or (j = i) then write('*')
         else write(' ');
        end;       
      
       for j:= (n - (n div 2)) to n do 
         begin 
        if (j = (n-i+1)) or (j = n) then write('*')
         else write(' ');
        end;        
   
    writeln;
    end;
   

end.