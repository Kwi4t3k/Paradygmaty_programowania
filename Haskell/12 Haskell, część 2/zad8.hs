-- Napisz funkcję onlyEven, która przyjmuje listę liczb całkowitych i zwraca listę zawierającą tylko liczby parzyste.

main :: IO ()
main = do
    -- Wywołanie onlyEven – powinno zwrócić tylko liczby parzyste
    print (onlyEven [8, 1, 2, 3, 4, 5, 6])

-- Funkcja zwraca tylko parzyste liczby z listy
onlyEven :: [Int] -> [Int]
onlyEven [] = []  -- pusta lista zwraca pustą listę
onlyEven (first:rest)
    | first `mod` 2 == 0 = first : onlyEven rest  -- jeśli parzysta, dodaj do wyniku
    | otherwise = onlyEven rest                   -- jeśli nieparzysta, pomiń

-- onlyEven :: [Int] -> [Int]
-- onlyEven [] = []
-- onlyEven (first:rest)
--     | even first = first : onlyEven rest
--     | otherwise = onlyEven rest




