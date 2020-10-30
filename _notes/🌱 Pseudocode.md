![](Attachments/FlowChart_Final.png)

``` py
import random
import time

iniatialize tasks as empty list

open .txt file
	loop over the lines
	append line to tasks
	
while length of tasks is greater than 0
	pick a random task from tasks
	assign that task to current_task
	print current_task
	
	while True
		wait for 25 minutes #work time
		get input from user (yes or no)
		assign that input to user_answer
		
		if user_answer equals to yes
			remove current_task from tasks
			break
			
		else
			wait for 5 minutes #break time
			continue
			
print all tasks are done
```