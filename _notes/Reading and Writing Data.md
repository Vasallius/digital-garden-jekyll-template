Just as in Excel, Google Sheets worksheets have columns and rows of cells containing data. You can use the square brackets operator to read and write data from and to these cells.

1. Access a sheet's cell by enclosing it in square brackets.

	`sheet['A1']'
	
---

2. You can equate a cell's value by simply assigning to the cell object.

	`sheet['A1'] = 'Jed'`
	
---

3. You can also get the cell by specifying it's row and column in square brackets.

	``` python
	sheet[2,1] # This equates to cell B1 
	```
	
	Note: column first, then row. Row and column numbers start at 1, not 0.