PROGRAM Oie;

USES crt;


CONST
	mort = 58;
	win = 66;

VAR
	place, jet, tour : integer;

BEGIN
	Randomize;

	place:=0;
	tour:=0;

	Repeat
		begin
		writeln('Vous etes sur la case ',place); //On crée le lancer de dés
		jet:=random(10)+2;

		If (place MOD 9 = 0) and not(place=63) and not(place=0) then	//On gère les cases double
			begin
			place:=place+(jet*2);
			writeln('Case double, avancez de : ',jet*2)
			end
		else					//Sinon on avance normalement
			begin
			place:=place+jet;
			writeln('Avancez de : ',jet);
			end;

		If place=mort then		//La case 58 renvoie au départ
			begin
			place:=0;
			writeln('Retour a la case depart');
			end;

		If (((place-jet)+jet)>win) then	//On gère le cas où le joueur dépasse l'arrivée
			place:=win-(jet-(win-(place-jet)));
			end;


	tour:=tour+1;		//On compte le nombre de tours pour finir
	readln;

	until	place=win;		//Jusqu'à la victoire

writeln('Vous avez fini en ',tour,' tours');
readln;

END.
