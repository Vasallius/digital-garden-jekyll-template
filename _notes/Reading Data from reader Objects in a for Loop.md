1. We can loop over the rows of the [[reader objects]], by

	```py
	for row in exampleReader:
	print('Row #' + str(exampleReader.line_num) + ' ' + str(row))
	```
	
2. `.line_num` is the property of the reader that contains the row number.


3. We can now print the row's value by typecasting it into a string, `str(row)`.

4. We can only loop over a csv file once. To loop again, we must call the `csv.reader()` function to create another reader object.