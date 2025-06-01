-- Napisz funkcję, która pobiera trzy liczby i zwraca różnicę między największą i najmniejszą liczbą.

roznica :: Integer -> Integer -> Integer -> Integer
roznica x y z = maximum[x,y,z] - minimum[x,y,z]

main :: IO ()
main =  do
    putStr "Roznica miedzy najwieksza a najmniejsza: "
    print(roznica 7 1 4)