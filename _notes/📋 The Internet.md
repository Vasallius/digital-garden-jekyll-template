<iframe width="660" height="415" src="https://www.youtube.com/embed/AEaKrq3SpW8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

- local area network (LAN)
- wide area network
	- by Internet Service Provider (ISP)
- packet -> backbone -> youtube server
	- 4 - 2 - 4 = 10 hops
- traceroute program
- how does a packet actually get there?
	- packets conform to IP (internet protocol)
	- ![[Attachments/Pasted image 20201013141647.png]]
	- built on top of IP (User Datagram Protocol - UDP)
	- ![[Attachments/Pasted image 20201013141721.png]]
		- checksum = check for correction
		- no mechanisms to fix the data
	- ![[Attachments/Pasted image 20201013141725.png]]
		- applications ask for a different port number
		- 3478 - Skype
	- ![[Attachments/Pasted image 20201013141849.png]]
	- **Transmission Control Protocol**
		- TCP/IP
		- has a destination port and checksum
		- also contains other features
			- sequential numbers
				- packet 15 , packet 16
				- allow to receive packets in correct order
			- ACK (sent back an acknowledgement)
			- if no acknowledgement, send again
				- duplicate packets can be discarded if ever it arrives but ack is late
			- can send multiple packets
				- ![[Attachments/Pasted image 20201013142245.png]]
			- rate of acknowledgement
				- can indicate network congestion
				- can throttle transmission
	- it doubles the number of messages (sometimes not worth the robustness)
- Domain Name System (DNS)
	- maps the website to lookup address
	- youtube.com
	- TLD - top level domains
		- .com . gov
	- Second Level Domains
		- google.com
	- Sub-domain
		- drive.google.com
- Data Link Layer
	- Application Layer
	- Presentation Layer
	- Session Layer
	- Transport Layer
	- Network Layer
	- Physical Layer
	- ![[Attachments/Pasted image 20201013143406.png]]

Related: [[📋 Computer Networks]]
