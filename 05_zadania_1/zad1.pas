program zad1;

{$APPTYPE CONSOLE}

var
	imie, nazwisko: String;
	rok, wiek: Integer;

begin
	WriteLn('Jak masz na imie?');
	ReadLn(imie);
	WriteLn('Jak masz na nazwisko?');
	ReadLn(nazwisko);
	WriteLn('Podaj swoj wiek:');
	ReadLn(wiek);
	WriteLn('Który mamy rok?');
	ReadLn(rok);
	WriteLn('Masz na imie ', imie, ', a na nazwisko ', nazwisko, '.');
	WriteLn('Jesli mamy rok ', rok, ', to urodziles sie w ', rok - wiek, ' roku.');
    ReadLn;
end.