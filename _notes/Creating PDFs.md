PyPDF2’s counterpart to PdfFileReader is PdfFileWriter, which can create new PDF files. We cannot write text just like we can with plaintext files such as *.txt* files. PyPDF2’s PDF-writing capabilities are limited to copying pages from other PDFs, rotating pages, overlaying pages, and encrypting files.

PyPDF2 **doesn’t allow you to directly edit a PDF**. Instead, you have to create a new PDF and then copy content over from an existing document. The examples in this section will follow this general approach:

1. Open one or more existing PDFs (the source PDFs) into PdfFileReader objects.
2.  Create a new PdfFileWriter object.
3. Copy pages from the PdfFileReader objects into the PdfFileWriter object.
4. Finally, use the PdfFileWriter object to write the output PDF.

==Creating a PdfFileWriter object creates only a value that represents a PDF document in Python. It doesn’t create the actual PDF file.==

Thing you want to do | Check this
-------|------
Copy Multiple Pages into one PDF| [[Combining PDFs by Copying Pages]]
