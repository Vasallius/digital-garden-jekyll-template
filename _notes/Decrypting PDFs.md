1. We can check if the PDF document has a password using the`.isEncrypted` attribute. This value returns a Boolean value, whether True or False

	``` py
	pdfReader.isEncrypted
	```
	
2. Calling `.getPage()` function will fail and result into a traceback. There is a weird bug when we call `.getPage()`before calling `.decrypt()` causing it to fail with `Index Error`. That is why reopening the file is a must.
	

3. To enter the password, we use the `.decrypt()` function, with the password as an argument.

	``` py
	pdfReader.decrypt('rosebud')
	```
	
	Failing to decrypt makes future `.getPage` calls fail.
	
	Related:
	- [[Encrypyting a PDF Document]]
