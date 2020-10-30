We can format strings using `.format()`. This takes in arguments that would replace placeholders such as `{0},{1},{2}`. Within that placeholder, you can also specify how it would appear such as it's alignment or the number of spaces it would take.

Code:

```py
label1 = "Happiness"
label2 = "Stress"
label3 = "Number of tasks"

print("||{0:^16}||{1:<19}||{2:>87}".format(label1,label2,label3))
```

Output:
```
||   Happiness    ||Stress             ||                                                                        Number of tasks
```

---

- tags
	- year: #year2020 
	- month: #October 
	- associations: 
		- [[📋 How to Think Like a Computer Scientist]]
	- resource-type: #notes 

 