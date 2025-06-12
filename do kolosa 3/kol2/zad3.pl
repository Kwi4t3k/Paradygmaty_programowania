% W królestwie Kolorów, gdzie kolory były magicznymi mocami wpływającymi na życie mieszkańców, istniała wielka mapa, która przedstawiała sieć połączeń pomiędzy różnymi wioskami. Mapa ta składała się z węzłów (wioski) oraz krawędzi (dróg) łączących te wioski. Mieszkańcy królestwa postanowili, że każdą wioskę trzeba pokolorować, a kolory miały symbolizować różne elementy królestwa:
% Zielony symbolizował spokój i naturę,
% Czerwony oznaczał odwagę i siłę,
% Niebieski reprezentował mądrość i spokój.
% Władca królestwa, Król Chrom, miał zadanie stworzenia takiej mapy, na której żadne dwie sąsiednie wioski (węzły) nie miałyby tego samego koloru, ponieważ w takim przypadku magia kolorów mogłaby się zakłócić, a królestwo stałoby się niestabilne.
% Król zaprosił do współpracy najbardziej uzdolnionych czarodziei, którzy byli specjalistami w rozwiązywaniu złożonych zagadnień.

% W twoim zadaniu masz za zadanie napisać program w Prologu, który będzie rozwiązywał problem kolorowania grafu, w którym wierzchołki reprezentują wioski, a krawędzie łączące te wioski oznaczają, że wioski sąsiadują ze sobą.
% Graf jest reprezentowany przez zestaw połączeń, a twoje zadanie polega na tym, aby przypisać do każdego wierzchołka jeden z trzech kolorów (zielony, czerwony, niebieski), przy czym sąsiednie węzły nie mogą mieć tego samego koloru.


% --- dostępne kolory ---
color(zielony).
color(czerwony).
color(niebieski).

% --- krawędzie (sąsiedztwo) ---
% Tu wklej swoje fakty edge/2, np.:
%
% edge(a,b).
% edge(a,c).
% edge(b,c).
% edge(b,d).
% edge(c,d).
% edge(d,e).
%

% symetryczne sąsiedztwo
neighbor(X,Y) :- edge(X,Y).
neighbor(X,Y) :- edge(Y,X).

% --- Zbieranie wszystkich wierzchołków z faktów edge/2 ---
vertex(V) :- edge(V,_).
vertex(V) :- edge(_,V).

vertices(Vs) :-
  setof(V, vertex(V), Vs).    % zbiera unikalne V

% --- Główny predykat: przypisz każdemu wierzchołkowi jakiś kolor tak,
%    żeby żadne dwa sąsiadujące nie miały tego samego ---
%
% coloring(Colors) – Colors to lista par Wierzchołek–Kolor
coloring(Colors) :-
  vertices(Vs),                % weź wszystkie wierzchołki
  assign(Vs, [], Colors).

% assign(Remaining, Acc, Result) – Acc to dotychczasowe przypisania,
% Result to wynikowa lista par V–C
assign([], Acc, Acc).
assign([V|Vs], Acc, Colors) :-
  color(C),                    % wybierz kolor C dla V
  \+ ( member(V2-C, Acc),      % upewnij się, że żaden już pokolorowany
       neighbor(V,V2)          % sąsiad V nie ma tego samego koloru
     ),
  assign(Vs, [V-C|Acc], Colors).

