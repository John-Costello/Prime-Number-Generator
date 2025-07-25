// Prime number generator using the Sieve of Eratosthenes algorithm.

#include <stdio.h>
#include <stdbool.h>
#define LIMIT 1000000
bool numberMayBePrime[LIMIT];

void main()
{ 
    for(int n=0; n<LIMIT; n++) {
        numberMayBePrime[n] = true;
    }

    numberMayBePrime[0] = false;
    numberMayBePrime[1] = false;
    for(int n=2; n<LIMIT; n++) {
        if(numberMayBePrime[n] == true) {
            printf("%d\n", n);
            for(int m=n*2; m<LIMIT; m+=n) {
                numberMayBePrime[m] = false;
            }
        }
    }
    printf("End of program!");
}
