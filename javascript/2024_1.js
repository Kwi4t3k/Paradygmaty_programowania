class AgeCategorizator {
    constructor(wieki = []) {
        this.wieki = wieki;
    }

    analyse() {
        let children = 0;
        let teens = 0;
        let adults = 0;
        let seniors = 0;

        for (let i = 0; i < this.wieki.length; i++) {
            if (this.wieki[i] >= 0 && this.wieki[i] <= 12) {
                children++;
            } else if (this.wieki[i] >= 13 && this.wieki[i] <= 19) {
                teens++;
            } else if (this.wieki[i] >= 20 && this.wieki[i] <= 64) {
                adults++;
            } else if (this.wieki[i] >= 65) {
                seniors++;
            }
        }

        return {
            children,
            teens,
            adults,
            seniors
        };
    }
}

const grupa = new AgeCategorizator([3, 10, 15, 25, 80, 67, 19, 12]);
console.log(grupa.analyse());
// { children: 3, teens: 2, adults: 1, seniors: 2 }
