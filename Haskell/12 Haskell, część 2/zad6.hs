-- e) split x l , która podzieli listę l do dwóch list l1 i l2. l1 zawiera elementy mniejsze niż x a l2 elementy większe niż x.

main :: IO ()
main = do
    -- Wywołanie funkcji split z x = 3 i przykładową listą
    print (split 3 [1,2,3,4,5])

-- Funkcja split dzieli listę na dwie: elementy < x oraz > x
split :: Ord a => a -> [a] -> ([a], [a])
split _ [] = ([], [])  -- Jeśli lista jest pusta, zwróć dwie puste listy
split x (first:rest)
    | first < x = (first : l1, l2)      -- jeśli element < x, dodaj go do l1
    | first > x = (l1, first : l2)      -- jeśli element > x, dodaj go do l2
    | otherwise = (l1, l2)              -- jeśli element == x, pomiń go
  where
    (l1, l2) = split x rest             -- rekurencyjnie przetwarzaj resztę listy