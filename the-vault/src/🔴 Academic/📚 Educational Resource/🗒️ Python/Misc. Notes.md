---
title: Misc. Notes
created: 2023-11-20T04:46
updated: 2023-11-28T10:49
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/🗒️-python/🔖/misc-notes
  - 🔴-academic/📚-educational-resource/format/website
  - 🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/python
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::🗒️ Python::Misc. Notes
---

# Misc. Notes

---

> [!ABSTRACT]+ 
> Miscellaneous scratch notes pertaining to [Python](https://www.python.org/). [@WelcomePythonOrg2023]
> 
> These notes are primarily structured in a Q&A format, making it easy to follow and learn. Corresponding Anki flashcards are available, enabling efficient revision and reinforcement of the concepts.

---

> [!INFO]+ 
> **Previous Note(s):**
> 

---

﹇<br>
Is there an equivalent of `return 0` like in C++? Or some way to indicate to the OS that the script ran successfully?

#card 

In Python, successfully completing a script without encountering unhandled exceptions effectively indicates to the operating system that the program ended successfully.

However, if you want to explicitly send an exit status code, you can use `sys.exit()`. For example, `sys.exit(0)` means a clean, no-error exit. Here's how you can use it:

```python
import sys

def main():
    """Main function of the program."""
    print("Hello World!")
    sys.exit(0)


if __name__ == '__main__':
    main()
```

In this code, if the main() function runs without encountering any issues, the script will exit with status code 0, indicating the script ran successfully. If any error occurs, then the script will exit with a code different from 0, indicating an error. 

However, manually invoking `sys.exit(0)` isn't typically necessary unless you need to indicate a problem to outside scripts or systems. Simply allowing the script to run to completion results in a successful "exit status".

⌂
<br>﹈<br>^1701033794332

Manually invoking {1:`sys.exit(0)`} {2:isn't typically necessary} unless you {3:need to indicate a problem to outside scripts or systems}. Simply allowing the script {4:to run to completion} results in {a successful "exit status"}.
^1701033794342

﹇<br>
Is the following code valid?

```python
main:
    """Main function of the program."""
    print("Hello World!")

if __name__ == '__main__' -> int:
    main()
    return 0
```

#card 

No, there are a couple of issues with the code. 

The corrections are made as follows:
- Python doesn't support `return` type annotations for scripts, _only_ for functions.
- The declaration of the `main` function is incorrect. It was declared as `main:`

```python
import sys

def main():
    """Main function of the program."""
    print("Hello World!")
    sys.exit(0)


if __name__ == '__main__':
    main()
```

⌂
<br>﹈<br>^1701155145777

﹇<br>
Conventionally, when trying to mimic C++, does it make sense to put `sys.exit(0)` at the end of the `if __name__ == 'main':` block, or would it be better to put it at the end of the `main()` function?

#card

In Python, it’s not necessary to use `sys.exit(0)` at the end of your script. When a Python script finishes executing, it exits back to the command prompt, and the exit status is 0 by default, which indicates successful execution.

However, if you want to mimic C++ and explicitly indicate successful execution, you can put `sys.exit(0)` at the end of your `main()` function or at the end of the `if __name__ == '__main__':` block. Both are acceptable, and the choice depends on your personal preference or your project’s coding style guidelines.

Here’s how you can do it:

```python
import sys

def main():
    print("Hello, World!")
    sys.exit(0)

if __name__ == '__main__':
    main()
```

or

```python
import sys

def main():
    print("Hello, World!")

if __name__ == '__main__':
    main()
    sys.exit(0)
```

In both cases, `sys.exit(0)` will be called after `main()` finishes executing. If there’s an error in your `main()` function that causes it to exit prematurely, `sys.exit(0)` won’t be called, and the script will exit with a non-zero status, indicating an error, which is the same behavior as in C++.

⌂
<br>﹈<br>^1701197158323

---

## :EiZoteroItem: Bibliography

\[1\]
“Welcome to Python.org,” _Python.org_, Nov. 15, 2023. Available: [https://www.python.org/](https://www.python.org/). [Accessed: Nov. 20, 2023]

---

> [!INFO]+
> **Next Note(s):**

---
