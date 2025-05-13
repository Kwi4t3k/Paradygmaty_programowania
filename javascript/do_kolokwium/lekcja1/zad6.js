// Stwórz funkcję random(max), która będzie zwracać losową liczbę z zakresu 0 - max. Wykorzystaj tą funkcję do wygenerowania 20-elementowej tablicy. Posortuj tą tablicę, a następnie wypisz sumę oraz średnią wszystkich liczb z tej tablicy.

function random(max) {
    let min = 0;

    return Math.floor(Math.random()*(max-min+1)+min);
}

function generateArray() {
    let liczby = [];

    for(let i = 0; i < 20; i++) {
        liczby.push(random(10));
    }

    console.log(liczby);

    liczby.sort();

    console.log(liczby);

    let suma = 0;

    liczby.forEach(num => {suma += num;})

    console.log(suma);

    console.log((suma / liczby.length).toFixed(2));
}

generateArray();