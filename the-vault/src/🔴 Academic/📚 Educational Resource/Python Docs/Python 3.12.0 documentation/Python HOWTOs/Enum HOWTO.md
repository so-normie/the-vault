---
title: Enum Howto
created: 2023-10-31T17:48
updated: 2023-11-26T10:55
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/python-docs/🔖/python-3-12-0-documentation/python-howtos/enum-howto
  - 🔴-academic/📚-educational-resource/format/internet
  - 🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/python
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::Python Docs::Python 3.12.0 documentation::Python HOWTOs::Enum HOWTO
---

# Enum HOWTO

---

> [!ABSTRACT]+
> Notes pertaining to [Enum HOWTO — Python 3.12.0 documentation](https://docs.python.org/3.12/howto/enum.html) [@EnumHOWTO].

---


> [!INFO]+ 
> **Previous Note(s)**:
> 

---

In the context of Python, {1:`Enum`s} is short for {2:enumermations}.
^1700485874248

An {1:[`Enum`](https://docs.python.org/3.12/library/enum.html#enum.Enum "enum.Enum")} is a {2:set of symbolic names bound to unique values}. They are similar to {3:global variables}, but they offer {4:a more useful [`repr()`](https://docs.python.org/3.12/library/functions.html#repr "repr"), grouping, type-safety, and a few other features}.
^1700485569660

﹇<br>
In the context of Enums in Python, what are symbolic names?

#card 

In the context of Python enumerations (Enums), **symbolic names** are the identifiers that represent the individual members of an Enum. They are human-readable labels for the values an Enum can take.

For example, in the following code… 

```python
from enum import Enum
class Weekday(Enum):
    MONDAY = 1
    TUESDAY = 2
    WEDNESDAY = 3
    THURSDAY = 4
    FRIDAY = 5
    SATURDAY = 6
    SUNDAY = 7
```

`Weekday` is an Enum, and `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, and `SUNDAY` are the symbolic names. Each of these symbolic names is bound to a unique integer value (1 through 7).

Symbolic names provide a way to refer to these values in a way that is easier to read and understand than using the raw values (the integers 1-7). This can make your code more self-explanatory and maintainable.

For instance, if you have a variable `today` that represents the current day of the week, it’s much clearer to write `today = Weekday.MONDAY` than `today = 1`. The symbolic name `Weekday.MONDAY` immediately tells you that the variable represents Monday, whereas the value `1` does not convey this information unless you already know how the values are assigned.

Here’s how you can use the symbolic names:

```python
today = Weekday.MONDAY
if today == Weekday.MONDAY:
    print("Today is Monday.")
```

In this code, `Weekday.MONDAY` is a symbolic name representing the value `1`. The `if` statement checks whether `today` is `Weekday.MONDAY`, i.e., whether `today` is Monday. If it is, it prints “Today is Monday.”

So, symbolic names in Enums help improve the readability and understandability of your code. They allow you to write code that is easier to read, understand, and maintain.

⌂
<br>﹈<br>^1700485874258

﹇<br>
In the following code snippet, could you please explain what is happening? Specifically, I’m interested in the portion `Weekday(Enum)`.

From my understanding, whatever you put in the parentheses when defining `Weekday` is an argument or parameter of a function. So, in this case, is `Enum` an argument of a function? Please help me make sense of this

#card 

In the code snippet you provided, `Enum` is not an argument of a function. Instead, it’s a base class that `Weekday` is inheriting from. This is a concept in object-oriented programming known as **inheritance**.

In Python, when you define a class (in this case, `Weekday`), you can specify a base class (or multiple base classes) by putting them in parentheses after the class name. Here, `Enum` is the base class for `Weekday`. This means that `Weekday` inherits all the attributes and methods of `Enum`.

```python
from enum import Enum
class Weekday(Enum):  # Weekday is a class that inherits from Enum
    MONDAY = 1
    TUESDAY = 2
    WEDNESDAY = 3
    THURSDAY = 4
    FRIDAY = 5
    SATURDAY = 6
    SUNDAY = 7
```

By inheriting from `Enum`, `Weekday` becomes an enumeration itself, and it can have several unique members (`MONDAY`, `TUESDAY`, etc.). Each of these members is an instance of `Weekday`, and they are distinct and cannot be changed after they’re created.

So, in this context, `Enum` is not an argument to a function. It’s a base class that provides the functionality for creating enumerations in Python. The `Weekday` class is a specific enumeration that you’ve defined, which has seven members representing the days of the week. Each member is associated with a unique integer value.

⌂
<br>﹈<br>^1700489315777

---

## :EiZoteroItem: Bibliography

\[1\]
“Enum HOWTO,” _Python documentation_. Available: [https://docs.python.org/3/howto/enum.html](https://docs.python.org/3/howto/enum.html). [Accessed: Nov. 20, 2023]

---

> [!info]+
> **Next Note(s):**

---
