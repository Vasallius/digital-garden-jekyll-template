1. We can call that`.add_break()` method on the run object to add a line break after.

2. To add a page break, pass in **docx.enum.text.WD_BREAK.PAGE** as an argument to `.add_break()`.

	``` py
	doc.paragraphs[0].runs[0].add_break(docx.enum.text.WD_BREAK.PAGE)
	```
	