References:
- links: [[🌳 Working with Excel Spreadsheets in Python]]
- book: [[Automate the Boring Stuff with Python]]

---

Say you have a spreadsheet of data from the 2010 US Census and you have the boring task of going through its thousands of rows to count both the total population and the number of census tracts for each county.

This is what your program does:

1. Reads the data from the Excel spreadsheet
2. Counts the number of census tracts in each county
3. Counts the total population of each county
4. Prints the results

---

This means your code will need to do the following:

1. Open and read the cells of an Excel document with the openpyxl module.
2. Calculate all the tract and population data and store it in a data structure.
3. Write the data structure to a text file with the *.py* extension using the pprint module.

---

## Step 1: Read the Spreadsheet Data
![[Pasted image 2.png]]

1. We first import the needed modules for our program to work.
2. We open the corresponding excel file.
3. We get the sheet named 'Population by Census Tract'
4. We iterate over its rows, starting with "2" since Row 1 contains column titles. While iterating we assign 
    values to different variables.

---

## Step 2: Populate the Data Structure

![[Pasted image 3.png]]

This dictionaries contains states that map into dictionaries containing a country dictionary that contains another dictionary for pop and tracts values.

![[Pasted image 4.png]]

1. If `state` dictionary exists, return empty dictionary, if not make value as an empty dictionary
2. If `['state']` exists, return a dictionary containing `{county, {'tracts':0,'pop':0}`}
3. Increment `tracts` by 1 per row
4. Increment `pop` by int value of pop

---

### Step 3: Write the Results to a File

![[Pasted image 5.png]]

This basically writes data down into a file and the file is actually a `python` file which makes it importable. We don't need our previous python file anymore, anytime we need the data we can just import census 2010.