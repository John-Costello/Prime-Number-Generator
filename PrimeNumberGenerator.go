// Prime number generator using the Sieve of Eratosthenes algorithm.

package main

import "fmt"

func main() {
	const LIMIT = 1000000
	var numberMayBePrime [LIMIT]bool
	for n:=0; n<LIMIT; n++ {
		numberMayBePrime[n] = true
	}

	numberMayBePrime[0] = false
	numberMayBePrime[1] = false

	for n:=2; n<LIMIT; n++ {
		if numberMayBePrime[n] == true {
			fmt.Println(n)
			for m:=n*2; m<LIMIT; m+=n {
				numberMayBePrime[m] = false
			}
		}
	}
        fmt.Println("End of program!")
}
