Program choinka;


procedure szlaczek(Znak:Char; Ile:Integer);
  var
  i : Integer;

  begin
    for i := 1 to Ile do
    write(Znak);
    WriteLn;
  end;

procedure choinka(wysokosc:Integer);

var
  k : Integer;

  begin
    for k := 1 to wysokosc do
     szlaczek('*', k);
  end;

begin
  
  choinka(20);
    
end.
