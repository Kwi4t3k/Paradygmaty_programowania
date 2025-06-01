-- Napisz funkcję doubleAll, która przyjmuje listę liczb całkowitych i zwraca listę, w której każda liczba jest podwojona.

main :: IO ()
main = do
    -- Wywołanie doubleAll – każda liczba zostanie podwojona
    print (doubleAll [1, 2, 3, 4, 5, 6])

-- Funkcja podwaja każdy element listy
doubleAll :: [Int] -> [Int]
doubleAll [] = []  -- dla pustej listy zwróć pustą
doubleAll (first:rest) = first * 2 : doubleAll rest  -- podwój bieżący i kontynuuj