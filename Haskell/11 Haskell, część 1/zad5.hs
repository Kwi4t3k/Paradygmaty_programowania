-- Napisz funkcję wyznaczającą kolejne wyrazy ciągu Fibonacciego.

fibonacci :: Integer -> Integer

fibonacci 0 = 0
fibonacci 1 = 1

fibonacci n
    | n >= 2 = (fibonacci(n-1) + fibonacci(n-2))
    | otherwise = error "argument ujemny" 

main :: IO ()
main =  do
    putStr "Ciag Fibonacciego: "
    print(fibonacci 0)