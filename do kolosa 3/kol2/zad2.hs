-- W królestwie Liczb istniało starożytne tajemnicze królestwo, gdzie w ukrytych komnatach znajdowały się Listy Liczb. Były to magiczne artefakty, w których liczby były poukładane w różne, wielopoziomowe listy. Każda lista była inna i miała swój własny układ, a aby odkryć pełny obraz królestwa, należało połączyć wszystkie te liczby w jedną, jednorodną całość.

-- Mówiła o tym przepowiednia, którą odkryto w jednej z zaginionych ksiąg: „Jeśli znajdziesz sposób, by spłaszczyć wszystkie listy liczb i zebrać je razem, zyskasz dostęp do pełnej mocy Królestwa Liczb.” Niestety, wiele osób próbowało rozwiązać tę zagadkę, ale nikt nie potrafił spłaszczyć licznych list w jedną całość.

-- Wtedy pojawił się młody, bystry magik, znany w królestwie jako Algorytmiusz. Miał on wyjątkowy talent do rozwiązywania zagadek przy użyciu magii rekurencji. Podjął się wyzwania i opracował specjalną formułę, która pozwalała na spłaszczenie listy list, zachowując przy tym kolejność liczb.

-- Magia Algorytmiusza polegała na tym, by przy każdej kolejnej liście, którą spotkał, wyciągać jej elementy jeden po drugim i dodawać je do jednej długiej listy. Dzięki temu wreszcie powstała jedna lista, która zawierała wszystkie liczby z zachowaniem porządku.

-- Twoim zadaniem jest stworzenie funkcji o nazwie flatten w Haskellu, która spłaszcza listę list liczb całkowitych, zwracając pojedynczą listę zawierającą wszystkie elementy z zachowaniem kolejności. Wykorzystaj rekurencję, aby rozwiązać to wyzwanie, tak jak zrobił to Algorytmiusz.


-- flatten spłaszcza listę list, zwracając jedną listę wszystkich elementów
flatten :: [[Int]] -> [Int]
flatten []       = []               -- pusta lista list → pusta lista
flatten (xs:xss) = xs ++ flatten xss  -- dodaj zawartość pierwszej listy i rekurencyjnie spłaszczaj resztę

-- Przykład użycia:
main :: IO ()
main = do
    print $ flatten [[1,2,3], [], [4,5], [6]]  
    -- wynik: [1,2,3,4,5,6]
