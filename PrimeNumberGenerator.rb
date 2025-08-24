# Prime number generator using the Sieve of Eratosthenes algorithm.

LIMIT=1000000
numberMayBePrime=[]
for n in 0..LIMIT do
   numberMayBePrime[n]=true
end

numberMayBePrime[0]=false
numberMayBePrime[1]=false

for n in 0..LIMIT do
    if numberMayBePrime[n]==true
        puts(n)
        for m in ((n*2)..LIMIT).step(n) do
            numberMayBePrime[m]=false
        end
    end
end
puts("End of program!")          
