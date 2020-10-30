- References:
	- links: [[💻 Programming]]
	- book: Automate the Boring Stuff with Python

---

## CSV

CSV stands for “**comma-separated values**,” and CSV files are simplified spreadsheets stored as plaintext files. Python’s [[csv module]] makes it easy to parse CSV files.

JSON is a format that stores information as JavaScript source code in plaintext files. (JSON is short for JavaScript Object Notation.) 

Each line in a CSV file represents a row in the spreadsheet, and commas separate the cells in the row. They look like this:

![[Pasted image 47.png]]

CSV files are simple, lacking many of the features of an Excel spreadsheet. For example, CSV files:

- Don’t have types for their values—everything is a string
- Don’t have settings for font size or color
- Don’t have multiple worksheets
- Can’t specify cell widths and heights
- Can’t have merged cells
- Can’t have images or charts embedded in them

####  Why we shouldn't use split to read CSV files
We may be tempted to read csv files as a string and separate their values using `.split()` but we must also consider that they have their own escape characters to include commas, therefore it's wiser to just use the `csv` module.


To read data from a CSV file with the csv module, we need to create [[reader objects]]. To read large amounts of data, we would want to [[Reading Data from reader Objects in a for Loop | read data from reader objects in a for loop]].

To write data into csv files, we must create [[writer objects]].

For CSV files that contain header rows, it’s often more convenient to work with the [[DictReader and DictWriter objects]], rather than the reader and writer objects.

Miniproject: [[Removing the Header from CSV Files]]


