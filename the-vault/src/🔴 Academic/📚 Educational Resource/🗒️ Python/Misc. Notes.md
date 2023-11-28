---
created: 2023-11-20T04:46
updated: 2023-11-27T23:05
cards-deck: 🔴 Academic::📚 Educational Resource::🗒️ Python
---


﹇<br>
Is there an equivalent of `return 0` like in C++? Or some way to indicate to the OS that the script ran successfully?

#card 

In Python, successfully completing a script without encountering unhandled exceptions effectively indicates to the operating system that the program ended successfully.

However, if you want to explicitly send an exit status code, you can use `sys.exit()`. For example,` sys.exit(0)` means a clean, no-error exit. Here's how you can use it:

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
