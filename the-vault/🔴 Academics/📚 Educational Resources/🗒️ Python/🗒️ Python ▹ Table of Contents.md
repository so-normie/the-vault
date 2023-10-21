---
title: 🗒️ Python
authors:
  - Edmund Leibert III
tags:
  - 🔴-academics/📚-educational-resources/name/python
  - 🔴-academics/📚-educational-resources/discipline/computer-science/programming-language/python
  - study-note
cards-deck: Default::Computer Science
updated: 2023-10-21T13:18
created: 2023-10-12T21:14
---


#  🗒️ Python

---

## 🕸️ All Mention(s): 

---

## 🔙 Previous Note(s):

---

## 🗒️ Python

How do I check the version of Python’s pip?
#card-reverse 
```bash session
python -m pip --version
```
^1691878709908

What to do if my Python does not have `pip` installed? 
#card-reverse 
[If your Python environment does not have pip installed, there are 2 mechanisms to install pip supported directly by pip’s maintainers… `ensurepip` and `get-pip.py`](https://pip.pypa.io/en/stable/installation.html)
^1691878709919

In Python, how can you ensure that, if a script is run, it will start its point of execution inside a function called `main`? 
#card 
```python
main() -> int:
	return 0
if __name__ = "main":
	main()
```
^1691881861866

Is the following snippet valid in Python?
```python
if __name__ = "main":
	main()
```
#card 
No, the Python interpereter will return an erro when trying to parse this.
- This is because you are doing an assignment instead of a conditional check in the `if` statement
```bash
C:\Users\edmun\Projects\Repositories\terrorInterview\venv\Scripts\python.exe C:\Users\edmun\AppData\Roaming\JetBrains\PyCharm2023.2\scratches\python-main-function-template.py 
  File "C:\Users\edmun\AppData\Roaming\JetBrains\PyCharm2023.2\scratches\python-main-function-template.py", line 8
    if __name__ = "main":
       ^^^^^^^^^^^^^^^^^
SyntaxError: invalid syntax. Maybe you meant '==' or ':=' instead of '='?
Process finished with exit code 1
```
- If you’re intention is to start the execution of the script in the `main` function, if the script is being directly executed, then you should do the following...
```python
if __name__ == "__main__":
	main()
```
^1691881861871

Is the following script valid? 
```python
import sys
def red( x: int ) -> int:
    return x - 1
def main():
    print( red(3) )
    sys.exit(1)
if __name__ == "main":
    # Execute only if run as a script
    main()
```
#card 
While the following code is valid, it is **not** logically correct.
- In the line `if __name___ == "main":`, the `"main"` should be `"__main__"` if you desire to start the point of (relevant) execution in the `main()` function.
^1691881861876

How can I specify the data type of a variable in Python?
#card 
In Python, variables are dynamically typed, which means that their type is determined at runtime based on the value they are assigned. You don't need to declare a variable's type in advance, as you might in statically-typed languages like C++ or Java.
However, with the introduction of type hints (or type annotations) in Python 3.5 and later, you can provide hints about the type of a variable, which can be useful for documentation, static type checking, and other tools like linters.
Here's how you can specify the data type of a variable using type hints:
```python
name: str = "John"
age: int = 25
height: float = 5.9
friends: List[str] = ["Alice", "Bob"]
```
To use more complex types, you'll need to import them from the `typing` module:
```python
from typing import List, Dict, Union, Optional
numbers: List[int] = [1, 2, 3]
person: Dict[str, Union[str, int]] = {"name": "John", "age": 25}
maybe_number: Optional[int] = None  # This can be an int or None
```
Keep in mind that these type hints do not enforce types at runtime. They are just annotations that can be used by tools like `mypy` for static type checking. If you want type checking, you'll have to run a separate tool like `mypy` to analyze your code:
```bash
> mypy your_script.py
```
If there are type mismatches or violations, `mypy` will report them.
^1691883505631


What are some alternative to `mypy` to have static type checking in Python?
#card 
There are other static type checkers in the Python ecosystem.
- The [**PyCharm**](https://realpython.com/python-ides-code-editors-guide/#pycharm) editor comes with its own type checker included. If you are using PyCharm to write your Python code, it will be automatically type checked.
- Facebook has developed [**Pyre**](https://pyre-check.org/). One of its stated goals is to be fast and performant. While there are some differences, Pyre functions mostly similar to Mypy. See the [documentation](https://pyre-check.org/docs/overview.html) if you’re interested in trying out Pyre.
- Furthermore, Google has created [**Pytype**](https://github.com/google/pytype). This type checker also works mostly the same as Mypy. In addition to checking annotated code, Pytype has some support for running type checks on unannotated code and even adding annotations to code automatically. See the [quickstart](https://github.com/google/pytype/blob/master/docs/quickstart.md) document for more information.
^1691883505636

What is **Mypy** and what is its purpose?
#card 
Mypy is static type checker for Python.
^1691883505641

Regarding environments in the context of Python projects, what is the difference between **Poetry**, **Virtualenv**, **Pipenv**, and **Conda** ?
#card 
While they all have different workflows, they are all essentially package dependency managers for Python projects.
^1691884558397

What is the purpose of the module `ensurepip`?
#card 
Used to ensure that `pip` is installed in the current virtual environment.
	- If there is no virtual environment, or it can not be found/is not active, `pip` is then installed to the system site packages.
	- Can pass the `--upgrade` option to not only ensure that `pip`  is installed but it is currently on the latest version.
^1691884558405

What does the following command do?
```bash
> python -m ensurepip
```
#card 
Used to ensure that `pip` is installed in the current virtual environment.
	- If there is no virtual environment, or it can not be found/is not active, `pip` is then installed to the system site packages.
	- Can pass the `--upgrade` option to not only ensure that `pip`  is installed but it is currently on the latest version.
^1691884558411

Can I download and install Python, on a Windows machines, by just using **winget**?
#card 
While you *can* download and install Python, on Windows machines, using **winget**, it is **not** recommended.
- **winget** does not support having multiple installations of Python since it *mistakenly* recognizes that there is already an existing installation.
^1691996539972

On a Windows machine, how can I deactivate a Python virtual environment?
#card 
To deactivate a Python virtual environment in Windows, you can use the `deactivate` command in the command prompt or PowerShell. This command will deactivate the virtual environment and return you to the system’s default Python interpreter.
Here are the steps to deactivate a Python virtual environment in Windows:
1. Open the command prompt or PowerShell.
2. If you are currently in the virtual environment, you should see the name of the virtual environment in the command prompt or PowerShell, enclosed in parentheses. For example, `(myenv) C:\>`.
3. Type `deactivate` and press Enter.
4. The virtual environment will be deactivated, and you will be returned to the system’s default Python interpreter. The name of the virtual environment will no longer be displayed in the command prompt or PowerShell.

In PowerShell, how can I determine the *path* of which Python executable I am currently running?
#card-reverse  
You can run the following command…
```powershell
which python
```



---

## 🔜 Next Note(s):

---
