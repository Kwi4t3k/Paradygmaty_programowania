class Product {
    constructor(name, cost) {
        this.name = name;
        this.cost = cost;
    }
}

class ProductInCart {
    constructor(product, quantity) {
        this.product = product;
        this.quantity = quantity;
    }
}

function calculateTotal(cart) {
    let total = 0;
    
    for (let i = 0; i < cart.length; i++) {
        total += cart[i].product.cost * cart[i].quantity;
    }

    return total;
}

const milk = new Product("Milk", 3.5);
const bread = new Product("Bread", 4);
const eggs = new Product("Eggs", 2);

const cart = [
    new ProductInCart(milk, 2),
    new ProductInCart(bread, 1),
    new ProductInCart(eggs, 10),
];

console.log("Do zapłaty: ", calculateTotal(cart));