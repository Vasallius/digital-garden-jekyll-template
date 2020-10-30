This is netwon's method of approximating square roots. We improve our approximation iteratively.

```py
print('This program approximates the square root of an integer.')
print("Enter an integer.")
num = int(input())
approx = num/2

precision = 0.00001

while True:
    better_aprox = (approx + num/approx)/2
    if abs(approx-better_aprox) < precision:
        print(better_aprox)
        break
    approx = better_aprox
```

More of this at: [[📋 How to Think Like a Computer Scientist]]