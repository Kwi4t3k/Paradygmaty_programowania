function findPairsWithSum(numbers, targetSum) {
    let res = [];

    for (let i = 0; i < numbers.length; i++) {
        for (let j = i + 1; j < numbers.length; j++) {
            if (numbers[i] + numbers[j] === targetSum) {
                res.push([numbers[i], numbers[j]]);
            }
        }
    }

    return res;
}

// Przykład działania:
let arr = [1, 5, 7, -1, 5];
let target = 6;
let wynik = findPairsWithSum(arr, target);
console.log(wynik);  // [[1, 5], [7, -1], [1, 5]]
