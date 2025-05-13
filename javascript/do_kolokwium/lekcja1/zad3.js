//Napisz funkcję printNumbers(nr), która wymagać będzie liczby. Funkcja powinna zwrócić tekst, który będzie składał się z kolejnych liczb.

function printNumbers(nr) {
    let liczby = "";
    
    for(let i = 0; i < nr; i++) {
        liczby += i + " ";
    }

    return liczby.trim(); // usuwanie ostatniej spacji
}

console.log(printNumbers(5));
