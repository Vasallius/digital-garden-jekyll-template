<iframe width="660" height="415" src="https://www.youtube.com/embed/bPVaOlJ6ln0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# 📋 Cybersecurity

Cybersecurity to minimize harm in the virtual world.

Scope: 
- secrecy
	- ![[Attachments/Pasted image 20201016132112.png]]
	- stealing valuable information like credits cards
- integrity
	- ![[Attachments/Pasted image 20201016132132.png]]
	- hackers that pose as you and send smails
- availability
	- ![[Attachments/Pasted image 20201016132143.png]]
	- DoS attack
- Threat Model
	- who your enemy is
	- Attack Vector
	- ex.
		- roommate
		- sibling
	- **how a system is secured depends heavily on who it's up against**
	- specified in terms of technical capabilities
		- ![[Attachments/Pasted image 20201016132431.png]]
- Two main Security Questions
	- who are you
	- what should you have access to
- Authenticiation
	- **process where the computer understands who it's interacting with**
	- 3 types:
		- what you know
			- based on the knowledge of a secret that should only be known to the user and the computer	
				- username and password
			- brute force attack
				- try each possible combination
			- websites now require combination of different characters to make the number of combinations sky rocket
		- what you have
			- based on possession of a secret token
			- physical key lock
			- requires physical presence, makes it harder for remote attackers
		- what you are
			- based on you
			- biometiric authenticators
			- probabilistic
			- can't be reset
- all types of authentication have their own strengths and weaknesses
	- suggested two-factor authentication
- access control
	- once you have been authenticiated the system must know what you are able to access
	- Permissions or Access Control Lists (ACL)
		- read - see
		- write - modify
		- execute - run
- three levels of access
	- public
	- secret
	- top secret
	- **Bell-Lapuda Model**
	- rule of thumb 1:
		- people shouldn't be able to read up
		- secret can't read top secret
	- rule of thumb 2:
		- people shouldn't be able to write down
		- guarantees no leakage
	- other methods:
		- chinese wall method
		- biba model
- malware (malicious software)
	- how can we be sure that programs don't have a backdoor that let attackers in?
		- we can't.
- most security errors come from implementation error, to reduce implementation error, reduce implementation
![[Attachments/Pasted image 20201016133834.png]]
- Independent Verification and Validation
	- code is audited by a crowd of security-minded developers	
- isolation
	- what to do when the programs are actually compromised
	- sandbox method
		- give programs own blocks of memory that other programs can't touch
	- virtual machines

---

- tags
	- year: #year2020 
	- month: #October 
	- associations: [[📋 CS 10 - Intro to Computing]]
	- resource-type: #notes 

 