% Zdefiniuj predykat długość(Lista, Dł), który oblicza długość listy Lista i zapisuje ją w Dł.

długość([], 0).
długość([_|Ogon], Dł) :-
    długość(Ogon, Dł1),
    Dł is Dł1 + 1.