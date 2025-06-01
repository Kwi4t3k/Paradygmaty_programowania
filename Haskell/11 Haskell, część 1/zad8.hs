-- Zaimplementuj funkcję zwracającą ostatnią cyfrę danej liczby.

ostatniaCyfra :: Integer -> Integer
ostatniaCyfra x = abs x `mod` 10

main :: IO ()
main =  do
    putStrLn "Ostatnia cyfra: "
    print(ostatniaCyfra 42)
    print(ostatniaCyfra (-17))