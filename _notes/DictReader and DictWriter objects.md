Compared to [[reader objects]] and [[writer objects]], which write to CSV file rows by using lists, DictReader and DictWriter CSV objects perform the same functions but use dictionaries instead, and they use the first row of the CSV file as the keys of these dictionaries.

1. Create a DictReader object by `exampleDictReader = csv.DictReader(exampleFile)`

2.  Row here becomes a dictionary with keys as its headers. The code above outputs this:

```py
for row in exampleDictReader:
print(row['Timestamp'], row['Fruit'], row['Quantity'])
```

Output:
```
4/5/2015 13:34 Apples 73
4/5/2015 3:41 Cherries 85
4/6/2015 12:46 Pears 14
4/8/2015 8:59 Oranges 52
4/10/2015 2:07 Apples 152
4/10/2015 18:10 Bananas 23
4/10/2015 2:40 Strawberries 98
```
 
3. However, there may be times that the csv file may not contain headers. To handle this, we can make up made-up headers and pass that list as an additional parameters to the `csv.DictReader()` function.

See below:
```py
exampleDictReader = csv.DictReader(exampleFile, ['time', 'name',
'amount'])
```

We can now call on time, name, amount as dictionary keys containing their respective values.

4. DictWriter objects are used to write data into csv files using dictionaries.

	```py
	outputDictWriter = csv.DictWriter(outputFile, ['Name', 'Pet', 'Phone'])
	```
5. We write the header row by calling `.writeheader()` on the DictWriter object.

	```py
	outputDictWriter.writeheader()
	```
	If you do not want your csv files to contain a header, skip calling the `.writeheader()` method.
	
6. Similar to writer objects, we write data using the `.writerow()` function. However, instead of taking in a list, this takes in a dictionary, with keys being the header names.

	```py
	outputDictWriter.writerow({'Name': 'Bob', 'Phone': '555-9999'})
	```
The output of this function is the number of characters written.
Missing keys will be empty in the csv file.
