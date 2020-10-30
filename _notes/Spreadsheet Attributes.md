1. We can access the spreadsheet's title by `ss.title`.

	![[Pasted image 33.png]]

---

2. We can access the spreadsheet's ID by `ss.spreadsheetId`.

	![[Pasted image 34.png]]
	
---

3. We can access the spreadsheet's url by `ss.url`.

	![[Pasted image 35.png]]

---

4. We can access the spreadsheet's sheetTitles by `ss.sheetTitles`.


	![[Pasted image 36.png]]
	
--- 

5. We can access the spreadsheet's sheet objects by `ss.sheets`.

	![[Pasted image 37.png]]
	
---

6. We can also access the sheet by index.

	![[Pasted image 38.png]]
	
---
	
7. Similar to Excel, we can access the sheet by calling it's like like a dictionary method.

	![[Pasted image 39.png]]
	
---
	
8. We can delete sheets by using `del` followed by the *sheet* object.

	![[Pasted image 40.png]]
	
---

9. We can update the Spreadsheet object to match the online data by

	`ss.refresh()`
	