// Kol 2

sig Student {}

sig Ksiazka {Pos_prze: lone Student}

sig Biblioteka {Wyprz: Ksiazka->lone Student}

pred show {

	//Student moze miec max 2 ksiazki:
	all s:Student | #{k:Ksiazka | s in k.Pos_prze} <=2

	//Student posiada tylko te ksiazki, ktore wypozyczyl
	
}

run show
