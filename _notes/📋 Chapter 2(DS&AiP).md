#### Table of Contents
- 2.4 Inheritance
	- 2.4.1 Extending the CreditCard Class
	- 2.4.2 Hierarchy of Numeric Progressions
	- 2.4.3 Abstract Base Classes
- 2.5 Namespaces and Object Orientation
	- 2.5.1 Instances and Class Namespaces
	- 2.5.2 Name Resolution and Dynamic Dispatch
- 2.6 Shallow and Deep Copying 
---

## 2.4 Inheritance
- hierarchical design and organization
![[Pasted image 241.png]]
- existing class is called *base class or parent class or super-class*
- newly defined class is called *subclass or childclass*
	- either **specialize** by overriding an existing method
	- **extend** and provide new methods
- Python's Exception Hierarchy
	- Base exception is the root of the entire hierarchy 
	![[Pasted image 242.png]]
	#### 2.4.1 Extending the CreditCard Class
	- ![[Pasted image 243.png]]
	- syntax of extending is:
		```py
		class SubClass(ParentClass)
		```
	- `super()` calls on the inherited constructor to perform the initailization
		```py
		super().__init__()
		```
	- protected variables (variables that start with _ ) can be accessed by the **SubClass**
	 ```py
	_ = protected
	__ = private
	 ```
	 #### 2.4.2 Hierarchy of Numeric Progressions
	 - numeric progression is a sequence where it relies on previous numbers
	 - ![[Pasted image 244.png]]
	 #### 2.4.3 Abstract Base Classes
	- abstract base class
	- **collections modules**
		- collections.Sequence has abstract base classes
	- @abstractmethod decorator
## 2.5 Namespaces and Object Orientation
- a **namespace** manages all of the identifiers in the scope
	#### 2.5.1 Instance and Class Namespaces
	- **instance namespace** - manages attributes specific to an individual object
	- **class namespace** - manage members that are to be shared by all instances of a class
	- it is possible to nest classes
	- use '\_\_slots\_\_' and asign to a sequence of strings to serve as name for instance variables
	#### 2.5.2 Name Resolution and Dynamic Dispatch
	- python uses **dynamic dispatch** or **dynamic binding**

## 2.6 Shallow and Deep Copying
- we can create a **copy** of a list by using 
	```py
	list2 = list(list1)
	```
- this is known as **shallow copying**
	- this list however, only represents a sequence of references to the original list
- **deep copying**
	 ![[Pasted image 245.png]]
- **Python's Copy Module**
	```py
	palette = copy.deepcopy(warmtones)
	```
	- creates a deep copy of the warmtones list


---

- tags
	- year: #year2020
	- month: #August
	- associations: [[📋 Data Structures and Algorithms in Python]]
	- resource-type: #notes 
	