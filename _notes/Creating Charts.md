## Charts

[[openpyxl module| openpyxl]] supports creating bar, line, scatter, and pie charts using the data in a sheet’s cells. To make a chart, you need to do the following:

1. Create a [Reference](https://www.oreilly.com/library/view/python-in-a/0596001886/ch04s03.html) object from a rectangular selection of cells.

3. Create a **Series** object by passing in the Reference object.

4. Create a **Chart** object.

5. Append the Series object to the Chart object.

6. Add the Chart object to the Worksheet object, optionally specifying which cell should be the top-left corner of the chart.

The Reference object requires some explaining. You create Reference objects by calling the `openpyxl.chart.Reference()` function and passing three arguments:

1. The `Worksheet` object containing your chart data.
 
2. A **tuple** of two integers, representing the **top-left cell** of the rectangular selection of cells containing your chart data: the first integer in the tuple is the row, and the second is the column. Note that 1 is the first row, not 0.

3. A **tuple** of two integers, representing the **bottom-right cel**l of the rectangular selection of cells containing your chart data: the first integer in the tuple is the row, and the second is the column.

---

### Creating a bar chart

![[Pasted image 20.png]]

You can also create line charts, scatter charts, and pie charts by calling `openpyxl.charts.LineChart()`, `openpyxl.chart.ScatterChart()`, and `openpyxl.chart.PieChart()`.