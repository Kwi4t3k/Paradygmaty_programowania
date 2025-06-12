-- Napisz funkcję, która generuje dwuelementowe krotki z wszystkimi możliwymi kombinacjami dwóch kolorów ze zbioru {black, white, blue, yellow, red}. Wyeliminuj wyniki typu (red,red) oraz powtórzenia typu (red, yellow) - (yellow, red).

main :: IO()
main = do
    print (func colors)

colors = ["black", "white", "blue", "yellow", "red"]
func :: [String] -> [(String, String)]
func [x] = []
func (first:rest) = [(first, x) | x<-rest] ++ func rest



main :: IO()                                 -- główna akcja programu w IO
main = do
    print (func colors)                      -- wywołaj func na liście colors i wypisz wynik

colors = ["black", "white", "blue", "yellow", "red"]
                                             -- definicja listy kolorów

func :: [String] -> [(String, String)]       -- sygnatura: func zamienia listę Stringów na listę par
func [x] = []                                -- przypadek bazowy: pojedynczy element → brak par
func (first:rest) =                          -- gdy lista ma head i tail...
    [(first, x) | x <- rest]                --   utwórz wszystkie pary (first, każdy element z rest)
    ++ func rest                             --   dodaj rekurencyjnie wynik dla rest
