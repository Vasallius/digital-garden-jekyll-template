![](Attachments/Pasted%20image%2020200923171109.png)

|#|Statement|Reason|
|--|:--:|:--:|
|1|**∀x (P(x) ⇒ Q(x))**|premise|
|2|**∀x (Q(x) ⇒ R(x))**|premise|
|3|**P(a)**|premise|
|4|P(a) ⇒ Q(a)|1, universal instantiation
|5|Q(a) ⇒ R(a)|2, universal instantiation|
|6|P(a) ⇒ R(a)|4,5 transitivity|
|7|R(a)|3,6 modus ponens|

![](Attachments/Pasted%20image%2020200923171951.png)

|#|Statement|Reason|
|--|:--:|:--:|
|1|**∀x (P(x) ∨  Q(x))**|premise|
|2|**Q(a) ⇒ R(a)**|premise|
|3|Let a be chosen arbitrarily|assumption|
|4|P(a) ∨ Q(a)|1, universal instantiation|
|5|¬ P(a) ⇒ Q(a)|4, implication law|
|6|¬ P(a) ⇒ R(a)|2,5 transitivity|

![](Attachments/Pasted%20image%2020200923172412.png)

|#|Statement|Reason|
|--|:--:|:--:|
|1|**∀x (P(x) ∧  Q(x))**|premise|
|2|Let a be chosen arbitrarily|assumption|
|3|P(a) ∧ Q(a)|1, universal instantiation|
|4|P(a)|3, specialization|
|5|∀x P(x)|4, universal generalization|

![](Attachments/Pasted%20image%2020200923172652.png)

|#|Statement|Reason|
|--|:--:|:--:|
|1|**∀x (P(x) ∨   Q(x))**|premise|
|2|**∀x ¬ Q(x)**|premise|
|3|let a be chosen arbitrarily|assumption|
|4|P(a) ∨   Q(a)|1, universal instantiation|
|5|¬ Q(a)|2, universal instantiaition|
|6|P(a)|4,5 elimination|
|7|∀x P(x) |6, universal generalization|