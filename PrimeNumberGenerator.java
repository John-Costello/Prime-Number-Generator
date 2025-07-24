// Prime number generator using the Sieve of Eratosthenes algorithm.

public class PrimeNumberGenerator
{
    final static int LIMIT=1000000;
    static boolean[] numberMayBePrime = new boolean[LIMIT];
    static{
        for(int n=0; n<LIMIT; n++) {
            numberMayBePrime[n] = true;
        }
    }
    
    public static void main(String[] args)
    {
        numberMayBePrime[0] = false;
        numberMayBePrime[1] = false;
        for(int n=2; n<LIMIT; n++) {
            if(numberMayBePrime[n] == true) {
                System.out.println(n);
                for(int m=n*2; m<LIMIT; m+=n) {
                    numberMayBePrime[m] = false;
                }
            }
        }
        System.out.println("End of program!");
    }
}
