PyPDF2 can also overlay the contents of one page over another, which is useful for adding a logo, timestamp, or watermark to a page.

![[Pasted image 61.png]]

1. We open the the base PDF.
2. We get the first page of that PDF.
3. We open the PDF containing the watermark.
4. We merge the two by `mergePage()` function. We put the first page of the watermark PDF on top of the first page of the base PDF.
5. We create a writer object.
6. We add the newly merged first page to the writer object.
7. We loop over each page in the base PDF and add that to the writer object.
8. We create a new PDF and write the contents of the writer object.