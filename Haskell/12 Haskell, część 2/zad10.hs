-- Napisz funkcję sumOfDigits, która dla danej liczby całkowitej zwróci sumę jej cyfr.

main :: IO ()
main = do
    -- Wywołanie sumOfDigits – suma cyfr liczby 56
    print (sumOfDigits 56)

-- Funkcja zwraca sumę cyfr liczby całkowitej (także dla liczb ujemnych)
sumOfDigits :: Integer -> Integer
sumOfDigits n
    | n < 0     = sumOfDigits (abs n)              -- jeśli ujemna, zamień na dodatnią
    | n < 10    = n                                -- jeśli jedno-cyfrowa, zwróć ją
    | otherwise = (n `mod` 10) + sumOfDigits (n `div` 10)  -- dodaj ostatnią cyfrę i rekurencja