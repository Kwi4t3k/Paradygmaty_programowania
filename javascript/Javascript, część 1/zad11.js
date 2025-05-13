function dlugosc_ostatniego_slowa(napis) {
    let ostatnie_slowo = "";
    let slowo = "";

    for (let i = 0; i < napis.length; i++) {
        if (napis[i].match(/[A-Za-z]/)) {
            slowo += napis[i];
            ostatnie_slowo = slowo;
        } else if (napis[i] === " ") {
            slowo = "";
        }
    }

    return ostatnie_slowo.length;
}

console.log(dlugosc_ostatniego_slowa("Hello World")); // 5
console.log(dlugosc_ostatniego_slowa("   fly me   to   the moon  ")); // 4