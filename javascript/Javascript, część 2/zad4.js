/*Zapoznaj się z informacjami o dziedziczeniu prototypowym w Javascript.

a) Jak się to ma do działania obiektów i “klas” w Javascript? Dlaczego mówimy, że w Javascript klasy są tzw. “syntax sugar”? Opisz mechanizm własnymi słowami. 

    W JavaScript każda klasa to tak naprawdę funkcja, a obiekty dziedziczą właściwości poprzez łańcuch prototypow. Klasy są tylko ładniejszym zapisem (syntax sugar) tego, co można osiągnąć za pomocą funkcji i prototypów. W rzeczywistości mechanizm dziedziczenia nadal działa poprzez __proto__, tylko my piszemy to krócej i czytelniej.

*/

//b) Rozbuduj obiekty typu String dodając im metodę mirror(), która po odpaleniu dla tekstu zwróci jego odbicie:

String.prototype.mirror = function() {
    return this.split("").reverse().join('');
};

console.log("Ala ma kota".mirror()); // "atok am alA"
