1. We can add pictures in the same directory using `.add_picture()`.

	``` py
	doc.add_picture('jed.png')
	```
	
2. We can also specify the width and height of the picture by adding optional arguments.

	``` py
	doc.add_picture('zophie.png', width=docx.shared.Inches(1),
	height=docx.shared.Cm(4))
	
	```

We specify the height and width using `docx.shared.Inches()` and `docx.shared.Cm()`.