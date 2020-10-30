- reference
	- https://www.youtube.com/watch?v=H_2_nqKAZ5w

---

![[Attachments/Pasted image 20201012150936.png]]

We are finding for the GCD(a,b) where GCD is the greatest common divisor of the two numbers.

We know that the GCD of a number and 0 is the number itself. 
Hence GCD(a,0) = a and GCD(b,0) = b

Recall that a = bq+r

Let x be a common divisor of a and b.

We know that x|a and x|b. 

This means that we can express the following as, a=xk and b=xl.

a-b = xk-xl
a-b = k-l(x)

k-l is another integer.

We can infer that x|(a-b) since (k-l) is a multiple of x. We can extend this further to x|(a-bq) since bq is a multiple of b and x|b. From here we notice that (a-bq) = r, giving us x|r where r is the remainder.

**Here we have proven that any common divisor of a and b must also be a divisor of r.
**
Let y be a common divisor of b and r.

We know that y|b and y|r.

This means that we can express the following as, b = yt and r = yu.

b+r = yt+yu
b+r = y(t+u)

t+u is another integer.

We can infer that y|b+r since (t+u) is a multiple of y. We can extend this further to y|bq+r since bq is a multiple of b. From here, we notice that bq+r = a

**Here we have proven that any common divisor of b and r must also be a divisor of a.**

The GCD is equal to where x is a common divisor to a and b iff x is a common divisor of  b and r.

Hence, GCD(a,b) = GCD(b,r)

That is, GCD(a,b) = $r_i$, where $r_i$ is the last non-zero remainder.

Now to implement this algorithm see: [[🌱 Finding the GCD and LCD using Euclidean Algorithm]]