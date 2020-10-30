
1. Before you can use EZSheets, you need to enable the Google Sheets and Google Drive APIs for your Google account. Visit the following web pages and click the Enable API buttons at the top of each:

	- https://console.developers.google.com/apis/library/sheets.googleapis.com/
	- https://console.developers.google.com/apis/library/drive.googleapis.com/

2. You’ll also need to obtain three files, which you should save in the same folder as your .py Python script that uses EZSheets:
	
	- A credentials file named `credentials-sheets.json`
 	- A token for Google Sheets named 
		`token-sheets.pickle`
 	- A token for Google Drive named `token-drive.pickle`

3. The credentials file will generate the token files. The easiest way to obtain a credentials file is to go to the Google Sheets Python Quickstart page at https://developers.google.com/sheets/api/quickstart/python/ and click the blue Enable the Google Sheets API button.

4. Click the blue **Download Client Configuration** button. 

	This allows you to download a file called ***`credentials.json`***
	
5. Rename this file to ***`credentials-sheets.json.`***

6. Once you have a ***`credentials-sheets.json`*** file, run the import **`ezsheets`** module. The first time you import the EZSheets module, it will open a new browser window for you to log in to your Google account. Click Allow

---

7. You might encounter an unverified app screen, simply press *Advanced* then *Go to quickstart(unsafe)*
	
	You should know have the three files:
	- `credentials-sheets.json` 
	- `token-drive.pickle`
	- `token-sheets.pickle`

8. **Don’t share the credential or token files with anyone—treat them like passwords.**

	
		