/*Zapoznaj się z informacjami o tzw. domknięciach (ang. clousures) w JavaScript.

a) Opisz mechanizm własnymi słowami. 

    Domknięcia to sytuacja, gdy wewnątrz jednej funkcji tworzymy drugą funkcję, która ma dostęp do zmiennych tej zewnętrznej, nawet po jej zakończeniu. Dzięki temu można przechowywać dane w prywatnym zakresie i korzystać z nich później.

*/

/*b) Stwórz funkcję createCounter, która zwraca funkcję inkrementującą licznik. Funkcja zwrócona przez createCounter powinna:

Zwiększać wartość licznika o 1 przy każdym wywołaniu,
Zwracać bieżącą wartość licznika po każdej inkrementacji.
Dodatkowo funkcja createCounter powinna działać tak, że za każdym razem, gdy wywołujesz createCounter, tworzysz nowy licznik, który ma swoją własną odrębną wartość, niezależną od innych liczników. Użyj w tym celu mechanizmu domknięć.

Przykład:

const counter1 = createCounter();
console.log(counter1()); // 1
console.log(counter1()); // 2
console.log(counter1()); // 3

const counter2 = createCounter();
console.log(counter2()); // 1
console.log(counter2()); // 2 */

function createCounter() {
    let licznik = 0;

    return function() {
        licznik++;
        return licznik;
    }
}

const counter1 = createCounter();
console.log(counter1()); // 1
console.log(counter1()); // 2
console.log(counter1()); // 3

const counter2 = createCounter();
console.log(counter2()); // 1
console.log(counter2()); // 2