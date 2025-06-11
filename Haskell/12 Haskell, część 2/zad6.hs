-- Napisz następujące funkcje dla list:

-- a) append l m , która konkatenuje listy l i m,

-- append l m — konkatenuje listy l i m
append :: [a] -> [a] -> [a]
append []     m = m                   -- jeśli pierwsza lista pusta, wynik to druga lista
append (x:xs) m = x : append xs m     -- inaczej: zachowaj x i dołącz resztę ++ m

-- Przykład użycia:
main :: IO ()
main = print (append [1,2] [3,4])     -- wynik: [1,2,3,4]


-- (x:xs) – to pattern matching na pierwszym argumencie funkcji:

-- x wiąże się z pierwszym elementem listy,

-- xs to reszta listy (może być pusta lub nie).

-- m – to drugi parametr, czyli druga lista, którą doklejamy.

-- x : append xs m – tak budujemy wynik:

-- append xs m – rekurencyjnie łączymy ogon xs z listą m,

-- x : ... – doklejamy x na początek tej połączonej listy.


-- b) member x l , która sprawdza, czy x jest elementem listy l,

main :: IO ()
main = do
    print (member 2 [1,2,3])

member :: Eq a => a -> [a] -> Bool
member x [] = False
member x (first:rest) = x == first || member x rest -- True, jeśli x równa się pierwszemu elementowi wpp. rekurencyjnie sprawdź pozostałe elementy

-- c) last l, która znajduje ostatni element w liście,

-- myLast l — znajduje ostatni element listy l
myLast :: [a] -> a
myLast []        = error "myLast: pusta lista"     -- błąd dla pustej listy
myLast [x]       = x                                -- jedyny element jest ostatni
myLast (_:xs)    = myLast xs                        -- pomiń głowę i rekurencja

-- przykładowe użycie:
main :: IO ()
main = print (myLast [1,2,3,4,5])  -- wypisze 5

-- d) delete x l, która skasuje element x z listy l

main :: IO ()
main = do
    print (delete 2 [1,2,3])

delete :: Eq a => a -> [a] -> [a]
delete x (first:rest)
  | x == first = rest                       -- jeśli pierwszy element to x, pomiń go
  | otherwise = first : delete x rest       -- zachowaj first i rekurencyjnie usuwaj z rest

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