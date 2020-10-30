
- References:
	- links: [[💻 Programming]]
	- book: Automate the Boring Stuff with Python

## Word Documents
Python can create and modify Word documents, which have the .docx file extension, with the [[docx module]].

Word documents have a lot of structure. There are three different data types in a word document. ***Document objects*** represent the whole document. This object contains a list of ***paragraph objects*** . Each paragraph object contains a list of ***run objects***. See figure below.	

See: [[Attributes of run objects]]

![[Pasted image 62.png]]

Each text in a word document is more than just a string. It contains attributes such as font, color, size, and other information. A ***style*** contains this information. A run object is basically text with the same styles.

Thing I want to do: | How to do it:
-----------|--------
Read Word Document|[[How to read Word Documents]]
Get the full text from the document|[[How to get full text from a .docx file]]
Styling Paragraph and Run Objects | [[How to Style Word Documents]]
Write Word Documents | [[How to write Word Documents]]
Add Headings | [[How to add Headings]]
Add Line and Page Break| [[How to add Line and Page breaks]]
Add Pictures | [[How to add pictures to Word Documents]]
Create PDF from Word  Document | [[How to create PDF from Word Document]]


### Summary 

---

Word documents are more reliable, and you can read them with the python-docx package’s docx module. You can manipulate text in Word documents via Paragraph and Run objects. These objects can also be given styles, though they must be from the default set of styles or styles already in the document. You can add new paragraphs, headings, breaks, and pictures to the document, though only to the end.

