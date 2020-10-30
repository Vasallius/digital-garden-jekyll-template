1. We can retrieve the values of whole columns and rows by:

	``` python
	sheet.getRow(1) #Gets first row of values
	sheet.getColumn(1) #Gets first column of values
	sheet.getColumn('A') #Gets first column of values
	```
	
---

2. We can update the values of whole columns and rows by:

	``` python
	sheet.updateRow(3, ['Pumpkin', '11.50', '20', '230'])
	sheet.updateColumn(1, ['Pumpkin', '11.50', '20', '230'])
	```

---

3. We can get all the rows and update all rows by:

	``` python
	sheet.getRows()
	sheet.updateRows(rows)
	```

---

4. You can read the number of rows and columns in a sheet with the rowCount and columnCount attributes. Then by setting these values, you can change the size of the sheet.

	``` python
		sheet.rowCount
		sheet.columnCount
		sheet.columnCount = 4
	```