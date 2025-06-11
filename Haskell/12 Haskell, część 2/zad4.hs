-- Skorzystaj z mechanizmu składania list w celu utworzenia tabliczki mnożenia. Tabela powinna być listą złożoną z trójelementowych krotek. Pierwsze dwa elementy to liczby z zakresu 1..12, a trzeci to ich iloczyn.

main :: IO()
main = do
    print (func)

func :: [(Int, Int, Int)]
func = [(i, j, i*j) | i<-[1..12], j<-[1..12]]