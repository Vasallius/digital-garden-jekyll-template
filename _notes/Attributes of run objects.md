Run objects can be further styled using text attributes. Each attribute can be set to one of three values: **True** (the attribute is always enabled, no matter what other styles are applied to the run), **False** (the attribute is always disabled), or **None** (defaults to whatever the run’s style is set to).

Shown below is the table of its attributes:

![[Pasted image 64.png]]

Example of changing the run attributes:

``` python 
doc.paragraphs[1].runs[0].style = 'QuoteChar'
doc.paragraphs[1].runs[1].underline = True
doc.paragraphs[1].runs[3].underline = True
```
	