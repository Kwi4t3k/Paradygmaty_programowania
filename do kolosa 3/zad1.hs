-- Function to calculate the sum of a list using recursion
sumList :: Num a => [a] -> a
sumList []     = 0       -- Base case: empty list has a sum of 0
sumList (x:xs) = x + sumList xs  -- Recursive case: add current element to the sum of the rest

main :: IO ()
main = do
    let numbers = [1, 2, 3, 4, 5]
    let result = sumList numbers
    putStrLn $ "Sum of the list: " ++ show result
