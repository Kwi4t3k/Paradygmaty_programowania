% Skompiluj poniższy program:

rodzice(uranus, gaia, rhea).
rodzice(uranus, gaia, cronus).
rodzice(cronus, rhea, zeus).
rodzice(cronus, rhea, hera).
rodzice(cronus, rhea, demeter).
rodzice(zeus, leto, artemis).
rodzice(zeus, leto, apollo).
rodzice(zeus, demeter, persephone).

ojciec(X, Y) :- rodzice(X, _, Y).
matka(X, Y) :- rodzice(_, X, Y).

rodzic(X, Y) :- ojciec(X, Y); matka(X, Y).

dziadek(X, Z) :- ojciec(X, Y), rodzic(Y, Z).
babcia(X, Z) :- matka(X, Y), rodzic(Y, Z).

% Znajdź rodziców Zeusa.

rodzice_zeusa(Rodzic) :- rodzice(Rodzic, _, zeus) ; rodzice(_, Rodzic, zeus).
rodzice_zeusa(Rodzic) :- ojciec(Rodzic, zeus) ; matka(Rodzic, zeus).