1. Open the PDF documents you want and store them into variables.

	``` py
	pdf1File = open('meetingminutes.pdf', 'rb')
    pdf2File = open('meetingminutes2.pdf', 'rb')
	```
	
2.  Get a PDF File Reader object for each document.

	``` py	 
	pdf1Reader = PyPDF2.PdfFileReader(pdf1File)
  	pdf2Reader = PyPDF2.PdfFileReader(pdf2File)
   	```
3. Create a PDF Writer Object which represents a blank PDF document.

	``` py
	pdfWriter = PyPDF2.PdfFileWriter()
	```
4. Loop over each page of the two documents and add that to the PDF File Writer Object using `.addPage()` function.

	``` py
	for pageNum in range(pdf1Reader.numPages):
    	pageObj = pdf1Reader.getPage(pageNum)
    	pdfWriter.addPage(pageObj)

    for pageNum in range(pdf2Reader.numPages):
    	pageObj = pdf2Reader.getPage(pageNum)
    	pdfWriter.addPage(pageObj)
	```
	
5. Now we create the combined PDF file and write the contents of our pdfWriter. Take note to open it in *write-binary*  mode.

	``` py
	pdfOutputFile = open('combinedminutes.pdf', 'wb')
    pdfWriter.write(pdfOutputFile)
	```
	
6.  Don't forget to close all files!

	``` py
	pdfOutputFile.close()
    pdf1File.close()
   	pdf2File.close()
	```
	
	