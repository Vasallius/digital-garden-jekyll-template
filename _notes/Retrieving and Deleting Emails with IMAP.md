## Overview
![[Pasted image 91.png]]

#### IMAP
Just as SMTP is the protocol for sending email, the Internet Message Access Protocol (IMAP) specifies how to communicate with an email provider’s server to retrieve emails sent to your email address. Python comes with an [[imaplib module]], but in fact the third-party imapclient module is easier to use. This chapter provides an introduction to using IMAPClient; the full documentation is at https://imapclient.readthedocs.io/.

The imapclient module downloads emails from an IMAP server in a rather complicated format. Most likely, you’ll want to convert them from this format into simple string values. The [[pyzmail module]] does the hard job of parsing these email messages for you. You can find the complete documentation for PyzMail at https://www.magiksys.net/pyzmail/.

#### Connecting to an IMAP Server
![[Pasted image 92.png]]

Once you have the domain name of the IMAP server, call the **imapclient.IMAPClient()** function to create an IMAPClient object. Most email providers require SSL encryption, so pass the **ssl=True** keyword argument. Enter the following into the interactive shell (using your provider’s domain name):

``` py
imapobj = imapclient.IMAPClient('imap.gmail.com',ssl=True)
```

#### Logging In into the IMAP Server
Once you have an IMAPClient object, call its **login()** method, passing in the username (this is usually your email address) and password as strings.

``` py
>>> imapobj.login('masterjed7262@gmail.com','vasallius7262')
b'masterjed7262@gmail.com authenticated (Success)'
```

==Remember to never write a password directly into your code! Instead, design your program to accept the password returned from input().==

#### Searching for Email
Once you’re logged on, actually retrieving an email that you’re interested in is a two-step process. First, you must select a folder you want to search through. Then, you must call the IMAPClient object’s **search() **method, passing in a string of IMAP search keywords.

#### Selecting a Folder
Almost every account has an INBOX folder by default, but you can also get a list of folders by calling the IMAPClient object’s **list_folders()** method. This returns a list of tuples. Each tuple contains information about a single folder.
``` py
pprint.pprint(imapobj.list_folders())
[((b'\\HasNoChildren',), b'/', 'INBOX'),
 ((b'\\HasNoChildren',), b'/', 'Unwanted'),
 ((b'\\HasChildren', b'\\Noselect'), b'/', '[Gmail]'),
 ((b'\\All', b'\\HasNoChildren'), b'/', '[Gmail]/All Mail'),
 ((b'\\Drafts', b'\\HasNoChildren'), b'/', '[Gmail]/Drafts'),
 ((b'\\HasNoChildren', b'\\Important'), b'/', '[Gmail]/Important'),
 ((b'\\HasNoChildren', b'\\Sent'), b'/', '[Gmail]/Sent Mail'),
 ((b'\\HasNoChildren', b'\\Junk'), b'/', '[Gmail]/Spam'),
 ((b'\\Flagged', b'\\HasNoChildren'), b'/', '[Gmail]/Starred'),
 ((b'\\HasNoChildren', b'\\Trash'), b'/', '[Gmail]/Trash'),
 ((b'\\HasNoChildren',), b'/', 'research')]
 ```
 

To select a folder to search through, pass the folder’s name as a string into the IMAPClient object’s **select_folder() **method.
``` py
>>> imapobj.select_folder('INBOX',readonly=True)
{b'PERMANENTFLAGS': (), b'FLAGS': (b'\\Answered', b'\\Flagged', b'\\Draft', b'\\Deleted', b'\\Seen', b'$Forwarded', b'$Junk', b'$NotPhishing', b'$Phishing'), b'UIDVALIDITY': 1, b'EXISTS': 12947, b'RECENT': 0, b'UIDNEXT': 24167, b'HIGHESTMODSEQ': 2176234, b'READ-ONLY': [b'']}
```

#### Performing the Search
With a folder selected, you can now search for emails with the IMAPClient object’s search() method. The argument to **search()** is a list of strings, each formatted to the IMAP’s search keys. 

![[Pasted image 93.png]]
![[Pasted image 94.png]]

The search() method doesn’t return the emails themselves but rather unique IDs (UIDs) for the emails, as integer values. You can then pass these UIDs to the **fetch()** method to obtain the email content.

#### Size Limits
If your search matches a large number of email messages, Python might raise an exception that says imaplib.error: got more than 10000 bytes. When this happens, you will have to disconnect and reconnect to the IMAP server and try again.
This limit is in place to prevent your Python programs from eating up too much memory. Unfortunately, the default size limit is often too small. You can change this limit from 10,000 bytes to 10,000,000 bytes by running this code:
``` py
>>> import imaplib
>>> imaplib._MAXLINE = 10000000
```

#### Fetching an Email and Marking It as Read
``` py
>>> rawMessages = imapObj.fetch(UIDs, ['BODY[]'])
>>> import pprint
>>> pprint.pprint(rawMessages)
{40040: {'BODY[]': 'Delivered-To: my_email_address@example.com\r\n'
                   'Received: by 10.76.71.167 with SMTP id '
--snip--
                   '\r\n'
                   '------=_Part_6000970_707736290.1404819487066--\r\n',
         'SEQ': 5430}}
```
When you selected a folder to search through, you called select_folder() with the **readonly=True** keyword argument. Doing this prevents you from accidentally deleting an email—but it also means that emails will not get marked as read if you fetch them with the **fetch()** method. If you do want emails to be marked as read when you fetch them, you’ll need to pass **readonly=False** to **select_folder()**. If the selected folder is already in read-only mode, you can reselect the current folder with another call to **select_folder()**, this time with the** readonly=False** keyword argument:
``` py
>>> imapObj.select_folder('INBOX', readonly=False)
```

#### Getting Email Addresses from a Raw Message
The raw messages returned from the fetch() method still aren’t very useful to people who just want to read their email. The pyzmail module parses these raw messages and returns them as PyzMessage objects, which make the subject, body, “To” field, “From” field, and other sections of the email easily accessible to your Python code.
``` py
>>> import pyzmail
>>> message = pyzmail.PyzMessage.factory(rawMessages[40041][b'BODY[]'])
```
The **get_subject()** method returns the subject as a simple string value. The **get_addresses()** method returns a list of addresses for the field you pass it. For example, the method calls might look like this:
``` py
>>> message.get_subject()
'Hello!'
>>> message.get_addresses('from')
[('Edward Snowden', 'esnowden@nsa.gov')]
>>> message.get_addresses('to')
[('Jane Doe', 'my_email_address@example.com')]
>>> message.get_addresses('cc')
[]
>>> message.get_addresses('bcc')
[]
```

#### Getting the Body from a Raw Message
Emails can be sent as plaintext, HTML, or both. Plaintext emails contain only text, while HTML emails can have colors, fonts, images, and other features that make the email message look like a small web page. If an email is only plaintext, its PyzMessage object will have its **html_part attributes** set to None. Likewise, if an email is only HTML, its PyzMessage object will have its t**ext_part attribute** set to None.

Otherwise, the text_part or html_part value will have a **get_payload()** method that returns the email’s body as a value of the bytes data type. (The bytes data type is beyond the scope of this book.) But this still isn’t a string value that we can use. Ugh! The last step is to call the **decode()** method on the bytes value returned by **get_payload()**. The **decode()** method takes one argument: the message’s character encoding, stored in the **text_part.charset** or **html_part.charset** attribute. This, finally, will return the string of the email’s body.
![[Pasted image 95.png]]

#### Deleting Emails
To delete emails, pass a list of message UIDs to the IMAPClient object’s **delete_messages()** method. This marks the emails with the \Deleted flag. Calling the **expunge()** method permanently deletes all emails with the /Deleted flag in the currently selected folder. Consider the following interactive shell example:
![[Pasted image 96.png]]

#### Disconnecting from the IMAP Server
When your program has finished retrieving or deleting emails, simply call the IMAPClient’s **logout()** method to disconnect from the IMAP server.
``` py
imapObj.logout()
```