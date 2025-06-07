% Napisz program obliczający największy wspólny dzielnik dwóch dodatnich liczb całkowitych nwd(X, Y, Nwd) za pomocą algorytmu Euklidesa z odejmowaniem wg algorytmu zapisanego imperatywnie:

function nwd(x, y)
	while x ≠ y do
		if x > y then x := x – y
		else y := y – x
	return x




nwd(X,Y,Nwd) :-
    X = Y,
    Nwd = X.

nwd(X,Y,Nwd) :-
    X > Y,
    X1 is X - Y,
    nwd(X1, Y, Nwd).

nwd(X,Y,Nwd) :-
    X < Y,
    Y1 is Y - X,
    nwd(X,Y1,Nwd).



nwd(25, 10, X)
% 5