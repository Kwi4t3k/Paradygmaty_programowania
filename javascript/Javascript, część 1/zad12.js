function na_ile_sposobow_na_szczyt(n) {
    // f(n) = f(n-1) + f(n-2)
    
    if (n === 0) {
        return 0;
    } else if (n === 1) {
        return 1;
    } else if (n === 2) {
        return 2;
    } else {
        return na_ile_sposobow_na_szczyt(n - 1) + na_ile_sposobow_na_szczyt(n - 2);
    }
}

console.log(na_ile_sposobow_na_szczyt(0)); // 0
console.log(na_ile_sposobow_na_szczyt(1)); // 1 | 1s
console.log(na_ile_sposobow_na_szczyt(2)); // 2 | 1s+1s , 2s
console.log(na_ile_sposobow_na_szczyt(3)); // 3 | 1s+1s+1s , 1s+2s, 2s+1s
console.log(na_ile_sposobow_na_szczyt(4)); // 5 | 1s+1s+1s+1s , 1s+1s+2s , 1s+2s+1s , 2s+1s+1s , 2s+2s
console.log(na_ile_sposobow_na_szczyt(5)); // 8
console.log(na_ile_sposobow_na_szczyt(6)); // 13