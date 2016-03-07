program oCoChodziWeWskaznikach;

type 
  wskaznik = ^rekord;
  rekord = record
    wartosc : Integer;
    nastepny : wskaznik;
  end;

var
  lista : wskaznik; // ???????

procedure dodaj (poprzedni: wskaznik; nowa_wartosc: Integer);
  var
    tmp: wskaznik;  
  begin
    New(tmp);
    tmp^.wartosc := nowa_wartosc;
  end;

begin
  lista := nil;

  readln();
end.
