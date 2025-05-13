// Biorąc pod uwagę tablicę liczb całkowitych nums posortowaną w porządku niemalejącym, usuń duplikaty w miejscu, tak aby każdy unikalny element pojawił się tylko raz. Względna kolejność elementów powinna pozostać taka sama. Następnie zwróć liczbę unikalnych elementów w nums.

// Rozważmy, że liczba unikalnych elementów numswynosi k, aby uzyskać akceptację, należy wykonać następujące czynności:

// Zmienić tablicę numsw taki sposób, aby pierwsze k elementów nums zawierało unikalne elementy w kolejności, w jakiej były one początkowo obecne w nums. Pozostałe elementy nums nie mają znaczenia, podobnie jak rozmiar nums.
// Zwraca k.
// Przykład:

// Input: nums = [1,1,2]
// Output: 2, nums = [1,2,_]
// Wyjaśnienie: Twoja funkcja powinna zwrócić k = 2, przy czym pierwsze dwa elementy nums to odpowiednio 1 i 2. Nie ma znaczenia, co pozostawisz poza zwróconym k (dlatego są to podkreślenia).

function uniqueElements(nums) {
    // let uniqueNums = nums.filter((item, index) => nums.indexOf(item) === index);
    // return uniqueNums.length + ", " + uniqueNums;

    let k = 0;

    for(let i = 0; i < nums.length; i++) {
        if (nums[i] !== nums[i-1]) {
            nums[k] = nums[i];
            k++;
        }
    }

    return k + ", " + nums.slice(0, k);
}

let nums = [1,1,2];

console.log(uniqueElements(nums));