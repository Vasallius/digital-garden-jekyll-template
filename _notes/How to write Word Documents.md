1. To create a new Word Document, call the `.Document()` function without any passed in parameters.

	``` py
	doc = docx.Document()
	```
	
2. We add paragraph using `.add_paragraph` function.

	``` py
	doc.add_paragraph('some random paragraph')
	```
	
3. You can add run objects to paragraph objects using `.add_run` method.

	``` pu
	paraObj.add_run('random run object')
	```
	
4. Additionally you can also specify the style when adding paragraph and run objects by adding an optional second argument.

	``` py
	doc.add_paragraph('Hello, world!', 'Title')
	```
	
	This adds the paragraph in Title style.
	

