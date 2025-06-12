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

% wersja 2

% --- dostępne kolory ---
kolor(zielony).
kolor(czerwony).
kolor(niebieski).

% --- wierzchołki ---
vertex(a).
vertex(b).
vertex(c).
vertex(d).
vertex(e).

% --- krawędzie (sąsiedztwo) ---
edge(a,b). 
edge(a,c).
edge(b,c). 
edge(b,d).
edge(d,e).

% symetryczne sąsiedztwo
sasiad(X,Y) :- edge(X,Y).
sasiad(X,Y) :- edge(Y,X).

% --- główna relacja: przypisz każdemu wierzchołkowi kolor tak, 
% że żadne dwa sąsiednie nie mają tego samego koloru ---
% Wynikiem jest lista par Wierzchołek–Kolor.
coloring(Colors) :-
    % 1) zbierz wszystkie wierzchołki
    findall(V, vertex(V), Vs),
    % 2) przypisz im kolory, sprawdzając od razu sąsiedztwo
    assign(Vs, [], Colors).

% assign(Vs, Acc, Colors) – Acc to częściowe przypisanie, Colors to ostateczne
assign([], Acc, Acc).
assign([V|Vs], Acc, Colors) :-
    kolor(C),                           % wybierz kolor C dla wierzchołka V
    \+ ( member(V2-C, Acc),            % upewnij się, że żaden z już pokolorowanych
         sasiad(V,V2)                  % sąsiad nie ma tego samego koloru
       ),
    assign(Vs, [V-C|Acc], Colors).     % doklej V-C i rekurencyjnie pokoloruj resztę


coloring(Colors) % <= test
