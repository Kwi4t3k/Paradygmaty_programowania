// Zadanie 4

// Stwórz funkcję generateRandom(min, max), która będzie przyjmować dwie wartości - min i max. Funkcja powinna zwrócić losową liczbę z podanego przedziału. Do generowania losowej liczby możesz użyć wzoru Math.floor(Math.random()*(max-min+1)+min).

// Wykorzystaj ją do utworzenia 10 liczb z przedziału 1 - 20. Jeżeli połowa z nich będzie większa od 10, wypisz tekst udało się, w przeciwnym razie wypisz w konsoli tekst niestety nie.

function generateRandom(min, max) {
    let liczba = [];

    for(let i = 0; i < 10; i++) {
        liczba.push(Math.floor(Math.random()*(max-min+1)+min));
    }

    let licznik = 0;

    for(let i = 0; i < liczba.length; i++) {
        if (liczba[i] > 10) {
            licznik++;
        }
    }

    if (licznik >= Math.floor(liczba.length/2)) {
        return liczba + " udało się";
    } else {
        return liczba + " niestety nie";
    }
}

console.log(generateRandom(1, 20));