Checking the weather seems fairly trivial: Open your web browser, click the address bar, type the URL to a weather website (or search for one and then click the link), wait for the page to load, look past all the ads, and so on.

Actually, there are a lot of boring steps you could skip if you had a program that downloaded the weather forecast for the next few days and printed it as plaintext. This program uses the requests module from Chapter 12 to download data from the web.

Overall, the program does the following:

1. Reads the requested location from the command line
2. Downloads JSON weather data from OpenWeatherMap.org
3. Converts the string of JSON data to a Python data structure
4. Prints the weather for today and the next two days


So the code will need to do the following:

1. Join strings in sys.argv to get the location.
2. Call requests.get() to download the weather data.
3. Call json.loads() to convert the JSON data to a Python data structure.
4. Print the weather forecast.

Visit https://openweathermap.org/api/ to get a free account and an API key. Which looks something like this 30144aba38018987d84710d0e319281e.

### Step 1: Get Location from the Command Line Argument

![[Pasted image 52.png]]

APPID is where we will place our API key from https://openweathermap.org/api/ . We use the sys module to get additional command line arguments using `sys.argv`. The query the api receives is city name, comma, country code[^1].  We then join the command line arguments starting from `sys.argv[1]` onwards since the first element of that list is the name of the python script itself. We do this by using `''.join(sys.argv[1:])`. This joins everything and stores into the location variable. 

[^1]:See https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 for country codes
	
	
### **Step 2: Download the JSON Data**
OpenWeatherMap.org provides real-time weather information in JSON format.

![[Pasted image 54.png]]

We put in our location variable and APP id into the url to pass that into `requests.get()`. In turn, we get a JSON file.

### Step 3: Load JSON Data and Print Weather

![[Pasted image 55.png]]

This code gets the data from the JSON structure and prints it. 

