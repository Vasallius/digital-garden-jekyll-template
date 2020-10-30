Cell addressing works in Google Sheets just like in Excel. The only difference is that, unlike Python’s 0-based list indexes, ==**Google Sheets have 1-based columns and rows**==: the first column or row is at index 1, not 0.

1. You can convert the 'A2' string-style address to the (column, row) tuple-style address (and vice versa) with `convertAddress()`

	``` python
	ezsheets.convertAddress('A2') #outputs to (1,2)
	ezsheets.convertAddress(1, 2) #outputs to A2
	```

---

2. The getColumnLetterOf() and getColumnNumberOf() functions will also convert a column address between letters and numbers.

	``` python
	ezsheets.getColumnLetterOf(2) #outputs B
	ezsheets.getColumnNumberOf('B') #outputs to 2
	```

---

The 'A2' string-style addresses are convenient if you’re typing addresses into your source code. But the (column, row) tuple-style addresses are convenient if you’re looping over a range of addresses and need a numeric form for the column. The convertAddress(), getColumnLetterOf(), and getColumnNumberOf() functions are helpful when you need to convert between the two formats.
