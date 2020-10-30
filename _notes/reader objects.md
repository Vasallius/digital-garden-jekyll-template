1. csv module is built in, so we can just easily import it.

	```py
	import csv
	```
	
2. To read csv files, we must first open it,

	```py
	example_file = open('example.csv')
	```
	
3. To actually read the content of the csv file, we pass in that file to the `csv.reader()` function. This returns a reader object. Note that we do not pass in the file as a string, but rather as an object.

	```py
	exampleReader = csv.reader(example_file)
	```
	
4. The most direct way to access the values in the reader object is to convert it to a plain Python list by passing it to `list()`. This returns a list of lists.

	```py
	exampleData = list(exampleReader)
	```
	Example data now reads:
	![[Pasted image 48.png]]
	
5. Given this data structure we can access data in the form of exampledata[row][column]