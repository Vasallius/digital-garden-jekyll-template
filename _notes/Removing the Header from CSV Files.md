Say you have the boring job of removing the first line from several hundred CSV files. Maybe you’ll be feeding them into an automated process that requires just the data and not the headers at the top of the columns. You could open each file in Excel, delete the first row, and resave the file—but that would take hours. Let’s write a program to do it instead.

The program will need to open every file with the .csv extension in the current working directory, read in the contents of the CSV file, and rewrite the contents without the first row to a file of the same name. This will replace the old contents of the CSV file with the new, headless contents.

At a high level, the program must do the following:
>1. Find all the CSV files in the current working directory.
>2. Read in the full contents of each file.
>3. Write out the contents, skipping the first line, to a new CSV file.

At the code level, this means the program will need to do the following:
>1. Loop over a list of files from os.listdir(), skipping the non-CSV files.
>2. Create a CSV reader object and read in the contents of the file, using the line_num attribute to figure out which line to skip.
>3. Create a CSV writer object and write out the read-in data to the new file.

### Step 1: Loop Through Each CSV File

![[Pasted image 49.png]]

We basically loop over all the files in the current directory and check if the file extension is `.csv`.

### Step 2: Read in the CSV File

![[Pasted image 50.png]]

Check if the row being read is the header (.line_num = 1). Append all others rows except that to another list.

### Step 3: Write Out the CSV File Without the First Row

![[Pasted image 51.png]]

Here we add "headerRemoved" to the file name of the csv file without headers. We then create a writer object and loop through the list contains all the rows. For each iteration, we write that row into the csv file using `.writerow`. After all is done, we close the file using `.closer()`. 