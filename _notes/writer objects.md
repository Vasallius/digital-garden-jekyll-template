1. We write data to csv files first by opening the file in write mode.

	```py
	outputFile = open('output.csv', 'w', newline='')
	```
	
	**In windows, we must not forget to add the newline keyword argument and set it to `''`.**
2. We then create the writer object and pass that file as an argument.

	```py
	outputWriter = csv.writer(outputFile)
	```
	
3. We actually write data using the `.writerow()` function. This function takes in a list as an argument and returns the number of characters written (including newline characters).

	```py
	outputWriter.writerow(['spam', 'eggs', 'bacon', 'ham'])
	21
	```
	
---

### The delimiter and lineterminator Keyword Arguments

1. The delimiter is the character that appears between cells on a row. By default, the delimiter for a CSV file is a comma.

2. The line terminator is the character that comes at the end of a row. By default, the line terminator is a newline.

3. You can change the default delimiter and line terminator by passing them as keyword arguments to `csv.writer()`.

	```py
	csvFile = open('example.tsv', 'w', newline='')
	csvWriter = csv.writer(csvFile, delimiter='\t', lineterminator='\n\n')
	```
	We're using .tsv file extensions for tab separated values.
	
	