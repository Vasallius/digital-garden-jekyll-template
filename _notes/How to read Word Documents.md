1. We open a word document by:

	``` py
	doc = docx.Document('demo.docx')
	```
	The argument passed is the file name in the same directory of the python script.
	
2. We access  the number of paragraphs in a word document by

	``` py
	len(doc.paragraphs)
	```
	
3. To access the text in the paragraph we access the `.text` variable.

	``` py
	doc.paragraphs[0].text
	```
	This retrieves the text of the first paragraph.
	
4. Each paragraph contains run objects that contain properties as well.

	``` py
	len(doc.paragraphs[1].runs)
	```
	This code returns the number of run objects in paragraph 2. 
	
	``` py
	doc.paragraphs[1].runs[0].text
	```
	This code returns the text of the first run object in paragraph 2.
	
	Related:
	- [[How to write Word Documents]]
	- [[How to get full text from a .docx file]]