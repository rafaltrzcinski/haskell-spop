//=========================================================
// Zad. 1
// Przejrzyj kilka instancji ponizszego modelu, a nastepnie
// stopniowo rozszerzaj go i analizuj dopisujac kolejne
// ograniczenia. Analizujac model przegladaj zawsze kilka
// jego instancji (menu "Instance -> Show Next Solution"
// lub "Next" na pasku narzedzi).
//=========================================================

sig Gang { members: set Inmate }

sig Inmate { room: Cell }

sig Cell { }

pred show {

  // W miescie sa dwa gangi

	//operator # definuje liczność zbioru

	#Gang = 2
  
  // Kazdy gang ma czlonkow w wiezieniu 
	#Inmate >= 1
 
  // Kazdy osadzony jest czlonkiem ktoregos z gangow
  // (tu wpisz ograniczenie)

  // Nie ma pustych cel
  // (tu wpisz ograniczenie)

  // W kazdej celi moze siedziec nie wiecej niz dwoch
  // osadzonych
  // (tu wpisz ograniczenie)

  // Czlonkowie tego samego gangu nie siedza w tej
  // samej celi
  // (tu wpisz ograniczenie)
}

run show
