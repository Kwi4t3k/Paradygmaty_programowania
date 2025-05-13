// Zadanie 9

// Cyfry rzymskie są reprezentowane przez siedem różnych symboli: I, V, X, L, C, D i M. Podając liczbę rzymską, przekonwertuj ją na liczbę całkowitą.

// Przykład 1:

// Input: s = "III"
// Output: 3
// Przykład 2:

// Input: s = "LVIII"
// Output: 58
// Przykład 3:

// Input: s = "MCMXCIV"
// Output: 1994
// Założenia:

// 1 <= s.length <= 15
// s zawiera wyłącznie znaki ('I', 'V', 'X', 'L', 'C', 'D', 'M').
// Zakładamy że s jest poprawną liczbą rzymską z zakresu [1, 3999].

function rzymskie_na_calkowite(s) {
    const mapa = {
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000
    };

    let wynik = 0;

    for (let i = 0; i < s.length; i++) {
        const obecna = mapa[s[i]];
        const nastepna = mapa[s[i + 1]];

        if (nastepna > obecna) {
            wynik -= obecna;
        } else {
            wynik += obecna;
        }
    }

    return wynik;
}

// Przykłady użycia:
console.log(rzymskie_na_calkowite("III"));      // 3
console.log(rzymskie_na_calkowite("LVIII"));    // 58
console.log(rzymskie_na_calkowite("MCMXCIV"));  // 1994
