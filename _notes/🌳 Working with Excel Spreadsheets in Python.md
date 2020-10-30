- References:
	- links: [[💻 Programming]]
	- book: Automate the Boring Stuff with Python

---
## Excel Documents

An excel spreadsheet document is called a `workbook`. Excel files are saved with the `.xlsx` extension. The sheet the user is currently viewing is called the `active sheet`. Each sheet contains `columns` starting with A and `rows` starting with 1. Boxes in excel files are called cells. They contain any number of text value. Multiple cells make up a sheet. We interact with Excel Documents using the [[openpyxl module]]. 

What to do | How to do it
--|--
Open Excel Documents|[[How to open Excel Documents]]
Access Data in Excel Document| [[Accesing Data in the Workbook]]
Inputting Data | [[Writing Excel Documents]]
Styling | [[Styling Excel Sheet]]
Create Charts | [[Creating Charts]]

As a quick review, here’s a rundown of all the functions, methods, and data types involved in reading a cell out of a spreadsheet file:

1. Import the openpyxl module.
2. Call the openpyxl.load_workbook() function.
3. Get a Workbook object.
4. Use the active or sheetnames attributes.
5. Get a Worksheet object.
6. Use indexing or the cell() sheet method with row and column keyword arguments.
7. Get a Cell object.
8. Read the Cell object’s value attribute.


- Related:
	- [[🌳 Working with Google Sheets in Python]]