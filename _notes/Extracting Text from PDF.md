1. We start by opening a PDF file in *read-binary mode* (denoted by `rb`).

	``` python
	pdfFileObj = open('sample.pdf','rb')
	```

2. We then pass that PDF object to the `PdfFileReader()`
 function.
 
 	```python
	pdfReader = Py2PDF.PdfFileReader(pdfFileObj)
	```
	
3.  The `numPages` attribute return the number of pages the PDF document has.

	```py
	pdfReader.numPages
	```

4. We get specific pages using `.getPage()` and specifying the index as a paramater. ==Note: pages start at index 0.== 

	```py
	pageObj = pdfReader.getPage(0)
	```
	
5. We can use the `.extractText()` function to get the text in the PDF in string form.

	``` py
	pageObj.extractText()
	```
	
	However, this is not that accurate all the time.
	
6. We close the PDF file using `.close()`