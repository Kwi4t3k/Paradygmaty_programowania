% Napisz program w Prologu, który pozwoli na pokolorowanie pięciu sąsiadujących ze sobą województw (Podkarpackie, Lubelskie, Mazowieckie, Podlaskie i Warmińsko-Mazurskie), w taki sposób, aby województwa które są sąsiadami, nie posiadały tego samego koloru. Użyj w tym celu tylko trzech kolorów.

% --- dostępne kolory ---
color(red).
color(green).
color(blue).

% --- główna relacja: coloring(Po,Lu,Ma,Pd,Wm)
%   Po – Podkarpackie
%   Lu – Lubelskie
%   Ma – Mazowieckie
%   Pd – Podlaskie
%   Wm – Warmińsko-Mazurskie
coloring(Po, Lu, Ma, Pd, Wm) :-
  % 1) wybierz kolor dla każdego województwa
  color(Po), color(Lu), color(Ma), color(Pd), color(Wm),

  % 2) wymuś, żeby żadne dwa sąsiadujące nie miały tego samego
  Po \= Lu,  % Podkarpackie ≠ Lubelskie
  Lu \= Ma,  % Lubelskie ≠ Mazowieckie
  Ma \= Pd,  % Mazowieckie ≠ Podlaskie
  Ma \= Wm,  % Mazowieckie ≠ Warmińsko-Mazurskie
  Pd \= Wm.  % Podlaskie ≠ Warmińsko-Mazurskie


coloring(Po, Lu, Ma, Pd, Wm). % <= testy
