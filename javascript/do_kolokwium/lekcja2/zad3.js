// Stwórz obiekt o nazwie text. Obiekt ten powinien mieć metody:

// check(txt, word)
// która zwraca true/false jeżeli w tekście txt znajduje się szukane słowo word
// check("ala ma kota", "kota") ---> true

// getCount(txt)
// Zwraca liczbę liter w tekście txt. Uwaga znaki interpunkcyjne też traktujmy jako litery
// getCount("ala ma kota") ---> 11

// getWordsCount(txt)
// zwraca liczbę słów w przekazanym tekście
// getWordsCount("Ala ma kota") ---> 3

// setCapitalize(txt)
// zwraca nowy tekst tak zamieniony, że każde słowo zaczyna się z dużej litery
// setCapitalize("ala ma kota") ---> "Ala Ma Kota"

// setMix(txt)
// zwraca nowy tekst z naprzemiennie dużymi/małymi literami. Spację i znaki interpunkcyjne traktujemy jako litery.
// setMix("ala ma kota") ---> "aLa mA KoTa"

// generateRandom(lng)
// Generuje tekst o długości lng, który składa się z losowych liter
// generateRandom(10) ---> "dkjiuhtjox"

const text = {
    // Sprawdza, czy tekst `txt` zawiera słowo `word`
    check: function(txt, word) {
        let found = txt.search(word); // Szuka słowa w tekście, jeśli nie znajdzie → -1
        if (found !== -1) {
            return true; // Znalazło słowo
        } else {
            return false; // Nie znalazło słowa
        }
    },

    // Zlicza wszystkie znaki w tekście oprócz spacji
    getCount: function(txt) {
        let counter = 0;
        for (let i = 0; i < txt.length; i++) {
            if (txt[i] !== " ") { // Pomijamy spacje
                counter++; // Liczymy tylko litery i znaki interpunkcyjne
            }
        }
        return counter; // Zwracamy liczbę znaków bez spacji
    },

    // Zwraca liczbę słów w tekście
    getWordsCount: function(txt) {
        return txt.trim().split(/\s+/).length; 
        // Usuwa spacje z początku/końca i dzieli po jednej lub więcej spacji
    },

    // Zwraca tekst, gdzie każde słowo zaczyna się wielką literą
    setCapitalize: function(txt) {
        return txt
            .split(' ') // Dzieli tekst na tablicę słów
            .map(word => word[0].toUpperCase() + word.slice(1)) 
            // Zamienia pierwszą literę każdego słowa na dużą, reszta zostaje
            .join(' '); // Łączy słowa z powrotem w jeden string
    },

    // Zwraca tekst, gdzie litery są naprzemiennie małe/duże
    setMix: function(txt) {
        let result = "";
        for (let i = 0; i < txt.length; i++) {
            let znak = txt[i]; // Aktualny znak
            let nowyZnak;

            if (i % 2 === 0) {
                nowyZnak = znak.toLowerCase(); // Co drugi (parzysty) → mała litera
            } else {
                nowyZnak = znak.toUpperCase(); // Nieparzysty → duża litera
            }

            result = result + nowyZnak; // Dodajemy przekształcony znak do wyniku
        }
        return result; // Zwracamy wynikowy tekst
    },

    // Generuje losowy ciąg znaków o długości `lng`
    generateRandom: function(lng) {
        const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"; 
        // Dostępne znaki do losowania
        let result = "";
        for (let i = 0; i < lng; i++) {
            result += chars.charAt(Math.floor(Math.random() * chars.length)); 
            // Wybiera losowy znak z `chars`
        }
        return result; // Zwraca wygenerowany ciąg
    }
};

let zdanie = "ala ma kota";

console.log(text.check(zdanie, "kota")); // true
console.log(text.getCount(zdanie)); // 9 (bez spacji)
console.log(text.getWordsCount(zdanie)); // 3
console.log(text.setCapitalize(zdanie)); // "Ala Ma Kota"
console.log(text.setMix(zdanie)); // "aLa mA KoTa"
console.log(text.generateRandom(10)); // np. "aXnQweUzsK"