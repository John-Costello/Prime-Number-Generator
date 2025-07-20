// Prime number generator using the Sieve of Eratosthenes algorithm.

fn main(){
   const LIMIT: usize = 1000000;
   let mut number_may_be_prime:[bool;LIMIT]=[true;LIMIT];
   number_may_be_prime[0]=false;
   number_may_be_prime[1]=false;
   for n in 2..LIMIT
   {
      if number_may_be_prime[n]==true
      {
         println!("{n}");
         for m in (n*2..LIMIT).step_by(n)
         {
            number_may_be_prime[m]=false;
         }
      }
   }
   println!("End of program!");
}
