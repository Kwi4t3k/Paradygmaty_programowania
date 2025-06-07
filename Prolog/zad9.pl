% Napisz predykat suma(Lista, S), który oblicza sumę wszystkich elementów w liście Lista i zapisuje wynik w S.

suma([], 0).
suma([Głowa|Ogon], S) :-
    suma(Ogon, S1),
    S is S1 + Głowa.