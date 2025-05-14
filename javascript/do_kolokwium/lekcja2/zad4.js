// Rozbuduj obiekty typu String dodając im metodę mirror(), która po odpaleniu dla tekstu zwróci jego odbicie:

// "Ala ma kota".mirror() === "atok am alA"

String.prototype.mirror = function() {
    return this.split('').reverse().join('');
}

console.log("Ala ma kota".mirror());