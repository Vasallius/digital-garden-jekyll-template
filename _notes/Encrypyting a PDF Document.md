1. We can encrypt PDF Documents by using the `encrypt()` function. This functions takes in two arguments, first, the *user password* and second the *owner password*. The user password is for viewing while the owner password is for setting permissions for printing, commenting, extracting text, and other features. If the second argument is not supplied, the password will be used for both

	``` py
	pdfWriter.encrypt('swordfish')
	```
	
	Encrypt the password before calling the `write()` function to the PDF Writer Object.
	