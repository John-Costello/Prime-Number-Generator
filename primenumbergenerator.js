// Prime number generator using the Sieve of Eratosthenes algorithm.

let LIMIT=1000000;
let numberMayBePrime = [];
for(var n=0; n<LIMIT; n++) {
    numberMayBePrime[n] = true;
}

numberMayBePrime[0] = false;
numberMayBePrime[1] = false;
for(let n=2; n<LIMIT; n++) {
    if(numberMayBePrime[n]==true) {
        console.log(n);
        for(let m=n*2; m<LIMIT; m+=n) {
            numberMayBePrime[m] = false;
        }
    }
}
console.log("End of program!");
