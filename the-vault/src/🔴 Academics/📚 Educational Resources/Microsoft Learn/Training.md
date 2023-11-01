---
created: 2023-10-07 15:19
updated: 2023-10-31T14:46
---

---
author: 
publisher: 
published: 
tags: [🔴-academics/📚-educational-resources/discipline/computer-science/technology/state-tool, 🔴-academics/📚-educational-resources/name/state-tool, study-note] 
cards-deck: Default::Computer Science
---

# Microsoft Learn

## Training

### Write your first code using C# Code

#### (Unit 1 of 7) Introduction

What type of applications does C# allow ou to build? #card 
- Business applications to capture, analyze, and process data
- Dynamic web applications that can be accessed from a web browser
- Games, both 2D and 3D
- Financial and scientific applications
- Cloud-based applications
- Mobile applications

#### (Unit 2 of 7) Exercise - Write your first code

##### Write your first line of code

##### Enter your code into the .NET Editor

##### Run your first code

##### Observe your results

##### What to do if you get an error message

Is C# a case-sensitive language? #card 
Yes, the C# compiler considers the words `console` and `Console` to be different as the words `cat` and `dog`

What will happen is I try to execute the following expression?
```csharp
Console.WriteLine('HelloWord!');
```
#card 
You will get the following error message…
```
(1,19): error CS1012: Too many characters in character literal
```

##### Display a new message

How to comment a line in C#? #card 
Use two forward slashes `//`.

##### The difference between Console.Write and Console.WriteLine

What is the different between `Console.Write()` and `Console.WriteLine()`? #card 
- `Console.WriteLine()` prints the entire message to the output console and then adds a line feed similar to how to create a new line of text by pressing <kbd>Enter</kbd> or <kbd>Return</kbd>.
- `Console.Write` does the exact same thing but does not add a line feed.

#### (Unit 3 of 7) Learn how it works

##### What is a programming language?

##### What is compilation?

##### What is syntax?

What is the rules for writing C# code called? #card-reverse 
syntax

##### How did your code work?

What is a **literal string** in C#? #card 
A phrase surrounded by double-quotation marks in your C# code.

How does the following code work?
```csharp
Console.WriteLine("Hello World!");
```
#card
- The `Console` part is called a <span class="spoiler">**class**</span>. 
	- <span class="spoiler">Classes "own" methods; or you could say that methods live inside of a class.</span>
	- <span class="spoiler">To visit the method, you must know which class it's in.</span>
	- <span class="spoiler">For now, think of a class as a way to represent an object.</span>
		- <span class="spoiler">In this case, all of the methods that operate on your output console are defined inside of the `Console` class.</span>
- There's also a dot (or period) that separates the class name `Console` and the method name `WriteLine()`.
	- <span class="spoiler">The period is the _member access operator_.</span>
	- <span class="spoiler">In other words, the dot is how you "navigate" from the class to one of its methods.</span>
- The `WriteLine()` part is called a <span class="spoiler">**method**.</span>
	- <span class="spoiler">You can always spot a method because it has a set of parentheses after it.</span>
	- <span class="spoiler">Each method has one job. The `WriteLine()` method's job is to write a line of data to the output console. The data that's printed is sent in between the opening and closing parenthesis as an input parameter.</span>
	- <span class="spoiler">Some methods need input parameters, while others don't.</span>
	- <span class="spoiler">But if you want to invoke a method, you must always use the parentheses after the method's name. The parentheses are known as the _method invocation operator_.</span>
- Finally, the semicolon is the <span class="spoiler">_end of statement operator_.</span>
	- <span class="spoiler">A **statement** is a complete instruction in C#. The semicolon tells the compiler that you've finished entering the command.</span>


##### Understand the flow of execution

Do some instructions require the CPU to wait before it can continue? #card 
Yes.

Can some instructions change the flow of execution? #card 
Yes.

##### Check your knowledge

##### Next unit: Complete the challenge

#### (Unit 4 of 7) Complete the challenge

##### Challenge: Write code in the .NET Editor to display two messages


#### (Unit 5 of 7) Review the solution
#### (Unit 6 of 7) Knowledge check
#### (Unit 7 of 7) Summary

### Store and retrieve data using literal and variable values in C#

#### [Introduction](https://learn.microsoft.com/en-us/training/modules/csharp-literals-variables/1-introduction/?ns-enrollment-type=learningpath&ns-enrollment-id=learn.wwl.get-started-c-sharp-part-1)

What are hard-coded values? #card 
Values that are constant and unchanged throughout the execution of the program.

#### [Exercise - Print literal values](https://learn.microsoft.com/en-us/training/modules/csharp-literals-variables/2-exercise-literal-values/?ns-enrollment-type=learningpath&ns-enrollment-id=learn.wwl.get-started-c-sharp-part-1)1

##### What is a literal value?

What is a literal value? #card-reverse 
A constant value that never changes.

##### Exercise - Print different literal data types

###### Use character literals

What is a `char` in C#? #card 
- Short for *character*
- A single alphanumeric character

What type of quotes create a character literal? #card 
single quotes

What type of quotes create a `string` data type? #card 
double quotes

###### Use integer literals

###### Use floating-point literals

What is a floating-point number? #card 
A number that contains a decimal.

How many data types does C# support to represent decimal numbers? #card 
Three types…
- `float`
- `double`
- `decimal`

How many degrees of precisions does each data type for representing decimal numbers have? #card

| Float Type | Precision     |
| ---------- | ------------- |
| float      | ~6-9 digits   |
| double     | ~15-17 digits |
| decimal    | 28-29 digits  |

###### Use Boolean literals

###### Why emphasize data types?

###### Data types define capabilities

##### Recap

#### [Declare variables](https://learn.microsoft.com/en-us/training/modules/csharp-literals-variables/3-declaring-variables/?ns-enrollment-type=learningpath&ns-enrollment-id=learn.wwl.get-started-c-sharp-part-1)
  
#### [Exercise - Setting and getting values from variables](https://learn.microsoft.com/en-us/training/modules/csharp-literals-variables/4-exercise-variables/?ns-enrollment-type=learningpath&ns-enrollment-id=learn.wwl.get-started-c-sharp-part-1)1
  
#### [Declare implicitly typed local variables](https://learn.microsoft.com/en-us/training/modules/csharp-literals-variables/5-implicitly-typed-local-variables/?ns-enrollment-type=learningpath&ns-enrollment-id=learn.wwl.get-started-c-sharp-part-1)
  
#### [Complete the challenge](https://learn.microsoft.com/en-us/training/modules/csharp-literals-variables/6-challenge/?ns-enrollment-type=learningpath&ns-enrollment-id=learn.wwl.get-started-c-sharp-part-1)
  
#### [Review the solution](https://learn.microsoft.com/en-us/training/modules/csharp-literals-variables/7-solution/?ns-enrollment-type=learningpath&ns-enrollment-id=learn.wwl.get-started-c-sharp-part-1)
  
#### [Knowledge check](https://learn.microsoft.com/en-us/training/modules/csharp-literals-variables/8-knowledge-check/?ns-enrollment-type=learningpath&ns-enrollment-id=learn.wwl.get-started-c-sharp-part-1)
  
#### [Summary](https://learn.microsoft.com/en-us/training/modules/csharp-literals-variables/9-summary/?ns-enrollment-type=learningpath&ns-enrollment-id=learn.wwl.get-started-c-sharp-part-1)
