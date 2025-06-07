% Zadanie 6

% Wykonaj polecenia:

% ?- select(X,[1,2,3],L).
% ?- select(a,L,[1,2,3]).
% Jakie zastosowanie ma instrukcja select?


?- select(X, [1,2,3], L).
X = 1, L = [2,3] ;
X = 2, L = [1,3] ;
X = 3, L = [1,2] ;
false.

?- select(a, L, [1,2,3]).
false.




### Co robi `select/3` i do czego się przydaje?

1. **Niedeterministyczny wybór i usunięcie elementu**

   * `select(Elem, Lista, Reszta)` jest prawdziwe wtedy i tylko wtedy, gdy `Lista` składa się z elementu `Elem` i listy `Reszta`.
   * Próbuje kolejno wszystkie możliwe dopasowania, więc można „wygenerować” każdy możliwy sposób usunięcia jednego elementu z listy.

2. **Iteracja po elementach listy**
   Dzięki `select/3` można w prosty sposób iterować po wszystkich elementach:

   ```prolog
   procesuj_elementy(Lista) :-
     select(E, Lista, L2),
     handle(E),
     procesuj_elementy(L2).
   procesuj_elementy([]).
   ```

3. **Generowanie permutacji**
   Permutację listy `L` można zdefiniować jako:

   ```prolog
   permute([], []).
   permute(L, [X|P]) :-
     select(X, L, L1),
     permute(L1, P).
   ```

   Prolog sam rozbije `L` na `X` i resztę, a potem rekurencyjnie ułoży permutację z pozostałych elementów.

4. **Sprawdzanie i usuwanie**

   * Usuwanie pierwszego wystąpienia elementu z listy.
   * Łatwe definiowanie predykatów typu `delete/3`, `subtract/3`.

5. **Podział listy na dwie części**
   Używając `select/3` w generatorowym trybie, można dekomponować listę na „prefix” i „suffix”:

   ```prolog
   split(Prefix, Suffix, L) :-
     select(X, L, Rest),
     append(Prefix, [X|Suffix], L).
   ```

6. **Kombinatoryka i wyszukiwanie**
   W problemach typu „wybierz k elementów” czy „znajdź kombinacje” `select/3` pozwala na eleganckie wygenerowanie wszystkich możliwych zestawów bez pisania skomplikowanych pętli.

---

**Podsumowując**, `select/3` to uniwersalna relacja do **usuwania**, **wybierania** i **generowania** elementów z list w Prologu — fundament przy definiowaniu permutacji, kombinacji, operacji na zbiorach i w ogóle wszelkich algorytmów pracujących na listach.