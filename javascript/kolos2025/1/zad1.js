class NumbersAnalyzer {
    constructor(liczby) {
        this.liczby = liczby;
    }

    liczbaElementow() {
        return this.liczby.length;
    }

    sumaLiczb() {
        let suma = 0;

        for(let i = 0; i < this.liczby.length; i++) {
            suma += this.liczby[i];
        }
        return suma;
    }

    sredniaArytmetyczna() {
        return this.sumaLiczb() / this.liczbaElementow();
    }

    najmniejszaLiczba() {
        return Math.min(...this.liczby);
    }

    najwiekszaLiczba() {
        return Math.max(...this.liczby);
    }

    sredniaHarmoniczna() {
        let sumaOdwrotnosci = 0;
        for(let i = 0; i < this.liczbaElementow(); i++) {
            sumaOdwrotnosci += 1 / this.liczby[i];
        }

        return this.liczbaElementow() / sumaOdwrotnosci;
    }
}

let arr = [1, 2, 3, 4, 5];
const n1 = new NumbersAnalyzer(arr);

console.log(n1.liczbaElementow());
console.log(n1.sumaLiczb());
console.log(n1.sredniaArytmetyczna());
console.log(n1.najmniejszaLiczba());
console.log(n1.najwiekszaLiczba());
console.log(n1.sredniaHarmoniczna());