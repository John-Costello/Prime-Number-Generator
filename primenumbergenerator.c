// Prime number generator using the Sieve of Eratosthenes algorithm.

#include <stdio.h>
#define LIMIT 1000000
int numberMayBePrime[LIMIT];

void main()
{ 
    for(int n=0; n<LIMIT; n++) {
        numberMayBePrime[n] = 1;
    }

    numberMayBePrime[0] = 0;
    numberMayBePrime[1] = 0;
    for(int n=2; n<LIMIT; n++) {
        if(numberMayBePrime[n] == 1) {
            printf("%d\n", n);
            for(int m=n*2; m<LIMIT; m+=n) {
                numberMayBePrime[m] = 0;
            }
        }
    }
    printf("End of program!");
}
