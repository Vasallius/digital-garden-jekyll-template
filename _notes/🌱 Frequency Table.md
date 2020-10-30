This code snippets stores the count of each letter in the `letter_counts` dictionary using the `.get()` method.

```py
>>> letter_counts = {}
>>> for letter in "Mississippi":
... letter_counts[letter] = letter_counts.get(letter, 0) + 1
...
>>> letter_counts
{'M': 1, 's': 4, 'p': 2, 'i': 4}
```

See more here: [[📋 How to Think Like a Computer Scientist]]