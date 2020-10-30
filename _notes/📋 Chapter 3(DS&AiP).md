### Table of Contents
- 3.1 Experimental Studies
	- 3.1.1 Moving Beyond Experimental Analysis
- 3.2 The Seven Functions Used in This Book
	- 3.2.1 Comparing Growth Rates
- 3.3 Asymptotic Analysis
	- 3.3.1 The “Big-Oh” Notation
	- 3.3.2 Comparative Analysis
	- 3.3.3 Examples of AlgorithmAnalysis
- 3.4 Simple Justification Techniques
	- 3.4.1 By Example
	- 3.4.2 The “Contra” Attack
	- 3.4.3 Induction and Loop Invariants

---

# Chapter 3: Algorithm Analysis
- **data structure** - systematic way of organizing data
- **algorithm** - step-by-step procedure for performing task in a finite amount of time
	- consider space usage and time
	- running time is a measure of "goodness"
		- affected by different factors
		- hardware environment
			- processor
			- clock rate
			- memory disk
		- software environment
			- OS
			- programming language
	- running time is a function of the input size

## Experimental Studies
- we can use the `time` module to measure time
	```py
	from time import time
	start_time = time()
	# run algo
	end_time = time()
	elapsed = end_time - start_time
	```
	- mostly depends on the CPU since many processes share the CPU
	- we can also use the `clock` function
	- we can also use an advanced module named `timeit` for automation
	- sample hypothetical data
	![[Pasted image 262.png]] 
-  **Challenges of Experimental Analysis**
	- difficult to compare since hardware and software environments must be identical
	- test inputs are limited and some test inputs not tested may be important
	- algorithim must be fully implemented
		- serious drawback
		- foolish to waste time when an approach can be revised using a higher-level analysis
	### Moving Beyond Experimental Analysis
	- Goals
	- Develop an approach to analyze efficiency of algorithms that
		- allow us to evaluate relative efficiency regardless of environment
		- study a high-level description without complete implementation
		- take into account all possible inputs
- **Counting Primitive Operations**
	- in order to analyze without full implementation, we define a set of primitive operations such as
	![[Pasted image 263.png]]
	- Instead of trying to determine the specific execution time of each primitive operation, we will simply count how many primitive operations are executed, and use this number `t` as a measure of the running time of the algorithm.
- **Measuring Operations as a Function of Input Size**
	- function `f(n)` number of operations performed given `n` input size
 - **Focusing on the Worst-Case Input**
	 - An algorithm may run faster on some inputs than it does on others of the same size.
	 - we can take the average of all possible inputs of the same size
	 - also known as *average-case* analysis
	  ![[Pasted image 264.png]]
	  - in this book we would be using the *worst case* always
		  - since average case analysis involves sophisitcated probability theory
		  - easier
		  - Making the standard of success for an algorithm to perform well in the worst case necessarily requires that it will do well on every input.
	- 