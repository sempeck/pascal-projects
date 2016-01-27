// Napisz program odczytujący wszystkie znaki wybranego przez użytkownika pliku
// tekstowego. Program ma zliczać ile razy w pliku pojawiły się znaki będące liczbami.

program odczytZnakow;

var
	tekstowy : text;
	nazwa, sciezka, pelnaNazwa, linia : String;
	i, licznik : Integer;

begin

	sciezka := '/Users/Mediorama/PROJEKTY/_PROGRAMOWANIE/Pascal/17_zadania10/';
	writeln('Podaj nazwę pliku: ');
	readln(nazwa);
	pelnaNazwa := sciezka + nazwa;

	assign(tekstowy, pelnaNazwa);
	reset(tekstowy);
	licznik:=0;
	while not eof(tekstowy) do
		begin
			readln(tekstowy, linia);
				for i:=1 to Length(linia) do
				  if (linia[i] >= chr(48)) and (linia[i] <= chr(57)) then licznik:=licznik+1;			
		end;
	close(tekstowy);

writeln;
writeln('Ilość cyfr w pliku: ', licznik);
readln;
end.
