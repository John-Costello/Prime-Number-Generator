-- Prime number generator using the Sieve of Eratosthenes algorithm.

LIMIT=1000000
numberMayBePrime={}
for n = 0, LIMIT do
   numberMayBePrime[n]=1
end

numberMayBePrime[0]=0
numberMayBePrime[1]=0

for n = 0, LIMIT do
    if numberMayBePrime[n]==1 then
        print(n)
        for m = n*2, LIMIT, n do
            numberMayBePrime[m]=0
        end
    end
end
print("End of program!")
