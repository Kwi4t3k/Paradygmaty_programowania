-- Zaimplementuj funkcję obliczającą silnię.

silnia :: Integer -> Integer

silnia 0 = 1
silnia 1 = 1

silnia n
    | n >= 2 = (n * silnia (n - 1))
    | otherwise = error "argument ujemny" 

main :: IO ()
main =  do
    putStr "Silnia x: "
    print(silnia 0)