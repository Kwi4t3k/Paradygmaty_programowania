// Zadanie 8

// Napisz funkcję znajdującą najdłuższy wspólny ciąg prefiksów w tablicy ciągów. Jeśli nie ma wspólnego prefiksu, zwróć pusty ciąg.



// Przykład 1:

// Input: strs = ["flower","flow","flight"]
// Output: "fl"
// Przykład 2:

// Input: strs = ["dog","racecar","car"]
// Output: ""
// Założenia:

// 1 <= strs.length <= 200
// 0 <= strs[i].length <= 200
// strs[i] składa się tylko z małych angielskich liter.

function najdluzszy_wspolny_ciag(strs) {
    let size = strs.length;

    /* if size is 0, return empty string */
    if (size == 0)
        return "";

    if (size == 1)
        return strs[0];

    /* sort the array of strings */
    strs.sort();

    /* find the minimum length from first and last string */
    let end = Math.min(strs[0].length, strs[size - 1].length);

    /* find the common prefix between the first and
        last string */
    let i = 0;
    while (i < end && strs[0][i] == strs[size - 1][i])
        i++;

    let pre = strs[0].substring(0, i);
    return pre;
}

let strs = ["flower","flow","flight"];
console.log(najdluzszy_wspolny_ciag(strs));

let strs1 = ["dog","racecar","car"];
console.log(najdluzszy_wspolny_ciag(strs1));