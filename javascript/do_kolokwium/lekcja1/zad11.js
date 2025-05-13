// Zadanie 11

// Biorąc pod uwagę ciąg znaków s składającego się ze słów i spacji, napisz funkcję która zwraca długość ostatniego słowa w ciągu. Słowo jest maksymalnym podciągiem składającym się wyłącznie ze znaków innych niż spacje.

// Przykład 1:

// Input: s = "Hello World"
// Output: 5
// Przykład 2:

// Input: s = "   fly me   to   the moon  "
// Output: 4
// Założenia

// 1 <= s.length <= 104
// s zawiera tylko znaki angielskiego alfabetu i spacje ' '.
// W s znajduje się co najmniej jedno słowo.

function dlugosc_ostatniego_slowa(s) {
    let slowo = "";
    let ostatnie_slowo = "";

    for (let i = 0; i < s.length; i++) {
        if (s[i] == " ") {
            slowo = "";
        } else {
            slowo += s[i];
            ostatnie_slowo = slowo;
        }
    }

    return ostatnie_slowo + ", " + ostatnie_slowo.length
}

let s = "Hello World";
console.log(dlugosc_ostatniego_slowa(s));

let s1 = "   fly me   to   the moon  ";
console.log(dlugosc_ostatniego_slowa(s1));