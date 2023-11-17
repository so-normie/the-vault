---
title: Misc. Notes
created: 2023-11-14T14:30
updated: 2023-11-16T15:46
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/structy/0-introduction/
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::PragmatiCoders::Misc. Notes
icon: BoBxsMessageSquareDots
---

# Misc. Notes

---

> [!abstract]+ 
> 

---

> [!info]+ 
> **Previous Note(s):**
> - 

---

﹇<br>
What is an **enum** in Python?

#card #🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/python 

An **enum** is a special type of data structure in Python that allows you to define a set of named constants.

⌂
<br>﹈<br>^1700006314256

﹇<br>
Why use enums in Python?

#card #🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/python 

Enums can make your Python code more readable, maintainable, and error-resistant.

⌂
<br>﹈<br>^1700006314286

﹇<br>
How do you define an enum in Python 3.10 or later?

#card #🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/python 

You use the `enum` module and subclass the `Enum` class to create your own enums.

For example…
```python
from enum import Enum
```

⌂
<br>﹈<br>^1700006314297

﹇<br>
How do you access members of an enum?

#card #🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/python 

You use the dot notation to access members of an enum.

⌂
<br>﹈<br>^1700006314306

﹇<br>
In Python, how do you iterate over the members of an enum?

#card #🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/python 

You use a for loop to iterate over the members of an enum.

⌂
<br>﹈<br>^1700006314314

﹇<br>
How can you use enums in switch statements?

#card #🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/python 

You can use enums in switch statements to match different cases.

⌂
<br>﹈<br>^1700006314319

﹇<br>
Give an example of how to define an enum in Python 3.10 or later.

#card #🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/python 


```python
from enum import Enum

class Color(Enum):
    RED = 1
    GREEN = 2
    BLUE = 3
```

⌂
<br>﹈<br>^1700006314327

﹇<br>
Give an example of how to access a member of an enum.

#card #🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/python 

```python
color = Color.RED
print(color)
```

⌂
<br>﹈<br>^1700006314333

﹇<br>
Give an example of how to iterate over the members of an enum.

#card #🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/python 

```python
for member in Color:
    print(member)
```

⌂
<br>﹈<br>^1700006314338

﹇<br>
Give an example of how to use an enum in a switch statement.

#card #🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/python 

```python
def get_color_name(color):
    match color:
        case Color.RED:
            return "Red"
        case Color.GREEN:
            return "Green"
        case Color.BLUE:
            return "Blue"
```

⌂
<br>﹈<br>^1700006314346

﹇<br>
What does the `+`, `-`, `#`, and `~` symbols before an attribute and operation in name in a class

#card 

The `+`, `-`, `#` and `~` symbols before an attribute and operation name in a class denote the visibility of the attribute and operation.

- `+` denotes public attributes or operations
- `-` denotes private attributes or operations
- `#` denotes protected attributes or operations
- `~` denotes package attributes or operations

⌂
<br>﹈<br>^1700012792711

{1:`+`} denotes {2:public} attributes or operations
^1700012792744

{1:`-`} denotes {2:private} attributes or operations
^1700012792751

{1:`#`} denotes {2:protected} attributes or operations
^1700012792760

{1:`~`} denotes {2:package} attributes or operations
^1700012792767

---

> [!INFO]+ 
> **Next Note(s)**:
> 

---


