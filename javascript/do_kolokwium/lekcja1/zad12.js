// Zadanie 12

// Wspinasz się po schodach. Dotarcie na szczyt zajmuje n kroków. Za każdym razem można pokonać 1 lub 2 stopnie. Na ile różnych sposobów można wspiąć się na szczyt?

// Przykład 1:

// Input: n = 2
// Output: 2
// Wyjaśnienie:

// 1 stopień + 1 stopień
// 2 stopnie
// Przykład 2:



// Input: n = 3
// Output: 3
// Wyjaśnienie:

// 1 stopień + 1 stopień + 1 stopień
// 1 stopień + 2 stopnie
// 2 stopnie + 1 stopień
// Założenia:

// 1 <= n <= 45

function countWaysToReachNthStair(n) {
  if (n === 1) { return 1; }
  if (n === 2) { return 2; }
  
  return countWaysToReachNthStair(n-1) + countWaysToReachNthStair(n-2)
}

console.log(countWaysToReachNthStair(3));