- References:
	- links: [[💻 Programming]]
	- book: Automate the Boring Stuff with Python

---
## Google Sheets
Google Sheets, the free, web-based spreadsheet application available to anyone with a Google account or Gmail address, has become a useful, feature-rich competitor to Excel. Google Sheets has its own API, but this API can be confusing to learn and use. This chapter covers the [[EZSheets module|EZSheets third-party module]], documented at https://ezsheets.readthedocs.io/. While not as full featured as the official Google Sheets API, EZSheets makes common spreadsheet tasks easy to perform.

What to do | How to do it
-|-
Set up | [[Obtaining Credentials and Token Files]]
Change credentials|[[Revoking the Credentials File]]
Creating/loading spreadsheets|[[Creating, Uploading, and Listing Spreadsheets]]
Access various attributes|[[Spreadsheet Attributes]]
Download in different formats|[[Downloading Spreadsheets]]
Delete spreadsheet|[[Deleting Spreadsheets]]
Dealing with API limits|[[Working with Google Sheets Quotas]]
A Spreadsheet object will have one or more Sheet objects. The Sheet objects represent the rows and columns of data in each sheet. You can access these sheets using the square brackets operator and an integer index. The Spreadsheet object’s sheets attribute holds a tuple of Sheet objects in the order in which they appear in the spreadsheet.
What to do | How to do it
-|-
Read and input data|[[Reading and Writing Data]]
Getting row and column numbers|[[Column and Row Addressing]]
Updating multiple rows and columns|[[Reading and Writing Entire Columns and Rows]]
Create spreadsheets|[[Creating and Deleting Sheets]]
Copy sheets | [[Copying Sheets]]

Summary:

Google Sheets is a popular online spreadsheet application that runs in your browser. Using the EZSheets third-party module, you can download, create, read, and modify spreadsheets. EZSheets represents spreadsheets as Spreadsheet objects, each of which contains an ordered list of Sheet objects. Each sheet has columns and rows of data that you can read and update in several ways.

While Google Sheets makes sharing data and cooperative editing easy, its main disadvantage is speed: you must update spreadsheets with web requests, which can take a few seconds to execute. But for most purposes, this speed restriction won’t affect Python scripts using EZSheets. Google Sheets also limits how often you can make changes.

For complete documentation of EZSheet’s features, visit https://ezsheets.readthedocs.io/.

- Related:
	-[[🌳 Working with Excel Spreadsheets in Python]]