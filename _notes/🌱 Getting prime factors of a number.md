I first encountered the concept of getting prime factors of a number from [Project Euler]([https://projecteuler.net/problem=3).

My approach to this problem was adapted from [GeeksforGeeks](https://www.geeksforgeeks.org/print-all-prime-factors-of-a-given-number/)

```py
import math

n = 600851475143

prime_factors = []
if n % 2 == 0:
	prime_factors.append(2)
while n % 2 == 0: #While n is even, keep on dividing by 2
    n /= 2
	
#Now that n is odd, loop from 3 up to the square root of the number
for i in range(3, round(math.isqrt(n))): 
	#If n is divisible by that number, divide and append i to prime_factors
    while n % i == 0: 
        n /= i
        prime_factors.append(i)
    if n == 1:
        break
```

For a more efficient algorithm, research [[Sieve of Eratosthenes]]. 

---

- tags:
	- month: #August
