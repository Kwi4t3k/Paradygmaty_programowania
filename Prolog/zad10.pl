% Zdefiniuj predykat ostatni(X, Lista), który jest prawdziwy, jeśli X jest ostatnim elementem listy Lista.

ostatni(X, [X]).
ostatni(X, [_|Ogon]) :-
    ostatni(X, Ogon).
