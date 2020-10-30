- Reference
	- [[🌳 Sending Email]]

---

1. To send an email, call the `.send()` function.
	
	``` py
	ezgmail.send('recipient@example.com', 'Subject line', 'Body of the 	email')
	```
		
	Supply three arguments, the **recipient email**, the **subject**, and the **message**.

2. You can also add attachments to the email by passing another argument as a list of files.

	``` py
	ezgmail.send('recipient@example.com', 'Subject line', 'Body of the email', ['attachment1.jpg', 'attachment2.mp3'])
	``` 
	
3. You can also add keyword arguments `cc` and `bcc` to send carbon-copies and blind carbon copies.
	``` py
	ezgmail.send('recipient@example.com', 'Subject line', 'Body of the email',cc='friend@example.com',bcc='otherfriend@example.com,someoneelse@example.com')
	``` 