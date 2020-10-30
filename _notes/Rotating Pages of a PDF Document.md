1. We can rotate PDFs by using the functions `rotateClockwise()` and `rotateCounterClockwise()`. The values to be passed into these functions are **90**, **180**, or **270**.

	``` py
	page.rotateClockwise(90)
	```
2. We create a PdfFileWriter object and add the rotated page to it.

	``` py
	 pdfWriter = PyPDF2.PdfFileWriter()
     pdfWriter.addPage(page)
   ```
3. We then create the resulting PDF, then write that page to it.

``` py
	resultPdfFile = open('rotatedPage.pdf', 'wb') 	
	pdfWriter.write(resultPdfFile)
```
 
This rotates the page 90 degrees clockwise. See example image:
	
![[Pasted image 60.png]]