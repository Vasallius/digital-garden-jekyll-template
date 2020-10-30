1. We can filter lists using the `filter()` function. This function accepts two arguments, a **function** and an **iterable** (lists, tuples, and such).

	If the function returns False, that element is removed from the iterable.
	
	``` python
		def filter_function(email):
			if email == '':
				return False
  			else:
    			return True
				
		email_list = filter(filter_function, email_list)
	```

	The `filter_function` returns False if the element is an empty string (`''`), and it returns True when it is not. Because if returns `False` on empty strings, empty strings are removed from the iterable (`email_list`)
	
	To sort strings without regarding for case, see [[Case-insensitive Sorting]].
	
