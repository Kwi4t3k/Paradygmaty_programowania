// Stwórz klasę book, który będzie miała:

// Właściwości:
// users która będzie tablicą użytkowników (na początku pusta)

// Metody:

// addUser(name, age, phone)
// która doda to tablicy users nowy obiekt, który będzie miał klucze: name, age, phone z przekazanymi do tej funkcji danymi

// showUsers()
// która po odpaleniu wypisze w konsoli tekst: Wszyscy użytkownicy w książce a następnie w pętli wypisze wszystkich użytkowników

// findByName(name)
// która wypisze w konsoli pierwszego użytkownika, który ma szukane imię lub false jeżeli nie znajdzie.

// findByPhone(phone)
// która wypisze w konsoli pierwszego użytkownika, który ma szukany telefon lub false jeżeli nie znajdzie

// getCount()
// która wypisze ile jest użytkowników w tabeli

class Book {
    constructor(users) {
        this.users = [];
    } 

    addUser(name, age, phone) {
        const user = {
            name: name,
            age: age,
            phone: phone,
        }

        this.users.push(user);
    }

    showUsers() {
        console.log("Wszyscy użytkownicy w książce");

        this.users.forEach((user, index) => {
            console.log(`${index + 1}. ${user.name}, ${user.age} lat, tel: ${user.phone}`);
        });
    }

    findByName(name) {
        const found = this.users.find(user => user.name === name);
        return found || false;
    }

    findByPhone(phone) {
        const found = this.users.find(user => user.phone === phone);
        return found || false;
    }

    getCount() {
        return this.users.length;
    }
}

const myBook = new Book();

myBook.addUser("Jan", 30, "123-456-789");
myBook.addUser("Anna", 25, "987-654-321");
myBook.addUser("Jan", 40, "111-222-333");

myBook.showUsers(); // wypisze wszystkich

console.log(myBook.findByName("Jan"));  // znajdzie pierwszego Jana
console.log(myBook.findByPhone("987-654-321")); // znajdzie Annę
console.log("Liczba użytkowników:", myBook.getCount()); // 3