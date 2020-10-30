1. We can specify a rectangular area in the sheet by enclosing the cellnames in brackets.

	For example: `sheet['A1':'C3']`
	
---

2. We can now loop through this area by:

	```
	for rowOfCellObjects in sheet['A1':'C3']:
		for cellObj in rowOfCellObjects:
	```

---

3. To access the values of cells in a particular row or column, you can also use a Worksheet object’s rows and columns attribute. These attributes must be converted to lists with the list() function before you can use the square brackets and an index with them.

	 ![[Pasted image 1.png]]