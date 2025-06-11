% --- dostępne kolory ---
kolor(zielony).
kolor(czerwony).
kolor(niebieski).

% --- krawędzie (sąsiedztwo) ---
sasiad(a,b). sasiad(b,a).
sasiad(a,c). sasiad(c,a).
sasiad(b,c). sasiad(c,b).
sasiad(b,d). sasiad(d,b).
sasiad(d,e). sasiad(e,d).

% --- główna relacja: każdy wierzchołek-atom dostaje jeden z trzech kolorów ---
%    tak, aby żadne dwa sąsiednie nie miały tego samego koloru
coloring(a-Ca, b-Cb, c-Cc, d-Cd, e-Ce) :-
    % 1) Wybierz kolor dla każdej wioski
    kolor(Ca), kolor(Cb), kolor(Cc), kolor(Cd), kolor(Ce),
    % 2) Sprawdź, że sąsiedzi mają różne kolory
    Ca \= Cb,  % a–b
    Ca \= Cc,  % a–c
    Cb \= Cc,  % b–c
    Cb \= Cd,  % b–d
    Cd \= Ce.  % d–e



% coloring(a-Z, b-Y, c-X, d-W, e-V). <= test
