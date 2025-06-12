-- W Królestwie Liczb, na skraju magicznej krainy, znajdowało się wiele tajemniczych artefaktów. Jednym z najważniejszych przedmiotów w tym królestwie była Lista — obiekt, który zawierał różnorodne liczby. Jednak lista ta była szczególna. Aby uzyskać dostęp do ukrytych, cennych zasobów, należało dowiedzieć się, jak długa jest ta lista.

-- Legenda mówiła, że każda lista liczb zawierała ukrytą moc, a jej długość miała kluczowe znaczenie dla rozwiązywania zagadek. Aby zdobyć cenne skarby, należało przejść przez specjalną próbę – dowiedzieć się, ile elementów składa się na listę, aby móc przejść dalej.

-- Młody, ambitny czarodziej o imieniu Algorytmiusz postanowił stawić czoła tej próbie. Aby tego dokonać, musiał stworzyć magiczną formułę, która pozwoliłaby mu obliczyć długość każdej listy liczb. Wiedział, że w Haskelu, jego ulubionym języku magicznej matematyki, można to zrobić w sposób rekurencyjny, krok po kroku.

-- Algorytmiusz stworzył funkcję, która analizowała każdy element listy i liczyła, ile razy musi się powtórzyć, by dojść do końca listy. Dzięki tej magii był w stanie obliczyć długość dowolnej listy.

-- Twoim zadaniem jest stworzenie funkcji o nazwie lengthList, która oblicza długość listy w Haskelu. Dzięki tej funkcji będziesz w stanie dowiedzieć się, ile liczb zawiera lista, a to otworzy przed tobą drzwi do dalszych przygód w Królestwie Liczb.

-- Oblicza długość listy za pomocą rekurencji
lengthList :: [a] -> Int
lengthList []       = 0               -- gdy lista pusta, długość to 0
lengthList (_:xs)   = 1 + lengthList xs  -- dla niepustej: 1 (pierwszy element) + długość ogona

-- Przykładowe użycie
main :: IO ()
main = do
    print (lengthList ([]    :: [Int]))  -- 0
    print (lengthList [42]              )  -- 1
    print (lengthList [1,2,3,4,5]       )  -- 5
