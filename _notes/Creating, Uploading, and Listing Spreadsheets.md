
You can make a new Spreadsheet object from an existing spreadsheet, a blank spreadsheet, or an uploaded spreadsheet.

1. To make a Spreadsheet object from an existing Google Sheets spreadsheet, you’ll need the spreadsheet’s ID string.

	The unique ID for a Google Sheets spreadsheet can be found in the URL, after the spreadsheets/d/ part and before the /edit part.
	
	Ex: https://docs.google.com/spreadsheets/d/==1kTDxKcXYz0fjbglM22gqvEMRjP4eoDOy_352NaVQYDU==/edit#gid=0

---

2. Pass this id as a string to the `ezsheets.Spreadsheet()` function to obtain a *Spreadsheet* object. **OR** Pass in the spreadsheet's full url.

	![[Pasted image 30.png]]
	
---
	
3. We can upload an existing Excel, OpenOffice, CSV, or TSV spreadsheet to Google Sheets by using `ezsheets.upload()`

	![[Pasted image 31.png]]
	
---
	
4. We can list the Google spreadsheets we have  in our google account by calling the `listSpreadsheets()` function.

	![[Pasted image 32.png]]

	---