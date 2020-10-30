- Reference
	- link: [[💻 Programming]]
	- book: Automate the Boring Stuff with Python

---

### Sending Text Messages with Twilio
- Twilio is an SMS gateway service, which means it allows you to send text messages from your programs via the internet.
- Before signing up for a Twilio account, install the [[twilio module]]

#### Signing Up for a Twilio Account
- Go to https://twilio.com/ and fill out the sign-up form.
- Get a trial number.
- My current trial number is: **+12053866131**
- You will need two more pieces of information: your account SID and the auth (authentication) token. 
- You can find this information on the Dashboard page when you are logged in to your Twilio account. These values act as your Twilio username and password when logging in from a Python program.
- My current Account Sid: **AC8c9194bb43961097b0d844ddab091a4e**
- My Auth Token: **e017f7ab95c8153cfcd30b264b7cd10e**
	![[Pasted image 97.png]]
	
#### Sending Text Messages
1. Compared to all the registration steps, the actual Python code is fairly simple. With your computer connected to the internet, enter the following into the interactive shell, replacing the accountSID, authToken, myTwilioNumber, and myCellPhone variable values with your real information:
	``` py
	>>> from twilio.rest import Client
   	>>> accountSID = 'ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
   	>>> authToken  = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
   ```
2. Create a client object and pass in Account Sid and AuthToken as arguments.
	``` py
	twilioCli = Client(accountSID, authToken)
	```
3. Create messages using `.create()` method and pass in the keyword arguments, **body**, **from**, and **to**
	``` py
	message = twilioCli.messages.create(body='Mr. Watson - Come here - I want
   to see you.', from_=myTwilioNumber, to=myCellPhone)
   ```
 4. You can also access the following attributes.

``` py
>>> message.to
'+14955558888'
>>> message.from_
'+14955551234'
>>> message.body
'Mr. Watson - Come here - I want to see you.'
>>> message.status
'queued'
>>> message.date_created
datetime.datetime(2019, 7, 8, 1, 36, 18)
>>> message.date_sent == None
True
>>> message.sid
'SM09520de7639ba3af137c6fcb7c5f4b51'
```
5. Message.status and message.date_sent is still set to **queued** and **None** as it has not yet been updated. We can retrieve the update message using the **.get()** method. See example:
``` py
   >>> updatedMessage = twilioCli.messages.get(message.sid)
   >>> updatedMessage.status
   'delivered'
   >>> updatedMessage.date_sent
   datetime.datetime(2019, 7, 8, 1, 36, 18)
 ```