- References:
	- link: [[💻 Programming]]
	- book: Automate the Boring Stuff with Python
---
## Keeping Time, Scheduling, and Launching Programs
We can run programs at specified date and times anbd regular intervals. We can also write programs that launch other programs on a schedule by using the **subprocess** and **threading** modules. 

### The time module
Your computer’s system clock is set to a specific date, time, and time zone. The built-in time module allows your Python programs to read the system clock for the current time. The time.time() and time.sleep() functions are the most useful in the time module.

See: [[time module]]

#### time.time() function
The `time.time()` function returns the amount of time passed from the **[[Unix epoch]]** up to now as a float value in seconds. This number is called an **[[epoch timestamp]]**. It can be used to profile code and measure how fast it runs.

#### time.ctime() function
We can use `time.ctime()` to return time in a string. This is human-readable compared to what `time.time()` returns. You can also pass an [[epoch timestamp]] to it.

#### time.sleep() function
Thet `time.sleep()` function "pauses" your program for a while. It takes in an integer, representing number of seconds.

#### Rounding numbers
Since the [[epoch timestamp]] is float value with numerous decimals, we can round it down to n number of decimals or remove it completely using `round()` function. This function takes in the number to be rounded, then the number of decimal digits to be left. Not having a second argument rounds it to the nearest whole number.

## The datetime module
The time module is useful for getting a Unix epoch timestamp to work with. But if you want to display a date in a more convenient format, or do arithmetic with dates (for example, figuring out what date was 205 days ago or what date is 123 days from now), you should use the [[datetime module]].

The [[datetime module]]	 has its own data type. They represent specific moments in time.

Calling `datetime.datetime.now()` returns a [[datetime object]]. We can also retrieve a datetime object for a specific moment of our choice, just pass in integers representing the year, month, day, hour, and second of the moment we want. This numbers will be stored in the `.year`, `.month`, `.day`, `.hour`, `.minute`, and `.second` attributes of the [[datetime object]].

We can convert an [[epoch timestamp]] to datetime by using the `datetime.datetime.fromtimestamp()` function. We can compare [[datetime object|datetime objects]] by comparison operators. The "later" time is greater.

### timedelta data type
This data type represents a duration in time instead of a moment in time. To create a timedelta object we use the `datetime.timedelta()` function. The datetime.timedelta() function takes keyword arguments weeks, days, hours, minutes, seconds, milliseconds, and microseconds. There is no month or year keyword argument, because “a month” or “a year” is a variable amount of time depending on the particular month or year.

Calling `.total_seconds` represents the duration in seconds. Calling `str(deltaobject)` prints out a readable string.

We can perform date arithmetic on datetime values such as adding 1000 days.

### Pausing Until a Specific Date
By using `time.sleep()` to limit the amount of times the computer checks for something, we don't waste CPU processing cycles.

For example:
``` py
	import datetime
	import time
	halloween2020 = datetime.time(2020,10,31,0,0,0)
	while datetime.datetime.now()<halloween2020:
		time.sleep(1)
	
```

In this example the computer only checks the Boolean, once every second due to `time.sleep()`.

### Converting datetime Objects into Strings
We can use the `strftime()` method to display a datetime object as a string. See table below:

![[Pasted image 66.png]]

Example:

![[Pasted image 67.png]]

The October21st date has been displayed in different string formats.

### Converting Strings into datetime Objects

To convert a string containing date information, we use the`datetime.datetime.strptime()`. The "p" stands for *parse*. However, the string must match the  custom format string exactly, or Python will raise a `ValueError` exception. See example:

![[Pasted image 68.png]]

## Multithreading
The concept of multithreading enables you to kinda perform two codes at the same time. So far, everything we've done is single-threaded. To make a separate thread, start by importing the [[threading module]].

1. Create a function to be used in a new thread.

	``` py
	def takeANap():
       time.sleep(5)
       print('Wake up!')
	```
	
2. Create a thread object using `.Thread()` function and pass in a `target` argument equal to the function you want to use.

	``` py
	threadObj = threading.Thread(target=takeANap)
	```
	
3. Call the `.start()` method on the thread object. This executes the target function in the new thread.

	``` py
	threadObj.start()
	```
	
### Passing Arguments to the Thread’s Target Function
In the case that our function takes in arguments or keyword arguments, we can specify those arguments by passing`args` and `kwargs` in the `.Thread()` method.

``` py
threadObj = threading.Thread(target=print(), args=['dog','cat','otter'], kwargs={'sep':'&'})
```

Here we pass in additional arguments in a list, **dog**, **cat**, and **otter**. We also pass in **sep** as a keyword argument equal to "**&**". 

### Concurrency Issues
Multiple threads can cause problems called concurrency issues. This happens when multiple threads are reading and writing the same variable. A good practice is for the function specified in target to use local variables.

## Launching Other Programs from Python
We can launch other programs by using the `Popen()` function and the [[subprocess module]]. P in `Popen()` stands for process. Each process can have multiple threads but processes cannot access other processess' variables.

1. First start by importing the [[subprocess module]] by `import subprocess`
2. Use the `Popen()` method and supply the exe path. 

	``` py
	import subprocess
	subprocess.Popen(r"C:\Program Files\Anki\anki.exe")
	````
This returns a `Popen` object, which has two methods, `poll()` and `wait()`.	

3. The `poll()` method returns `None` if the process is still running. Otherwise, it returns an *[[exit code]]*.

4. The `wait()` method waits for the process to be terminated. Return value is the *[[exit code]]*. 

### Passing Command Line Arguments to the Popen() Function
We can pass command line arguments by passing a list into the `Popen()` function. The list's first element should be the application you want to execute and then following it would be the command line arguments you pass into program when it starts.

### Launching Programs at Certain Times 
We can use **Task Scheduler** for Windows, **launchcd** for macOS, and **cron** scheduler for linux to be able to launch programs at different times and different intervals.

### Running Other Python Scripts
1. Simply pass in the python exe to the `Popen()` function, followed by the script you want to execute.

![[Pasted image 69.png]]

### Opening Files with Default Applications
The function `Popen()` can open files using default applications. We pass in **start** for windows, **open** for macOS, and **see** for linux followed by the file you want to open.
==Add the shell kwarg and set it to True for Windows==

![[Pasted image 70.png]]

