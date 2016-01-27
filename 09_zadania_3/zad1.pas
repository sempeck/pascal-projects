program zad1;

var
  a : String;	
  dlu, i : Byte;
  palindrom : Boolean;
  tn : Char;

begin
  
  repeat
  	
	  writeln('Podaj wyraz:');
	  readln(a);

	  dlu := Length(a);

	    for i := 1 to dlu do 
	      begin
		      if (a[i] = a[dlu+1-i]) then 
		        palindrom := true
		      else
		        palindrom := false
	      end;


	  if (palindrom = true) then
	     writeln('Slowo "' + a + '" jest palindromem.')
	  else
	     writeln('Slowo "' + a + '" nie jest palindromem.');

	  writeln('Jeszcze raz? (t/n)');
      readln(tn);

   until tn = 'n';

end.

