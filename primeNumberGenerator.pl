#!/usr/bin/perl

# Prime number generator using the Sieve of Eratosthenes algorithm.

use warnings;
use strict;

my $LIMIT=1000000;
my @numberMayBePrime;
for(my $n=0; $n<$LIMIT; $n++)
{
   $numberMayBePrime[$n]=1;
}
$numberMayBePrime[0]=0;
$numberMayBePrime[1]=0;
for(my $n=0;$n<$LIMIT;$n++)
{
   if($numberMayBePrime[$n]==1)
   {
      print("$n \n");
      for(my $m=($n*2);$m<$LIMIT;$m+=$n)
      {
         $numberMayBePrime[$m]=0;
      }
   }
}
print("End of program!\n");
