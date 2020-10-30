1. We can search emails like we would in the search box by using `.search()` function.

	``` py
	resultThreads = ezgmail.search('RoboCop')
	```
2. We can also pass in special search operators like:
	- label:UNREAD' For unread emails
	- 'from:al@inventwithpython.com' For emails from masterjed7262@gmail.com
	- 'subject:hello' For emails with “hello” in the subject
	- 'has:attachment' For emails with file attachments

3. Full list of search operators at : https://support.google.com/mail/answer/7190?hl=en/