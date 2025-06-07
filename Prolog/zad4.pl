% Fabryka produkuje kilka różnych produktów, nazwijmy je p1, p2 i p3. Produkty są produkowane ze składników, które nazwijmy s1, s2, s3 i s4. Zbuduj prologową bazę danych, która będzie przechowywała następujące informacje:

% a) opis każdego produktu, wyszczególniający które składniki są potrzebne do jego produkcji (na ogół produkt nie wymaga użycia wszystkich składników).

% b) spis dostępnych w tej chwili składników.

% --- Produkty ---
produkt(p1).
produkt(p2).
produkt(p3).

% --- Składniki potrzebne do produkcji produktu X ---
% potrzebuje(X,Y) — produkt X potrzebuje składnika Y
potrzebuje(p1, s1).
potrzebuje(p1, s2).

potrzebuje(p2, s2).
potrzebuje(p2, s3).
potrzebuje(p2, s4).

potrzebuje(p3, s1).
potrzebuje(p3, s4).

% --- Dostępne składniki w magazynie ---
% dostepny(Y) — składnik Y jest obecnie dostępny
dostepny(s1).
dostepny(s3).
dostepny(s4).
% (załóżmy, że s2 jest niedostępny)

% --- moznaprodukowac(X) ---
% X to produkt, dla którego nie istnieje żaden potrzebny składnik Y,
% który jest niedostępny.
moznaprodukowac(X) :-
    produkt(X),
    \+ ( potrzebuje(X, Y), \+ dostepny(Y) ).