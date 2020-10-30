1. We can create spreadsheets using `ezsheets.createSpreadsheet()`. Specify the spreadsheet name in the argument.

	``` python
	ss = ezsheets.createSpreadsheet('Test Spreadsheet')
	```

2. We can create new sheets inside the spreadsheet using `ezsheets.createSheet()`. We can specify the sheetname, and optionally it's index.

	``` python
	ezsheets.createSheet('Jed', 0)
	```
