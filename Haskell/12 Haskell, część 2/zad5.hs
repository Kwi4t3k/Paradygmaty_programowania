-- Napisz funkcję, która generuje dwuelementowe krotki z wszystkimi możliwymi kombinacjami dwóch kolorów ze zbioru {black, white, blue, yellow, red}. Wyeliminuj wyniki typu (red,red) oraz powtórzenia typu (red, yellow) - (yellow, red).

main :: IO()
main = do
    print (func colors)

colors = ["black", "white", "blue", "yellow", "red"]
func :: [String] -> [(String, String)]
func [x] = []
func (first:rest) = [(first, x) | x<-rest] ++ func rest