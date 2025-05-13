// Zadanie 10

// Jako poszukiwacz przygód, doszedłeś do tajemniczej komnaty, na ścianie której znajduje się tajemniczy zapis:

// const arr = [
// 	[ 66,  97, 114, 100,   4,   2, 110,  11,   1,   6,  20, ],
// 	[ 99,   3,  10, 122,  76, 101, 111,   3,  32, 100,   0, ],
// 	[  6,  22,   1, 111,  32,  10, 110,   7,  97,  97,  67, ],
// 	[ 60,  97, 116,  32, 100,  23,  97, 114, 100,  32,  34, ],
// 	[  2, 106,  15,   6, 111,  56,  80,  20,  10,  86,  10, ],
// 	[ 20, 110,  121, 32, 107,  55,  50,  99, 110, 105,   8, ],
// 	[ 12,   9,  22, 102,  66, 100,  12, 105,  50,  76, 110, ],
// 	[ 42,  81, 123,  92,  26,  98,  20,   1,  20,  11,  10, ],
// ]

// W starych notatkach znajdujesz tylko krótki ciąg, który ponoć wskazuje kierunek poruszania się po powyższym zapisie.



// const str = "rrrdddllddrrruuuurrddrruurddddlld";

// Twoim zadaniem jest zdekodować ukrytą informację. Dekodowanie rozpoczynasz w lewym górnym rogu, a następnie powinieneś się poruszać zgodnie z literami, gdzie r oznacza prawo, d dół, l lewo, a u górę.

// Po pobraniu kodów z odpowiednich miejsc zamień je na litery za pomocą String.fromCharCode(x). Wynikiem powinien być wypisane w konsoli hasło.

const arr = [
	[ 66,  97, 114, 100,   4,   2, 110,  11,   1,   6,  20, ],
	[ 99,   3,  10, 122,  76, 101, 111,   3,  32, 100,   0, ],
	[  6,  22,   1, 111,  32,  10, 110,   7,  97,  97,  67, ],
	[ 60,  97, 116,  32, 100,  23,  97, 114, 100,  32,  34, ],
	[  2, 106,  15,   6, 111,  56,  80,  20,  10,  86,  10, ],
	[ 20, 110,  121, 32, 107,  55,  50,  99, 110, 105,   8, ],
	[ 12,   9,  22, 102,  66, 100,  12, 105,  50,  76, 110, ],
	[ 42,  81, 123,  92,  26,  98,  20,   1,  20,  11,  10, ],
];

function rozszyfruj(str) {
    let haslo = "";

    let wiersz = 0;
    let kolumna = 0;

    haslo += String.fromCharCode(arr[wiersz][kolumna]);

    for (let i = 0; i < str.length; i++) {
        if (str[i] == "r") {
            kolumna++;
        } else if (str[i] == "l") {
            kolumna--;
        } else if (str[i] == "d") {
            wiersz++;
        } else if (str[i] == "u") {
            wiersz--;
        }

        let liczba = arr[wiersz][kolumna];
        haslo += String.fromCharCode(liczba);
    }

    return haslo;
}

const str = "rrrdddllddrrruuuurrddrruurddddlld";

console.log(rozszyfruj(str));