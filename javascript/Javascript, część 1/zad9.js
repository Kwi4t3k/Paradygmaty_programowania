// do odpalenia: node zad9.js

function rzymskie_na_arabskie(napis) {
    const znaki = new Map([
        ["I", 1],
        ["V", 5],
        ["X", 10],
        ["L", 50],
        ["C", 100],
        ["D", 500],
        ["M", 1000],
    ])

    let suma = 0;
    let poprzednia_wartosc = 0;

    for (let i = napis.length - 1; i >= 0; i--) {
        let aktualna_wartosc = znaki.get(napis[i]);

        if (aktualna_wartosc < poprzednia_wartosc) {
            suma -= aktualna_wartosc;
        } else {
            suma += aktualna_wartosc;
        }

        poprzednia_wartosc = aktualna_wartosc;
    }

    return suma;
}

console.log(rzymskie_na_arabskie("III")); // 3
console.log(rzymskie_na_arabskie("LVIII")); // 58
console.log(rzymskie_na_arabskie("MCMXCIV")); // 1994
console.log(rzymskie_na_arabskie("IV")); // 4
console.log(rzymskie_na_arabskie("VI")); // 6
