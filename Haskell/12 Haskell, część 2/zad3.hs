-- Napisz funkcję, która pobiera listę i zwraca tę samą listę z elementami w odwróconej kolejności, nie korzystając z gotowej funkcji reverse.

main :: IO()
main = do
    print (rev [1,2,3])

rev :: [a] -> [a]
rev x = rev' x []

rev' :: [a] -> [a] -> [a]
rev' [] y = y
rev' (first:rest) y = rev' rest (first:y)