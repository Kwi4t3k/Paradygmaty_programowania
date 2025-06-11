-- | Dla danej listy zwraca wszystkie unikalne, nieuporządkowane dwuelementowe pary
kombinacje2 :: [a] -> [(a,a)]
kombinacje2 []       = []
kombinacje2 (x:xs)   =
    -- 1) [(x,y) | y <- xs]       – dla każdego y z ogona xs tworzymy parę (x,y)
    [(x,y) | y <- xs]
    ++
    -- 2) kombinacje2 xs          – rekurencyjnie powtarzamy to samo dla reszty listy
    kombinacje2 xs


-- Przykład użycia w main:
main :: IO ()
main = do
  let zywioly = ["ogien","woda","powietrze","ziemia"]
      kombinacje = kombinacje2 zywioly
  print kombinacje
