% Zdefiniuj predykat odwróć(Lista, Odwrocona), który zwraca listę w odwrotnej kolejności. Na przykład odwróć([1,2,3], X) powinno zwrócić X = [3,2,1].

odwróć(Lista, Odwrocona) :-
    odwróć(Lista, [], Odwrocona).

odwróć([], Akumulator, Akumulator).
odwróć([Głowa|Ogon], Akumulator, Wynik) :-
    odwróć(Ogon, [Głowa|Akumulator], Wynik).