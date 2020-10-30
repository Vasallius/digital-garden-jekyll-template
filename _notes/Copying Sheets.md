1. We can copy a sheet to another spreadsheet using `copyTo()` method. 

	``` python
	spreadsheet1['Sheet1'].copyTo(spreadsheet2)
	```
	
2. Copied sheets appear at the end of the list of sheets. You can reorder them by changing their index attributes
	
	``` python
	ss['Sheet1'].index = 0
	```
	This places the sheet at the first index of the list.
	