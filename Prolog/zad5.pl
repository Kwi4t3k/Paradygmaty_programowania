% Zadanie 5

% Wykonaj polecenia:

% ?- append([olej], [woda], [olej, woda]).

% ?- append([olej], [woda], Co).

% ?- append([olej], Co, [olej, woda]).
% Jakie zastosowania ma instrukcja append?


?- append([olej], [woda], [olej, woda]).
true.

?- append([olej], [woda], Co).
Co = [olej, woda].

?- append([olej], Co, [olej, woda]).
Co = [woda].




## Zastosowania `append/3`

1. **Łączenie list**
   Podstawowe użycie: jeżeli chcesz złączyć dwie listy w jedną:

   ```prolog
   append([a,b], [c,d], X).
   % X = [a,b,c,d].
   ```

2. **Rozbijanie list**
   `append/3` działa relacyjnie w obie strony: pozwala rozłożyć istniejącą listę na dwa fragmenty:

   ```prolog
   append(Prefix, Suffix, [1,2,3,4]).
   % Prefix = [], Suffix = [1,2,3,4] ;
   % Prefix = [1], Suffix = [2,3,4] ;
   % Prefix = [1,2], Suffix = [3,4] ;
   % … i tak dalej.
   ```

3. **Sprawdzanie podlisty (sublist)**
   Można łatwo określić, czy lista `Sub` jest podlistą (ciągłym fragmentem) listy `L`:

   ```prolog
   sublist(Sub, L) :-
     append(_, Tail, L),
     append(Sub, _, Tail).
   ```

4. **Wstawianie elementu w dowolne miejsce**
   Dzięki dekompozycji listy możesz wstawić element w każdym możliwym miejscu:

   ```prolog
   insert(X, L, R) :- append(P, S, L), append(P, [X|S], R).
   ```

5. **Definiowanie innych predykatów**

   * `last(Element, List)` można zapisać jako `append(_, [Element], List)`.
   * `reverse/2`, `flatten/2`, `permutation/2` i wiele innych wykorzystuje `append` w swojej implementacji.

6. **Difference lists**
   Wydajna praca z dużą liczbą konkatenacji:

   ```prolog
   % zwykły sposób (wolny przy wielu ++):
   %        append(L1, L2, R), append(R, L3, S), …
   % difference list:
   %        DL1 = L1-R, DL2 = R-L3, append_dl(DL1, DL2, DL3), …
   ```

7. **Generowanie wszystkich kombinacji**
   Jeśli korzystasz z `append/3` w trybie generatorowym, Prolog zwróci wszystkie możliwe pary podziałów listy, co można wykorzystać np. do łamania problemów na podproblemy.

---

Podsumowując, `append/3` to uniwersalna relacja do **łączenia**, **dzielenia** i **generowania** list w Prologu – kluczowy budulec dla wielu wyższych operacji na listach.
