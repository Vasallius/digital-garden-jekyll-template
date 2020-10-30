- Reference
	- link: [[🌳 Sending Email]]

---

Gmail organizes emails that are replies to each other into conversation threads. When you log in to Gmail in your web browser or through an app, you’re really looking at email threads rather than individual emails (even if the thread has only one email in it).

EZGmail has **GmailThread** and **GmailMessage** objects to represent conversation threads and individual emails, respectively. A GmailThread object has a messages attribute that holds a list of GmailMessage objects. The `unread()` function returns a list of GmailThread objects for all unread emails, which can then be passed to `ezgmail.summary()` to print a summary of the conversation threads in that list:

1. To view unread messages.
``` py
unreadThreads = ezgmail.unread() # List of GmailThread objects.
ezgmail.summary(unreadThreads)
```

2. Each thread has a list of messages (replies), in the case of a no-reply email, the messages list would only contain one value, thus only accessible by index 0.
``` py
str(unreadThreads[0].messages[0])
```
3. Each message on the message list thave different values we can access.

``` py
unreadThreads[0].messages[0].subject
unreadThreads[0].messages[0].body
unreadThreads[0].messages[0].timestamp
unreadThreads[0].messages[0].sender	
unreadThreads[0].messages[0].recipient
```