1. We open Excel documents by using functions from the `openpyxl` module.


2. Here we open an Excel file named `example.xlsx` and assign it to the variable wb.

	``` py
	wb = openpyxl.load_workbook('example.xlsx')
	```

This function returns a `Workbook` object. File needs to be in the same directory.

We can get current directory using `os.cwd()` and change directory using `os.chdir()`






