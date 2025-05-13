// Napisz funkcję checkPalindrom(txt), która zwróci true/false w zależności od tego, czy przekazane słowo jest palindromem.

function checkPalindrom(txt) {
    return txt == txt.split('').reverse().join('');
}

console.log(checkPalindrom('dupa')); // false
console.log(checkPalindrom("kamilślimak")); // true