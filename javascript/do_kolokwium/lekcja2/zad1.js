// Stwórz obiekt currentUser. Obiekt niech ma właściwości: name, surname, email, www, userType, isActive oraz metodę show(), która wypisze wszystkie te właściwości w konsoli. Dodatkowo stwórz metodę setActive(active), która przestawi właściwość isActive na przekazaną wartość, która może być true/false.

const currentUser = {
    name: "Jan",
    surname: "Kowalski",
    email: "jankowalski@mail.com",
    www: "jankowalski.pl",
    userType: "Admin",
    isActive: true,

    show: function() {
        console.log(this.name + ", " + this.surname + ", " + this.email + ", " + this.www + ", " + this.userType + ", " + this.isActive);
    },

    setActive: function(isactive) {
        this.isActive = isactive;
    },
}

currentUser.show();

currentUser.setActive(false);
currentUser.show();

currentUser.setActive(true);
currentUser.show();
