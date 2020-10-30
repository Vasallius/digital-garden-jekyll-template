## Overview
![[Pasted image 90.png]]

#### Connecting to an SMTP Server

![[Pasted image 89.png]]

Once you have the domain name and port information for your email provider, create an SMTP object by calling **smptlib.SMTP()**, passing the domain name as a string argument, and passing the port as an integer argument. 

``` py
smtpObj = smtplib.SMTP('smtp.gmail.com',587)
```

#### Sending the SMTP 'Hello' Message

Call the **.ehlo()** method to say hello to the smtp server. Just call it after getting the smtp object. **250** is the code for success.

```py
>>> smtpObj.ehlo()
(250, b'smtp.gmail.com at your service, [112.200.102.67]\nSIZE 35882577\n8BITMIME\nSTARTTLS\nENHANCEDSTATUSCODES\nPIPELINING\nCHUNKING\nSMTPUTF8')
```

#### Starting TLS Encryption
If you are connecting to port 587 on the SMTP server (that is, you’re using TLS encryption), you’ll need to call the **starttls()** method next. This required step enables encryption for your connection. If you are connecting to port 465 (using SSL), then encryption is already set up, and you should skip this step.

``` py
>>> smtpObj.starttls()
(220, b'2.0.0 Ready to start TLS')
```

#### Logging In to the SMTP Server
Once your encrypted connection to the SMTP server is set up, you can log in with your username (usually your email address) and email password by calling the **login()** method. **235** means that the authneticaion was successful.

``` py
>>> smtpObj.login('masterjed7262@gmail.com','vasallius7262')
(235, b'2.7.0 Accepted')
```

==Be careful about putting passwords in your source code. If anyone ever copies your program, they’ll have access to your email account! It’s a good idea to call input() and have the user type in the password. It may be inconvenient to have to enter a password each time you run your program, but this approach prevents you from leaving your password in an unencrypted file on your computer where a hacker or laptop thief could easily get it.==

#### Sending an Email
Once you are logged in to your email provider’s SMTP server, you can call the **sendmail()** method to actually send the email. 

``` py
smtpObj.sendmail('masterjed7262@gmail.com','josephtan1025@gmail.com','Subject: LOL \nTEST VIRUS BEWARE')
```
The sendmail() method requires three arguments:

Your email address as a string (for the email’s “from” address)
The recipient’s email address as a string, or a list of strings for multiple recipients (for the “to” address)
The email body as a string
The start of the email body string must begin with 'Subject: \n' for the subject line of the email. The '\n' newline character separates the subject line from the main body of the email.

The return value from sendmail() is a dictionary. There will be one key-value pair in the dictionary for each recipient for whom email delivery failed. An empty dictionary means all recipients were successfully sent the email.

#### Disconnecting from the SMTP Server
Be sure to call the **quit()** method when you are done sending emails. This will disconnect your program from the SMTP server. The 221 in the return value means the session is ending.

``` py
smtpObj.quit()
(221, b'2.0.0 closing connection y69sm1089147pfg.207 - gsmtp')
```

- Related
	- [[Sending Mail from a Gmail Account]]