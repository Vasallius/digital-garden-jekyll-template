To check available styles, press **Ctrl + Alt + Shift + S**. This brings up the styling pane. For Word documents, there are three types of styles: **paragraph styles** can be applied to Paragraph objects, **character styles** can be applied to Run objects, and **linked styles** can be applied to both kinds of objects. We set the style attributes equal to a string. Below are the default string values:

![[Pasted image 63.png]]

When using a linked style for a Run object, you will need to add  **Char** to the end of its name. For example, to set the Quote linked style for a Paragraph object, you would use paragraphObj.style = 'Quote', but for a Run object, you would use runObj.style = 'Quote Char'.

==New styles cannot be created as of the moment==

Related:
- [[How to create Word Documents with Nondefault Styles]]
