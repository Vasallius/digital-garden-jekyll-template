To first know this works, check [[🌱 Euclidean Algorithm Proof]].

```py
print('This program takes in two numbers and finds their LCM')
print('Please enter two integers.')
a, b = int(input()), int(input())


if a > b:
    x = a
    y = b
else:
    x = b
    y = a

r = x % y  # remainder


while r != 0:
    x = y
    y = r
    r = x % y

gcd = y  # Last non-zero remainder is the GCD
lcm = int((a*b)/gcd)  # gcd*lcm = a*b

print("GCD:", gcd, "LCM:", lcm)
```
