links: [[🌳 Working with Excel Spreadsheets in Python]]

---

In this project, you’ll write a program to update cells in a spreadsheet of produce sales. Your program will look through the spreadsheet, find specific kinds of produce, and update their prices.

## Step 1: Set Up a Data Structure with the Update Information

![[Pasted image 9.png]]

Create a dictionary containing the values of the items.

## Step 2: Check All Rows and Update Incorrect Prices

![[Pasted image 10.png]]
1. Loop through the sheet skipping first row since first row contains titles of the table


2. Assign the cell value to variable `produceName`


3. Check if produce name is in `PRICE_UPDATES` dictionary. If it is update the cell to the value in the `PRICE_UPDATE` dictionary

4. Save a copy of the workbook, not overwriting the existing workbook.