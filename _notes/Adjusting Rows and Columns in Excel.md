In Excel, adjusting the sizes of rows and columns is as easy as clicking and dragging the edges of a row or column header. But if you need to set a row or column’s size based on its cells’ contents or if you want to set sizes in a large number of spreadsheet files, it will be much quicker to write a Python program to do it.

Worksheet objects have `row_dimensions` and `column_dimensions` attributes that control row heights and column widths.

![[Pasted image 14.png]]

Columns with widths of 0 or rows with heights of 0 are hidden from the user.

