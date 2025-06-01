-- Napisz funkcję filter p l, której wartością zwracaną jest lista wszystkich elementów listy l , które spełnią predykat p. 
-- Jaki ma typ funkcja filter? (a -> Bool) -> [a] -> [a]

main :: IO ()
main = do
    -- Wywołanie funkcji myfilter z predykatem "czy równe 3"
    print (myfilter (\x -> x == 3) [1,2,3,4,3])

-- Funkcja filtrująca elementy, które spełniają predykat p
myfilter :: (a -> Bool) -> [a] -> [a]
myfilter _ [] = []  -- dla pustej listy zwróć pustą listę
myfilter p (first:rest)
    | p first   = first : l  -- jeśli element spełnia predykat, dołącz go do wyniku
    | otherwise = l          -- w przeciwnym razie pomiń
  where
    l = myfilter p rest      -- rekurencyjnie przetwarzaj resztę listy
