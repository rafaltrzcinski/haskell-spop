//=========================================================
// Zad. 2
// 1) Sprawdz, ze ponizszy model nie posiada instancji
// 2) Rozszerz model tak, by fryzjer mogl byc kobieta
//    (wprowadz zbiory Person i Woman)
// 3) Przejrzyj wszystkie mozliwe instancje stworzonego
//    modelu (menu "Instance -> Show Next Solution" lub
//    "Next" na pasku narzedzi)
// 4) Dodaj ograniczenie, ze jesli ktos nie jest fryzjerem,
//    to goli co najwyzej tylko siebie
//=========================================================

sig Man { shaves: set Man }

one sig Barber extends Man { }

fact {
  // Fryzjer goli tych i tylko tych mezczyzn, ktorzy
  // sie sami nie gola
  Barber.shaves = { m: Man | m not in m.shaves }
}

run {}
