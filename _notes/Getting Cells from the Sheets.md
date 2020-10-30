1. Cells can be accessed like a dictionary, for example, `sheet['A1']`. 
	This returns a cell object.
	
---
	
2. Cell's value can be accessed using `cell.value`.

---

3. We can get the cell's row and column using `cell.row` or `cell.column`. We can even get both by using `cell.coordinate`. 

---

4. We can get the specific cell object by using `.cell()` method and passing the `row` and `column` arguments as integers.
	
	For example:
	
	`sheet.cell(row=1,column=1) #This returns A1 cell`

---

5. Additionally we can also know the max number of columns and row a sheet has by `sheet.max_row` and `sheet.max_column`. This attributes return values as integers. 

---

6. We can also convert column letters to numbers and vice versa, using  the [[openpyxl module]].
	
	We do this by:
	
	`openpyxl.utils.column_index_from_string()` 
	
	and
	
	 `openpyxl.utils.get_column_letter()`
	
	-