Book: [[📋 Data Structures and Algorithms in Python]]

### Chapter 1: Python Primer
You can add `-i` flag when running python scripts to enter interactive mode. For example, `python -i test.py`. 
	
You can extend a command to another line using `\`. 
	
Python is `dynamically typed`, you don't have to declare the data type of variable upon creation.

The process of creating a new instance of a class is known as `instantiation`. 

Methods that only return information are called `accesors`, while those that change the state of an object are called `mutators or update methods`. 

Numbers evaluate to `False` if zero, and `True` if nonzero. Sequences and container types like lists and strings evaluate to `False` when empty and `True` when nonempty. 

List, tuples, and strings are `sequence` types. Order is very important. 

One element tuples must end in a comma, `(17, )`.

A `set` is like a set in mathematics, that contain no duplicates and have no inherent order. Only `immutable` data types can be added to a `set`. A `frozenset` is basically an `immutable` set. Sets use the `{ }` delimiter. To create an empty `set`, we use `set()` instead of empty braces as that creates an empty dictionary.

Sequences evaluate operators based on `lexicographic order`, they check for differences element per element until a difference is found. 

Some operators of sets and dictionaries
![[Pasted image 230.png]]

Python supports `chain assigment` you can assign stuff to multiple things, `x = y = z = 0`. It also supports chaining of comparison operators such as inequalities.

`Polymorphic` functions can be called by more than one possible calling.

![[Pasted image 231.png]]
![[Pasted image 232.png]]

Some file methods that may be handy.
![[Pasted image 233.png]]

Some errors that we may encounter.
![[Pasted image 234.png]]

We can also raise the error and error message ourseves using
`raise ErrorType('error message')`. 

You can have two `except` blocks in one `try` block.

`Finally` clause is used at the end of a try block to make it execute whether or not an exception is raised.

I don't really understand what `yield` really does, but it returns a generator object. It's main usecase is so that we don't have to commit everything to memory and make use of `lazy evaluation`. Yield can also contain an infinite number of values since it returns values whenever call.

List comprehension produces a list based from processing another list.
It's syntax looks like this:
```py
[expression for iterator in iterable if condition]
```

other comprehensions
![[Pasted image 235.png]]

Python makes use of `automatic packing`. And treats a set of integers as a `tuple` and when we use `return (x,y)`, it returns a tuple.

Python can also unpack using multiple variable assignment, `a,b,c,d = range(7,11)`

You can swap variable values using
`a,b = b,a`

Some common modules
![[Pasted image 236.png]]