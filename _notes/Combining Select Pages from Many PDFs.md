Say you have the boring job of merging several dozen PDF documents into a single PDF file. Each of them has a cover sheet as the first page, but you don’t want the cover sheet repeated in the final result. Even though there are lots of free programs for combining PDFs, many of them simply merge entire files together. Let’s write a Python program to customize which pages you want in the combined PDF.

At a high level, here’s what the program will do:

1.Find all PDF files in the current working directory.
2. Sort the filenames so the PDFs are added in order.
3. Write each page, excluding the first page, of each PDF to the output file.

In terms of implementation, your code will need to do the following:

1. Call os.listdir() to find all the files in the working directory and remove any non-PDF files.
2. Call Python’s sort() list method to alphabetize the filenames.
3. Create a PdfFileWriter object for the output PDF.
4. Loop over each PDF file, creating a PdfFileReader object for it.
5. Loop over each page (except the first) in each PDF file.
6. Add the pages to the output PDF.
7. Write the output PDF to a file named allminutes.pdf.
8. For this project, open a new file editor tab and save it as combinePdfs.py.


### Step 1: Find All PDF Files

``` py
#! python3
   # combinePdfs.py - Combines all the PDFs in the current working directory into
   # into a single PDF.

➊ import PyPDF2, os
   # Get all the PDF filenames.
   pdfFiles = []
   for filename in os.listdir('.'):
       if filename.endswith('.pdf'):
         ➋ pdfFiles.append(filename)
➌ pdfFiles.sort(key = str.lower)

➍ pdfWriter = PyPDF2.PdfFileWriter()
```
1. Import the necessary modules.
2. Loop over files in the current directory and append pdf files to a list.
3. Sort alphabetically.
4. Make a writer object.

### Step 2: Open Each PDF
``` py
for filename in pdfFiles:
    pdfFileObj = open(filename, 'rb')
    pdfReader = PyPDF2.PdfFileReader(pdfFileObj)
```

1. Very simple code, loop over each PDF and open it. After opening it make Reader Objects for each PDF

### Step 3: Add Each Page

``` py
  # Loop through all the pages (except the first) and add them.
  ➊ for pageNum in range(1, pdfReader.numPages):
         pageObj = pdfReader.getPage(pageNum)
         pdfWriter.addPage(pageObj)
```

1. Add each page except the first page to the File Writer Object.

### Step 4: Save the Results

``` py
# Save the resulting PDF to a file.
pdfOutput = open('allminutes.pdf', 'wb')
pdfWriter.write(pdfOutput)
pdfOutput.close()
```
1. Make a new file and open it in *write-binary* mode. Write all the data from the Writer Objects to the new file.