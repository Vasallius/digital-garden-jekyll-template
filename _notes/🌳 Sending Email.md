- Reference
	- link: [[💻 Programming]]
	- book: Automate the Boring Stuff with Python

---

Al Sweigart wrote a python module called [[EZGmail module|EZGmail]], to be able to interact with emails and be able to send, receive, delete messages, and etc.
### Table of Contents:

What to do | How to do it
--|--
Enable the gmail api|[[Enabling the Gmail API]]
Send email|[[Sending Mail from a Gmail Account]]
Read mail|[[Reading Mail from a Gmail Account]]
Search mail|[[Searching Mail from a Gmail Account]]
Download attachments|[[Downloading Attachments from a Gmail Account]]

**SMTP**
Much as HTTP is the protocol used by computers to send web pages across the internet, Simple Mail Transfer Protocol (SMTP) is the protocol used for sending email. SMTP dictates how email messages should be formatted, encrypted, and relayed between mail servers and all the other details that your computer handles after you click Send. You don’t need to know these technical details, though, because Python’s smtplib module simplifies them into a few functions. We use the [[smtplib module]]
What to do | How to do it
--|--
Send email|[[Sending Email with SMTP]]
Retrieve email | [[Retrieving and Deleting Emails with IMAP]]
