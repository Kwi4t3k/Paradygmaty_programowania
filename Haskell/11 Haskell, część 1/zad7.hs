-- Zaimplementuj funkcję, która pobiera dwie liczby i znajduje sumę ich kwadratów.

sumaKwadratow :: Integer -> Integer -> Integer
sumaKwadratow x y = (x * x) + (y * y)

main :: IO ()
main =  do
    putStr "Suma kwadratow: "
    print(sumaKwadratow 3 4)