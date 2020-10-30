- when validating information, list them down first
- sample:
- ![](Attachments/Pasted%20image%20365.png)
	- p: interest rates drop
	- q: housing market will improve
	- r: federal discount rates will drop
	- =====
	- p ⇒ q | if interest drates drop, house market will improve
	- r ∨ ¬ q | either federal discount rates will drop or house market will not improve =(inclusive OR)
	- p | interest rates drop
	- q | housing markets improve 
	- (p ⇒ q ) ∧ (r ∨ ¬ q) ∧ p ⇒ r
	- r | federal discount rates drop
- argument is a wff of the form p1 ∧ p2 ∧ p3 ⇒ c
	- statements in the left side are called premises or hypotheses
	- c is the conclusion
- **valid argument if it is a tautology**
	- conjunction is true when all statements are true
	- conditional is false only when the premise is true but the  conclusion is false
	- only invalid when all premises true however conclusion is false
- **how to prove that an argument is a tautology?**
#### Truth Table
1. translate premises and conclusion into symbolic form
2. write truth table for premises and the conclusion
3. check if there is a row where all premises is true but conclusion is false, if such a row exists, argument invalid. otherwise, it is valid.
- example
	- ![](Attachments/Pasted%20image%20366.png)
	- s: Mary studies hard
	- n: Mary is a nerd
	- p: Mary parties
	- s ⇒ n
	- n ⇒ ¬ p
	- ∴ ¬ p
- |**s**|n|p|#¬ p|**s ⇒ n**|**n ⇒ ¬ p**|
|--|--|--|:--:|:--:|:--:|
|T|T|T|F|T|F|
|**T**|T|F|**T**|**T**|**T**|
|T|F|T|F|F|T|
|T|F|F|T|F|F|
|F|T|T|F|T|F|
|F|T|F|T|T|T|
|F|F|T|F|T|T|
|F|F|F|T|T|T|
- **only second row's premises and conclusion is true**
- argument valid.
- Mary does not party.

#### Formal Logic
- example: A ∨ (A ∨ B) ⇒ (A ∨ ¬ B)
	- assume that the hypothesis is valid
	- use a series of equivalences to deduce that the conlusion is valid
- ![](Attachments/Pasted%20image%20367.png)

#### Rules of Inference
- ![](Attachments/Pasted%20image%20368.png)
- a valid argument can still lead to an incorrect conclusion if one or more of its premises are false
- example
- ![](Attachments/Pasted%20image%20369.png)
- p: i was reading the newspaper in the kitchen
- q: my glasses are on the kitchen table
- r: i saw my glasses at breakfast
- s: i was reading the newspaper in the living room
- t: glasses are at the coffee table
- ∴ t
- =====
- p ⇒ q
- q ⇒ r
- ¬ r
- s ∨ p
- s ⇒ t
- p ⇒ r, transitivity
- ¬ p, modus tollens
- s, eliminiation
- t, modus ponens

#### Exercises
![](Attachments/Pasted%20image%20373.png)
- ¬ p ∨ r
- ¬ q ∨ r
- (¬ p ∨ r) ∧ (¬ q ∨ r)
- (¬ p ∧ ¬ q) ∨ r
- ¬ (p ∨ q ) ∨ r
- (p ∨ r) ⇒ r
- ![](Attachments/Pasted%20image%20374.png)
- ¬ p ∨ s
- ¬ q ∨ s
- ¬ r ∨ s
- p ∨ q ∨ r
- (¬ p ∨ s)∧ (¬ q ∨ s)∧ (¬ r ∨ s)
- (¬ p ∧ ¬ q ∧ ¬ r) ∨ s
- ¬ ( p ∨  q ∨   r) ∨ s
- c ∨ s
- s 
- ![](Attachments/Pasted%20image%20379.png)
- (p ∧  q) ∨ (p ∧ r)
- s
- - ![](Attachments/Pasted%20image%20378.png)