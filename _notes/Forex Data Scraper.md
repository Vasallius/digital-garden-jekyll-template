- Reference:
	- https://www.histdata.com/

---

### Forex Data Scraper

Sir Rey Tugade asked me to download all of the data so that we can attempt to create a bot that plots support and resistance and use that as a strategy to trade the markets. 

Written below is the documentation of the script I used.

Modules used for this project are:
- [[selenium module]]
- [[requests module]]
- [[time module]]
- [[bs4 module]]

``` py
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time
import requests
from bs4 import BeautifulSoup
```

#### Noting elapsed time

``` py
start_time = time.time()
```

We use the variable `start_time` to keep track of the moment the program runs, and check the difference with the variable `end_time`, introduced at the latter part to know how much time it actually took to download all the data.

---

#### Initializing the Firefox browser

We set up the way we want firefox to behave as to automate the process. Further reference on this can be seen in this Stack Overflow [[https://stackoverflow.com/questions/25251583/downloading-file-to-specified-location-with-selenium-and-python|post]].

``` py
profile = webdriver.FirefoxProfile()
profile.set_preference('browser.download.folderList', 2)  # custom location
profile.set_preference('browser.download.manager.showWhenStarting', False)
profile.set_preference('browser.download.dir',
                       r'C:\Users\Joseph\Desktop\Forex')
profile.set_preference(
    'browser.helperApps.neverAsk.saveToDisk', 'application/octet-stream')

```

We generate a new *profile* for firefox using `webdriver.FirefoxProfile()`. We set the different types of preferences we need to adjust using `.set_preference`. The following attributes mean:
- **browser.download.folderLis**t - can be set to **0**, **1** or **2**; 2 for custom location
- **browser.download.manager.showWhenStarting** - this turns of showing download progress
- **browser.download.dir** - specifies the path where you want to save the download
- **browser.helperApps.neverAsk.saveToDisk** - doesn't ask if you want to download something, specify the **mime-type**; in this case application/octet-stream

#### Getting all the links per each pair

Here we try to get all of the pinks of each pair and store them in a list called `pair_links`.

``` py 
homepage = requests.get(
    'https://www.histdata.com/download-free-forex-data/?/excel/1-minute-bar-quotes')
soup = BeautifulSoup(homepage.text, 'lxml')
pair_links = []  
for link in soup.find_all('a')[14:-25]:
    pair_links.append(link.get('href'))
homepage.close()
```

We use the `requests.get` function to load the webpage. We then create a  Beautiful Soup object and pass in the html part of that website that we are going to parse using `lxml`.

We use the `.find_all` method to return a list containing the tag we specified, in this case `'a'`. We slice the list as we don't need the other links that get collected such as links to pages we have no concern. After getting that, we append the links to the list `pair_links`.

#### Getting all the links inside the specific pair

In this part, we collect all the links (data for each year) and append it to `date_links`.

``` py
for index, pair_link in enumerate(pair_links):
    pair_link = 'https://www.histdata.com' + pair_links[index]
    pair_page = requests.get(pair_link)
    date_links = []
    soup = BeautifulSoup(pair_page.text, 'lxml')
    for y in soup.find_all('a')[14:-25]:
        date_links.append('https://histdata.com' + y.get('href'))
```

We loop over each pair in `pair_links` and fetch that website. We parse that website and collect links for each date of that pair and we append that to `date_links`. As usual, slicing the list so that we only get relevant links.

#### Downloading the files

In here, we loop over each link in each pair and download the zipfile and save it to our specified folder.

``` py
browser = webdriver.Firefox(profile)
    for z in date_links:
        browser.get(z)
        z = browser.find_element_by_id('a_file')
        z.send_keys(Keys.PAGE_DOWN)
        time.sleep(0.1)
        z.click()
        time.sleep(0.2)
    time.sleep(20)
    browser.close()
```

We first initialize the browser object and then go to the download link and search for the zipfile. We press the `PAGE DOWN` button because the download link is not seen at first. We use `time.sleep()` to put some delays so that it doesn't fail. Finally, we send a `click` command to the browser and because we setup Firefox that way, it automatically downloads and knows where to download it. We then close the browser.

#### Counting elapsed time

In the final part, we print out how much time it took to download the enormous data.
``` py
end_time = time.time()
print(f'{round(end_time-start_time)} have elapsed. Download complete.')
```

That's all for this project. We can optimize this further in the future by using multi-threaded downloads using the [[threading module]]. However, I ran into problems as I was trying to do that. For now, this will suffice.

---
- tags:
	- #future