-- Napisz funkcję, która pobiera listę i zwraca tę samą listę z elementami w odwróconej kolejności, nie korzystając z gotowej funkcji reverse.

main :: IO()                     -- główna akcja programu typu IO
main = do
    print (rev [1,2,3])         -- wywołaj rev na [1,2,3] i wypisz efekt

rev :: [a] -> [a]                -- sygnatura: rev przyjmuje listę a i zwraca listę a
rev x = rev' x []                -- wywołaj pomocnicze rev' z x jako wejściem i pustym akumulatorem

rev' :: [a] -> [a] -> [a]         -- sygnatura: rev' bierze listę do odwrócenia i akumulator, zwraca wynik
rev' [] y = y                    -- jeżeli nie ma już elementów (wejście puste), rezultat to akumulator
rev' (first:rest) y =            -- w przeciwnym razie rozbij listę na head=first i tail=rest
    rev' rest (first:y)          -- dodaj pierwszy element na początek akumulatora i rekurencyjnie przetwarzaj resztę
