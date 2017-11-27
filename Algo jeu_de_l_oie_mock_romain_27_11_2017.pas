Algo jeu_de_l_oie

But : simuler un jeu de l oie.

Principe : les multiples de 9 (sauf 63) doublent notre déplacement, la case 58 renvoie au départ et on gagne la partie quand on arrive pile sur la case 66.

Entrée : un entier entre 2 et 12 (un lancer de deux dés).

Sortie : un entier

CONST	mort <- 58 : ENTIER
		victoire <- 66 : ENTIER

VAR		place, jet, tour : ENTIER

DEBUT

place <- 0
tour <- 0

REPETER
	
	ECRIRE "Vous êtes sur la case : ",place
	ECRIRE "Lancez le dé"
	LIRE jet		//On simule le lancer de dés manuellement

	SI (place=9) ET NON(place=63) ET NON(place=0) ALORS
	
		place <- place + jet * 2
		ECRIRE "Case double, avancez de : ",place
	
	SINON

		place <- place + jet
		ECRIRE "Avancez de : ",place

	FINSI

	SI (place=mort) ALORS

		place <- 0
		ECRIRE "Retour à la case départ"

	FINSI

	SI (((place-jet)+jet)>victoire) ALORS

		place <- victoire-(jet-(victoire-(place-jet)))

	FINSI

	tour <- tour + 1

	JUSQUA (place = victoire)

	ECRIRE "Vous avez fini en ",tour," tours"

FIN