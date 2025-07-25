-- Prime number generator using the Sieve of Eratosthenes algorithm.

LIMIT=1000000
numberMayBePrime={}
for n = 0, LIMIT do
    numberMayBePrime[n]=true
end

numberMayBePrime[0]=false
numberMayBePrime[1]=false

for n = 0, LIMIT do
    if numberMayBePrime[n]==true then
        print(n)
        for m =n*2, LIMIT, n do
            numberMayBePrime[m]=false
        end
    end
end
print("End of program!")
