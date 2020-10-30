- References:
	- links: [[💻 Programming]]
	- book: Automate the Boring Stuff with Python

---

## JSON and APIs

JavaScript Object Notation is a popular way to format data as a single human-readable string. JSON is the native way that JavaScript programs write their data structures and usually resembles what Python’s pprint() function would produce.

Example JSON:
```py
{"name": "Zophie", "isCat": true,
 "miceCaught": 0, "napsTaken": 37.5,
 "felineIQ": null}
```

JSON is useful to know, because many websites offer JSON content as a way for programs to interact with the website. This is known as providing an [[Application Programming Interface]] (API). 

The way we interact with JSON files is using the [[json module]].

To read JSON files, see [[Reading JSON strings to Python Data]]. Take note that JSON strings always use double quotes `""`.

To write JSON files, see [[Writing JSON files from Python Data]].

Miniproject: [[Fetching Current Weather Data]]
