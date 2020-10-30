- Reference
	- link: [[🌳 Sending Email]]

---

1. Make sure to have a gmail account. If for some reason, you do not have, go to https://gmail.com/ and create an account.
2. After creating your account, go to https://developers.google.com/gmail/api/quickstart/python/ and Click **Enable the Gmail API**.
3. Click **Download Client Configuration**, this downloads the *`credentials.json`* file that contains your Client ID and Client Secret Information. 
4. ==Store this in the same directory as your python script.==
5. Enter the following in the terminal:
	``` py
	 import ezgmail, os
	 os.chdir(r'C:\path\to\credentials_json_file')
	 ezgmail.init()
	```
6. This opens up a gmail sign in page. Enter your credentials.
7. It will say that "**this app isn't verified**." Press **Advanced** then **Go to Quickstart(unsafe)**
8. Give Quickstart authentication permissions.
9. You should find your folder directory containing `tokens.json`.
10. `ezgmail.EMAIL_ADDRESS` contains the email address assosciated with the token file.

