function guessNumber(guesses) {
    let randomLiczba = Math.floor(Math.random() * (100 - 1) + 1); // Math.random() * (max - min) + min
    console.log(randomLiczba);
    let attempts = 0;

    for(let i = 0; i < guesses.length; i++) {
        attempts++;

        if (guesses[i] === randomLiczba) {
            return {
                isCorrect: true,
                attempts: attempts,
            };
        }
    }

    return {
        isCorrect: false,
        attempts: attempts,
    };
}

let guesses = [9,2,65,5,86];
console.log(guessNumber(guesses));