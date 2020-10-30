<iframe width="660" height="415" src="https://www.youtube.com/embed/jhXCTbFnK8o" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

- Defense in Depth
	- layers of various security mechanisms
- Cryptography
	- crypto + graphy = secret writing
	- we use ciphers
		- an algorithm that converts plain text into ciphertext
		- means nothing unless you have a key
	- encryption
		- process of making text secret
		- decryption, reverse process
		- Caesar Cipher
			-  Julius Caesar - shifted letters forward by 3 letters
				- A became D
				- brutus became euxwxv
			- ![[Attachments/Pasted image 20201019095337.png]]
				- drawback: letter frequency
				- the most frequent letter to appear is probably E
- Cryptanalyst
	- can work backwards to know the cipher
		- breaking of the substitution cipher that led to the execution of Mary, Queen of Scotts
- Permutation Ciphers
	- Columnar Transposition Cipher
		- ![[Attachments/Pasted image 20201019095624.png]]
		- ![[Attachments/Pasted image 20201019095642.png]]
		- the size of the grid is the key
- Encryption Machines
	- German Enigma
		- used by Nazis to encrypt their wartime communications
		- ![[Attachments/Pasted image 20201019095915.png]]
		- ![[Attachments/Pasted image 20201019095957.png]]
- Data Encryption Standard
	- binary keys
	- 56 bits long, $$2^56$$ combinations
- Advanced Encryotion Standard
	- 128, 192, or 256 bits
	- ![[Attachments/Pasted image 20201019100253.png]]
- Key Exchange
	- computers agree on a key without sending one
	- one-way functions
	- analogy: easy to mix paint colors together but hard to figure out what colors were used to produce that color
	- Diffie-Hellman Key Exchange
		- modular exponentiation
		- base and modulus are public values
		- ![[Attachments/Pasted image 20201019100856.png]]
- Symmetric Encryption
	- key is the same for both side
- Asymmetric Encryption
	- two different keys, public and private
- RSA	
- if you see a lock on the website
	- computer has used public key to verify the server
	- key exchange to establish a secret temporary key
	- symmetric encryption to protect all back and forth communication
	


---

- tags
	- year: #year2020 
	- month: #October 
	- associations: [[📋 CS 10 - Intro to Computing]][[🌱 M1 - History of Computer Science]]
	- resource-type: #notes 

 