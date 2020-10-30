The **string module** contains a list of punctuations under **string.punctuation**. We can loop over the characters and return the `char` if the `char` is not in **string.punctuation**

Example:

```py
import string

string = "sadfninaif24!$^24271983dsabs#!@#!^*#%~4*"
output_string= ""
for char in string:
	if char not in string.punctuation:
		output_string += char
print(output_string)

# sadfninaif2424271983dsabs4
	
```

---

- tags
	- year: #year2020 
	- month: #October 
	- associations: 
		[[📋 How to Think Like a Computer Scientist]]
	- resource-type: #notes 

 