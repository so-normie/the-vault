---
tags: [educational-resource/learncpp-com, computer-science/programming-language/cpp, study-note] 
cards-deck: Default::Computer Science
---

# LearnCpp.com

## Chapter 1꞉ C++ Basics

### 1.1: [Statements and the structure of a program](https://www.learncpp.com/cpp-tutorial/statements-and-the-structure-of-a-program/)

-----
#### Statements

What is a **statement**? #card-reverse 
A type of instruction that causes the program to *perform some action*.
^1682908022587

What is the smallest independent unit of computation in the C++ language? #card 
A statement.
^1682908022608

What do most statements in C++ end with? #card 
a semicolon
^1682908022616

If I see a line that ends in a semicolon, it’s probably a… #card 
statement
^1682908022624

What is a trait of high level languages (e.g. C++) in regard to statements? #card 
A single statement may compile into many machine language instructions
^1682908022632

What are the different kinds of statements in C++? #card 
1. Declaration statements
2. Jump statements
3. Expression statements
4. Compound statements
5. Selection statements (conditionals)
6. Iteration statements (loops)
7. Try blocks
^1682908022639

What are selection statements also known as? #card-reverse 
conditionals
^1682908022646

What are iteration statements also known as? #card-reverse 
loops
^1682908022653

-----
#### Functions

What are statements typically grouped into? #card 
functions
^1682908022660

What are **functions** in C++? #card-reverse 
A collection of statements that get executed sequentially (in order, from top to bottom)
^1682908022667

What is the significance of the special function named **main**? #card 
> [!tip]+ Rule
> Every C++ program must have a special function named **main** (all lower case letters). When the program is run, the statements inside of _main_ are executed in sequential order.
^1682908022676

-----
#### Functions and the main function

What are statements typically grouped into? #card 
Units called functions.
^1682908022685

What is a **function**? #card 
A collection of statements that get executed sequentially (in order, from top to bottom)
^1682908022695

What must every C++ program have? #card 
> [!tip]
> Every C++ program must have a special function named **main** (all lower case letters).
> When the program is run, the statements inside of _main_ are executed in sequential order.
^1682908022702

-----
#### Dissecting Hello world!

In the following code, what is line 1?
```cpp
#include <iostream>
int main()
{
   std꞉꞉cout << "Hello world!";
   return 0;
}
```
#card 
- A special type of line called a **preprocessor directive**. 
	- This preprocessor directive indicates that we would like to use the contents of the iostream library, which is the part of the C++ standard library that allows us to read and write text from/to the console.
	- We need this line in order to use `std꞉꞉cout` on line 5. Excluding this line would result in a compile error on line 5, as the compiler wouldn’t otherwise know what `std꞉꞉cout` is.
^1682908022710


What does returning a value of 0 to the operating system mean? #card 
Means “everything went okay!”
^1682908022718

-----
#### Syntax and syntax errors

What is a **syntax**? #card-reverse 
The rules that govern how sentences are constructed in a language.
^1682908022726


What is a syntax error?  #card-reverse 
- The compiler is responsible for making sure your program follows the basic syntax of the C++ language.
- If you violate a rule, the compiler will complain when you try to compile your program, and issue you the <span class="spoiler">**syntax error**</span>.
^1682908022734

What type of error is a syntax error? When does it occur? #card-reverse 
A compiler error that occurs at compile-time when your program violates the grammar rules of the C++ language.
^1682908022741

-----
#### Quiz time

Question #1
What is a statement? #card 
A statement is an instruction in a computer program that tells the computer to perform an action.
^1682908022748

Question #2
What is a function? #card 
A function is a collection of statements that executes sequentially.
^1682908022754

Question #3 
What is the name of the function that all programs must have? #card 
main
^1682908022760

Question #4
When a program is run, where does execution start? #card 
Execution starts with the first statement inside the _main_ function.
^1682908022767

Question #5
What symbol are statements in C++ often ended with? #card 
The semicolon (`;`)
^1682908022777

Question #6
What is a syntax error? #card 
A syntax error is a compiler error that occurs at compile-time when your program violates the grammar rules of the C++ language.
^1682908022785


Question #7
What is the C++ Standard Library? #card 
Hint: Review lesson [0.5 ---- Introduction to the compiler, linker, and libraries](https://www.learncpp.com/cpp-tutorial/introduction-to-the-compiler-linker-and-libraries/)
A library file is a collection of precompiled code that has been “packaged up” for reuse in other programs. The C++ Standard Library is a library that ships with C++. It contains additional functionality to use in your programs.
^1682908022792

### 1.2: [Comments](https://www.learncpp.com/cpp-tutorial/comments/)

What is a **comment**? #card-reverse 
- A programmable-readable note that is inserted directly into the source code of the program.
- Comments are ignored by the compiler and are for the programmer’s use only.
^1682908022799

-----
#### Single-line comments

What does `//` symbol mean in C++? #card-reverse 
- Begins a C++ single-line comment.
- Tells compiler to ignore everything from the <span class="spoiler">`//`</span> symbol to the end of the line.
^1682908022806

What are **snippets** of code? #card-reverse 
- snippets aren’t full programs; they aren’t able to be compiled by themselves
- Exist to demonstrate specific concepts in a concise manner
^1682908022813

-----
#### Multi-line comments

What does the symbols `/*` and `*/` mean in C++? #card-reverse 
- Denotes a C-style multi-line comment
- Everything in between the symbols is ignored
^1682908022820

Should you use multi-line comments inside other multi-line comments? #card 
> [!warning]
> Don’t use multi-line comments inside other multi-line comments. Wrapping single-line comments inside a multi-line comment is okay.
^1682908022827

-----
#### Proper use of comments

When should comments typically be used? #card 
- For a given library, program, or functions, comments are best used to describe *what* the library, program, or function does
	- Typically placed at the top of the file or library, or immediately preceding the function
- *Within* a library, program, or function.
	- Can be used to describe *how* the code is going to accomplish its goal.
- At the statement level
	- Comments should be used to describe *why* the code is doing something
	- A bad statement comment explains *what* the code is doing.
		- If you ever write code that is so complex that needs to comment what a statement is doing, you probably need to rewrite your statement, not comment it.
^1682908022834

Is this a bad comment or good comment?
```cpp
// Set sight range to 0
sight = 0;
```
#card 
Bad.
- Reason: We already can see that sight is being set to 0 by looking at the statement
^1682908022841

Is this a bad comment or good comment?
```cpp
// The player just drank a potion of blindness and can not see anything
sight = 0;
```
#card 
Good.
- Reason: Now we know why the player’s sight is being set to 0
^1682908022848


Is this a bad comment or good comment?
```cpp
// Calculate the cost of the items
cost = quantity * 2 * storePrice;
```
#card 
Bad. 
- Reason: We can see that this is a cost calculation, but why is quantity multiplied by 2?
^1682908022855


Is this a bad comment or good comment?
```cpp
// We need to multiply quantity by 2 here because they are bought in pairs
cost = quantity * 2 * storePrice;
```
#card 
Good.
- Now we know why this formula makes sense.
^1682908022861


What is the best practice regarding comments? #card 
> [!tip]
> Comment your code liberally, and write your comments as if speaking to someone who has no idea what the code does. Don’t assume you’ll remember why you made specific choices.
^1682908022868

-----
#### Commenting out code

If you need to comment out a code block that contains multi-line comments, you can also consider… #card 
The `#if 0` preprocessor directive, which we discuss in lesson [2.10 ---- Introduction to the preprocessor](https://www.learncpp.com/cpp-tutorial/introduction-to-the-preprocessor/#if0).
^1682908022875


-----
#### Summary

- At the library, program, or function level, use comments to describe…
- Inside the library, program, or function, use comments to describe…
- At the statement level, use comments to describe… #card 
- *what*
- *how*
- *why*
^1682908022882


### 1.3: [Introduction to objects and variables](https://www.learncpp.com/cpp-tutorial/introduction-to-objects-and-variables/)

#### Data

How do programs actually produce results? #card 
They do so by manipulating (reading, changing, and writing) data.
^1682908022888


What is **data** in computing? #card-reverse  
Any information that can be moved, processed, or stored by a computer.
^1682908022895


Data on a computer is typically stored in a format that is efficient for storage or processing. What is this more efficient format? #card-reverse 
binary.
^1682908022902


-----
#### Objects and variables

What does **RAM** stand for? #card 
random access memory
^1682908022909

What does the the word “random” mean in RAM? #card 
- Random access memory (RAM) is a type of computer memory that can be read and changed in any order, typically used to store working data and machine code.
- [RAM is given the term “random access” because data can be stored and accessed from any location within the memory](https://www.bbc.co.uk/bitesize/guides/zfssv9q/revision/3)[1](https://www.bbc.co.uk/bitesize/guides/zfssv9q/revision/3).
- [This means that data can be accessed quickly and efficiently by the computer processor without having to go through all the data stored in memory](https://en.wikipedia.org/wiki/Random-access_memory)[2](https://en.wikipedia.org/wiki/Random-access_memory).
	- [RAM is volatile main memory which means that once the computer is switched off, the data and instructions held in RAM are lost](https://www.bbc.co.uk/bitesize/guides/zfssv9q/revision/3)[1](https://www.bbc.co.uk/bitesize/guides/zfssv9q/revision/3).
^1682908022917

What does volatile mean? #card 
Once computer is switched off, the data and instructions held in RAM are lost.
^1682908022926

What do all computers have? #card 
memory
^1682908022937

What can we think of RAM as? #card-reverse 
A series of numbered mailboxes that can each be used to hold a piece of data while the program is running.
^1682908022948


What is a **value**? #card-reverse 
A single piece of data, stored in memory somewhere.
^1682908022958


In C++, is direct memory access encouraged? #card 
No.
^1682908022967


How do we access memory in C++? #card 
Access indirectly through an object.
^1682908022977


What is an **object**? #card-reverse 
A region of storage (usually memory) that has a value and other associated properties.
^1682908022988


Can objects be named or unnamed? #card 
Yes. For unnamed objects review the concept of [Anonymous objects](https://www.learncpp.com/cpp-tutorial/anonymous-objects/).
^1682908022999


What is a **variable**? #card-reverse 
A named object.
^1682908023010


What is an **identifier**?
The name of an object.

In general programming, what does the term *object* refer to? #card 
- Typically refers to an unnamed object in memory, a variable, or a function
- In C++, the term has a narrower definition that excludes functions
^1682908023022


-----
#### Variable instantiation

How do we create a variable? #card 
Use a special kind of declaration statement called a **definition**.
For example…
```cpp
int x; // define a variable named x, type of int
```
^1682908023033


Is a **definition** a type of declaration statement? #card 
Yes
^1682908023045

When is a variable instantiated? #card 
When the program is run (called **runtime**)
^1682908023060


What is **instantiation**? #card 
A fancy word that means the object will be created and assigned a memory address
^1682908023071

Can variables be used to store values before they are instantiated?
No.

What is an instantiated object sometimes called? #card-reverse 
**instance**.
^1682908023082


-----
#### Data types

What is a **data type**? #card-reverse 
- More commonly just called a **type**
- Tells the compiler what type of value (e.g. a number, a letter, text, etc…) the variable will store.
^1682908023092


In C++, must the type of variable be known at **compile-time**? #card 
Yes.
^1682908023103

Can a variable change type during compile time? #card 
No.
^1682908023112

Does C++ allow you to create user-defined types? #card 
Yes.
^1682908023118


-----
#### Defining multiple variables

Is it possible to define multiple variables *of the same type* in a single statement in C++? #card 
Yes.
For example:
```cpp
int a;
int b;
```
is the same as:
```cpp
int a, b;
```
^1683685888433


What is best practice regarding defining multiple variables #card 
> [!tip] Best practice
> - Although the language allows you to do so, avoid defining multiple variables of the same type in a single statement.
> - Instead, define each variable in a separate statement on its own line (and then use a single-line comment to document what it is used for).
^1682908023125

-----
#### Summary

In C++, what do we use variables for? #card 
To access memory
^1682908023133

What do variables have? #card-reverse 
- an identifier
- a type
- a value
^1682908023140

-----
#### Quiz time

**Question #1**
What is data? #card 
Data is any information that can be moved, processed, or stored by a computer.
^1682908023148


**Question #2**
What is a value? #card 
A value is a single piece of data stored in memory.
^1682908023156


**Question #3**
What is a variable? #card 
A variable is a named region of memory.
^1682908023166


**Question #4**
What is an identifier? #card 
An identifier is the name that a variable is accessed by.
^1682908023174


**Question #5**
What is a type? #card 
A type tells the program how to interpret a value in memory.
^1682908023182


**Question #6**
What is an integer? #card 
An integer is a number that can be written without a fractional component.
^1682908023189


### 1.4: [Variable assignment and initialization](https://www.learncpp.com/cpp-tutorial/variable-assignment-and-initialization/)

-----
#### Variable assignment

What is **copy assignment**? #card 
- Also known as **assignment**
- After a variable has been defined, you can give it a value (in a separate statement) using the *= operator*.
^1682908023197


Why is the copy assignment named that way? #card 
It copies the value on the right-hand side of the *= operator* to the variable on the left-hand side of the operator.
^1682908023205


What is the **assignment operator**? #card-reverse 
*= operator*
^1682908023214


-----
#### Initialization

What is one downside of assignment? #card 
Requires at least two statements:
- one to define the variables
- and one to assign the value
^1682908023222


What is **initialization**? #card-reverse  
When a variable is defined, and you also provide an initial value for the variable at the same time.
^1682908023230


What is the **initializer**? #card-reverse 
The value used to initialize a variable.
^1682908023238


What are the basic ways to initialize variables in C++? #card-reverse 
```cpp
int a;         // no initializer (default initialization)
int b = 5;     // initializer after equals sign (copy initialization)
int c( 6 );    // initializer in parenthesis (direct initialization)
// List initialization methods (C++11)
int d { 7 };   // initializer in braces (direct list initialization)
int e = { 8 }; // initializer in braces after equals sign (copy list initialization)
int f {};      // initializer is empty braces (value initialization)
```
^1682908023246


-----
#### Default initialization

What is **default initialization**? #card-reverse 
- When no initialization value is provided
- In most cases, this leaves a variable with an indeterminate value
^1682908023254


----- 
#### Copy initialization

What is **copy initialization**? #card-reverse 
When an initializer is provided after an equals sign
```cpp
int width = 5; 
```
^1682908023265


When is copy initialization used? #card 
Used whenever values are implicitly copied, such as…
- when passing arguments to a function by value
- returning from a function by value
- catching exceptions by value
^1682908023273


-----
#### Direct initialization

What is **direct initialization**? #card-reverse 
When an initializer is provided inside parenthesis
```cpp
int width( 5 );
```
^1682908023280


Why was direct initialization introduced? #card-reverse  
- To allow for more efficient initializations of complex objects (Those with class tyles, which we’ll cover in a future chapter)
- However, like copy initialization, direct initialization is not used in modern C++
^1682908023288


When is direct initialization also used? #card 
When values are explicitly cast to another type.
^1682908023295


What is one of the reasons direct initialization has fallen out of favor? #card 
- Makes it hard to differentiate variables from functions.
- For example…
```cpp
int x();  // forward declaration of function x
int x(0); // definition of variable x with initializer 0
```
^1682908023307


---- 
#### List initialization

What is **list initialization**? #card 
- Also called **uniform initialization** or **brace initialization**
- The modern way to initialize objects in C++ that makes use of curly braces
- For example…
```cpp
int width { 5 };    // direct list initialization of value 5 into variable width (preferred)
int height = { 6 }; // copy list initialization of value 6 into variable height
int depth {};       // value initialization (see next section)
```
^1682908023315

Why was list initialization provided to C++ developers? #card 
- Prior to the introduction of list initialization, some types of initialization required using copy initialization
- Other types of initialization required using direct initialization
- Reason why it is sometimes called “uniform initialization”
^1682908023322


What additional benefit does list initialization have? #card 
- It disallows “narrowing conversions”
	- Means that if you try to brace initialize a variable using a value that the variable can not safely hold, the compiler will produce an error
	- For example…
```cpp
int width { 4.5 }; // error: a number with a fractional value can't fit into an int
```
^1682908023330


What happens when you try to assign a number (4.5) to an integer variable via copy *or* direct initialization? #card 
Copy *or* direct initialization would simply drop the fractional part, resulting in the initialization of value 4 into the variable.
^1682908023339


What is the best practice regarding list initializations? #card 
> [!tip] Best practice
> Favor initialization using braces whenever possible.
^1682908023349

---- 
#### Value initialization and zero initialization

What is **value initialization**? #card-reverse 
- When a variable in initialized with empty braces.
- In most cases, will initialize the variable to zero (or empty, if that’s more appropriate for a given type).
	- Where zeroing occurs, this is called <span class="spoiler">zero initialization</span>.
^1682908023357


When should I do an explicit initialization vs a value initialization? #card
- Use an explicit initialization value if you’re actually using that value.
```cpp
int x { 0 };    // explicit initialization to value 0
std꞉꞉cout << x; // we're using that zero value
```
- Use value initialization if the value is temporary and will be replaced.
```cpp
int x {};      // value initialization
std꞉꞉cin >> x; // we're immediately replacing that value
```
^1683686190103


---- 
#### Initialize your variables

What is the best practice regarding initializing variables? #card 
Initialize your variables upon creation.
^1682908023377


---- 
#### Initializing multiple variables

Can you initialize multiple variables defined on the same line? #card 
```cpp
int a = 5, b = 6;          // copy initialization
int c( 7 ), d( 8 );        // direct initialization
int e { 9 }, f { 10 };     // direct brace initialization (preferred)
int g = { 9 }, h = { 10 }; // copy brace initialization
int i {}, j {};            // value initialization
```
^1682908023383


---- 
#### Unused initialized variables and \[\[maybe_unused]]

What is the [[maybe_unused]] attribute? #card 
- This attribute tells the compiler to expect that the variable may not be used.
- Will not generate unused variable warnings
```cpp
int main()
{
    [[maybe_unused]] int x { 5 };
    // since x is [[maybe_unused]], no warning generated
    return 0;
}
```
^1682908023390


---- 
#### Quiz time

**Question #1**
What is the difference between initialization and assignment? #card 
Initialization gives a variable an initial value at the point when it is created. Assignment gives a variable a value at some point after the variable is created.
^1682908023396


**Question #2**
What form of initialization should you prefer when you want to initialize a variable with a specific value? #card 
Direct list initialization (aka. direct brace initialization).
^1682908023403


**Question #3**
What are default initialization and value initialization? What is the behavior of each? Which should you prefer? #card 
Default initialization is when a variable initialization has no initializer (e.g. `int x;`). In most cases, the variable is left with an indeterminate value.
Value initialization is when a variable initialization has an empty brace (e.g. `int x{};`). In most cases this will perform zero-initialization.
You should prefer value initialization to default initialization.
^1682908023410


### 1.5: [Introduction to iostream: cout, cin, and endl](https://www.learncpp.com/cpp-tutorial/introduction-to-iostream-cout-cin-and-endl/)

---- 
#### The input/output library

What does the *io* part of *iostream* stand for? #card 
*input/output*
^1682908023416

---- 
#### std꞉꞉cout

---- 
#### std꞉꞉endl

---- 
#### std꞉꞉cout is buffered

When often are buffered systems used? #card 
- Cases where processing a few large batches of data is more efficient than processing smaller batches
^1682908023422


Buffering maximizes what at the cost of what? #card 
Buffering maximizes overall throughput, at the cost of increasing response time.
^1682908023428


If your program crashes, aborts, or is paused (e.g. for debugging purposes) before the buffer is flushed, what happens to the output? #card 
Any output still waiting in the buffer will not be displayed.
^1682908023433


---- 
#### std꞉꞉endl vs ‘\n’

---- 
#### std꞉꞉cin

Do we need to use '\n' when getting input from the user via the console? #card 
No. The user will need to press the *enter* key to have their input accepted, and this will move the cursor to the next line of the console.
^1682908023439


Is it possible to input more than one value on a single line? #card 
Yes, just like it is possible to output more than one bit of text in a single line…
```cpp
#include <iostream>  // for std꞉꞉cout and std꞉꞉cin
int main()
{
    std꞉꞉cout << "Enter two numbers separated by a space: ";
    int x{ }; // define variable x to hold user input (and zero-initialize it)
    int y{ }; // define variable y to hold user input (and zero-initialize it)
    std꞉꞉cin >> x >> y; // get two numbers and store in variable x and y respectively
    std꞉꞉cout << "You entered " << x << " and " << y << '\n';
    return 0;
}
```
This produces the output:
```
Enter two numbers separated by a space: 5 6
You entered 5 and 6
```
^1682908023445


Does the C++ I/O library provide a way to accept a keyboard input without the user having to press *enter* #card
No. For console applications, LearnCpp.com recommends…
- [pdcurses](https://pdcurses.org/)
- [FXTUI](https://github.com/ArthurSonzogni/FTXUI)
- [cpp-terminal](https://github.com/jupyter-xeus/cpp-terminal).
- Many graphical user libraries have their own functions to do this kind of thing.
^1682908023451


---- 
#### Summary

---- 
#### Quiz time

**Question #1**
Consider the following program that we used above:
```cpp
#include <iostream>  // for std꞉꞉cout and std꞉꞉cin
int main()
{
    std꞉꞉cout << "Enter a number: "; // ask user for a number
    int x{}; // define variable x to hold user input
    std꞉꞉cin >> x; // get number from keyboard and store it in variable x
    std꞉꞉cout << "You entered " << x << '\n';
    return 0;
}
```
The program expects you to enter an integer value, as the variable x that the user input will be put into is an integer variable.
Run this program multiple times and describe what happens when you enter the following types of input instead:
a) A letter, such as _h_
b) A number with a fractional component. Try numbers with fractional components less than 0.5 and greater than 0.5 (e.g. _3.2_ and _3.7_).
c) A small negative integer, such as _-3_
d) A word, such as _Hello_
e) A really big number (at least 3 billion)
f) A small number followed by some letters, such as _123abc_
…
a) x is 0.
- In attempting to read into an integer variable using `std꞉꞉cin >> x`, our `std꞉꞉cin` object enters a “fail state” because the ‘h’ cannot be converted into an integer.
b) The fractional component is dropped.
c) A small negative integer, such as *-3*
d) x is 0. 
- Again another fail state occurs.
e) You are most likely to get the number 2147483647. This happens because x can only hold numbers up to a certain size. If you enter a value larger than the largest number x can hold, it will be set to the largest number that x can hold (which is probably 2147483647, but might be different on your system). We discuss this further in lesson [4.4 -- Signed integers](https://www.learncpp.com/cpp-tutorial/signed-integers/).
f) x gets the numeric value (e.g. 123). We’ll cover this case in more detail in lesson [7.16 -- std꞉꞉cin and handling invalid input](https://www.learncpp.com/cpp-tutorial/stdcin-and-handling-invalid-input/).
^1682908023459

When `std꞉꞉cin` is in a failed state, any further {input or output operation performed using `std꞉꞉cin` will not have an effect till the fail state is cleared}.
^1684496322478

How can you prevent reading a fail state from occurring? #card 
Check if the input was successful using `std꞉꞉cin.fail()` before you use the input value:
```cpp
std꞉꞉cin >> x; 
if (std꞉꞉cin.fail()) {     
	std꞉꞉cout << "That was not a valid number.\n";     
	// Reset the state of std::cin to good     
	std꞉꞉cin.clear();     
	// Ignore the rest of the line     
	std꞉꞉cin.ignore(std꞉꞉numeric_limits<std꞉꞉streamsize>꞉꞉max(), '\n'); 
} 
else {     
	std꞉꞉cout << "You entered " << x << '\n'; 
}
```
This code will display an error message if the user enters something that is not a number. The `std꞉꞉cin.clear()` line will reset the state of `std꞉꞉cin` to good, and the `std꞉꞉cin.ignore()` line will remove the incorrect input from `std꞉꞉cin` so that it doesn't interfere with subsequent input operations.
^1684496322516

What does `std꞉꞉cin.clear()` do? #card-reverse 
Resets the state of `std꞉꞉cin` to good.
^1684496322525

Waht does `std꞉꞉cin.ignore()` do? #card-reverse 
Removes the incorrect input form `std:꞉cin` so that it doesn’t interfere with subsequent operations.
^1684496322533

What does `std::cin.ignore(std꞉꞉numeric_limits<std꞉꞉streamsize>꞉꞉꞉max(), '\n')` do? #card-reverse
^1684496733288 
Used to ignore the rest of the line, ensuring that the invalid input doesn't interfere with future input operations.
^1684496733294

What is the general process for checking for fail states for `std꞉꞉cin`?
1. Check if `std꞉꞉cin` is in a failed state.
2. Reset the state by calling the `std꞉꞉cin.clear()` method.
3. Make sure to ignore the rest of the line by using `std::cin.ignore(std꞉꞉numeric_limits<std꞉꞉streamsize>꞉꞉꞉max(), '\n')`.
^1684496733301

#### 🤖 ChatGPT Generated Flash Cards

![[🤖 ChatGPT, Bing Chat, etc. Warning]]

**Front of Card**: What does `std꞉꞉cout` stand for? #card 
**Back of Card**: `std꞉꞉cout` stands for "standard character output". It is a predefined variable in the iostream library that allows us to send data to the console to be printed as text.
^1682908023477


**Front of Card**: How do we include the iostream header in our code? #card 
**Back of Card**: To use the functionality defined within the iostream library, we need to include the iostream header at the top of any code file that uses the content defined in iostream, like so: `#include <iostream>`
^1682908023495


**Front of Card**: What is the insertion operator and what is it used for? #card 
**Back of Card**: The insertion operator (`<<`) is used with std꞉꞉cout to send data to the console to be printed as text. It shows the direction that data is moving (if `std꞉꞉cout` represents the console, the output data is moving from the variable to the console).
^1682908023516


**Front of Card**: How can we print the value of a variable using `std꞉꞉cout`? #card 
**Back of Card**: We can print the value of a variable using `std꞉꞉cout` by using the insertion operator (`<<`) and the name of the variable, like so: `std꞉꞉cout << x;`
^1682908023530


**Front of Card**: How can we print more than one thing on the same line using `std꞉꞉cout`? #card 
**Back of Card**: To print more than one thing on the same line using `std꞉꞉cout`, we can use the insertion operator (`<<`) multiple times in a single statement to concatenate (link together) multiple pieces of output.
^1682908023541


**Front of Card**: What does `std꞉꞉endl` do and when should we use it? #card 
**Back of Card**: When output with `std꞉꞉cout`, `std꞉꞉endl` prints a newline character to the console (causing the cursor to go to the start of the next line) and flushes the buffer. We should use `std꞉꞉endl` whenever a line of output is complete.
^1682908023553


**Front of Card**: What is the buffer in C++ and how does it relate to `std꞉꞉cout`? #card 
**Back of Card**: The buffer in C++ is a region of memory set aside to collect output requests made with `std꞉꞉cout`. Output is typically not sent to the console immediately, but rather added to the buffer. Periodically, the buffer is flushed and the output is sent to the console.
^1682908023564

Is output typically sent to the console immediately? #card 
No, it is typically added to the buffer.
^1684649100270


**Front of Card**: What is the preferred way to move the cursor to the next line of the console when outputting text? #card 
**Back of Card**: The preferred way to move the cursor to the next line of the console when outputting text is to use the newline character '\n'. This is more efficient than using `std꞉꞉endl`, which flushes the buffer as well.
^1682908023575


**Front of Card**: What is `std꞉꞉cin` and what is it used for? #card 
**Back of Card**: `std꞉꞉cin` is a predefined variable in the iostream library that is used to read input from the keyboard using the extraction operator (`>>`). The input must be stored in a variable to be used.
^1682908023586


**Front of Card**: How do we get input from the user using `std꞉꞉cin`? #card 
**Back of Card**: We can get input from the user using `std꞉꞉cin` by using the extraction operator (`>>`) and the name of the variable we want to store the input in, like so: `std꞉꞉cin >> x`;
^1682908023598


**Front of Card**: How can we prompt the user for input when using `std꞉꞉cin`? #card 
**Back of Card**: We can prompt the user for input when using `std꞉꞉cin` by using `std꞉꞉cout` to output a message to the console before getting input with `std꞉꞉cin`.
^1682908023608


### 1.6: [Uninitialized variables and undefined behavior](https://www.learncpp.com/cpp-tutorial/uninitialized-variables-and-undefined-behavior/)


Does C/C++ initialize most variables to a given value? #card 
No, the variable is given what ever (garbage) value is at the memory address it is given.
^1682990891639

What is an **uninitialized variable** called? #card 
A variable that has not been given a known value.
^1682990891643

 - Initialization = ?
 - Assignment = ?
 - Uninitialized = ? 
#card 
 - Initialization = The object is given a known value at the point of definition.
 - Assignment = The object is given a known value beyond the point of definition.
 - Uninitialized = The object has not been given a known value yet.
^1682990891648

What is the point of this lack of initialization feature in C/C++? #card 
- This lack of initialization is a performance optimization inherited from C, back when computers were slow. Imagine a case where you were going to read in 100,000 values from a file. In such case, you might create 100,000 variables, then fill them with data from the file.
- If C++ initialized all of those variables with default values upon creation, this would result in 100,000 initializations (which would be slow), and for little benefit (since you’re overwriting those values anyway).
- For now, you should always initialize your variables because the cost of doing so is miniscule compared to the benefit. Once you are more comfortable with the language, there may be certain cases where you omit the initialization for optimization purposes. But this should always be done selectively and intentionally.
^1682990891653


-----
#### Undefined Behavior


What is undefined behavior (often abbreviated **UB**)? #card
Result of executing code whose behavior is not well-defined by the C++ language.
^1682990891658

-----
#### Implementation-defined behavior and unspecified behavior


What is **Implementation-defined behavior**? #card 
Means the behavior of some syntax is left up to the implementation (the compiler) to define. Such behaviors must be consistent and documented, but different compilers may produce different results.
Let’s look at a simple example of implementation-defined behavior:
```cpp
#include <iostream>
int main()
{
	std::cout << sizeof(long double); // print how many bytes of memory an int value takes
	return 0;
}
```
On most compilers, this will produce `4`, but on others it may produce `2`.
^1682990891663


What is the best practice regarding implementation-defined and unspecified behavior? #card 
> [!tip]+ Best practice
> Avoid implementation-defined and unspecified behavior whenever possible, as they may cause your program to malfunction on other implementations.
^1682990891669


-----
#### Quiz Time


**Question #1**
What is an uninitialized variable? Why should you avoid using them? #card 
An uninitialized variable is a variable that has not been given a value by the program (generally through initialization or assignment). Using the value stored in an uninitialized variable will result in undefined behavior.
^1682990891674


**Question #2**
What is undefined behavior, and what can happen if you do something that exhibits undefined behavior? #card 
Undefined behavior is the result of executing code whose behavior is not well defined by the language. The result can be almost anything, including something that behaves correctly.
^1682990891679


### 1.7: [Keywords and naming identifiers](https://www.learncpp.com/cpp-tutorial/keywords-and-naming-identifiers/)

#### Keywords

What are **keywords** in C++? #card 
- C++ reserves a set of 92 words (as of C++20) for its own use.
- These words are called **keywords** (or reserved words), and each of these keywords has a special meaning within the C++ language.
^1682992534803

What are special identifiers in C++? #card 
- override, final, import, and module.
- These have a specific meaning when used in certain contexts but are not reserved.
^1682992534809

-----
#### Identifier naming rules

What is an identifier? #card
The name of a variable (or function, type, or other kind of item) is called an identifier.
^1683687272461

What are the rules that must be followed when naming identifiers? #card 
- The identifier can not be a keyword. Keywords are reserved.
- The identifier can only be composed of letters (lower or upper case), numbers, and the underscore character. That means the name can not contain symbols (except the underscore) nor whitespace (spaces or tabs).
- The identifier must begin with a letter (lower or upper case) or an underscore. It can not start with a number.
- C++ is case sensitive, and thus distinguishes between lower and upper case letters. `nvalue` is different than `nValue` is different than `NVALUE`.
^1683685547782


-----
#### Identifier naming best practices

What is the convention for naming C++ variables? #card 
First, it is a convention in C++ that variable names should begin with a lowercase letter. If the variable name is one word, the whole thing should be written in lowercase letters.
```cpp
int value; // correct
int Value; // incorrect (should start with lower case letter)
int VALUE; // incorrect (should start with lower case letter)
int VaLuE; // incorrect (see your psychiatrist) ;)
```
^1683685547789

What is the convention for naming functions? #card 
Most often, function names are also started with a lowercase letter (though there’s some disagreement on this point). We’ll follow this convention, since function _main_ (which all programs must have) starts with a lowercase letter, as do all of the functions in the C++ standard library.
^1683685547795


What is the convention for naming user-defined types? #card 
Identifier names that start with a capital letter are typically used for user-defined types (such as structs, classes, and enumerations, all of which we will cover later).
^1683685547801


If the variable or function name is multi-word, there are two common conventions: words separated by underscores, called snake_case, or intercapped (sometimes called camelCase, since the capital letters stick up like the humps on a camel). #card 
```cpp
int my_variable_name; // correct (separated by underscores/snake_case)
int my_function_name(); // correct (separated by underscores/snake_case)
int myVariableName; // correct (intercapped/CamelCase)
int myFunctionName(); // correct (intercapped/CamelCase)
int my variable name; // invalid (whitespace not allowed)
int my function name(); // invalid (whitespace not allowed)
int MyVariableName; // valid but incorrect (should start with lower case letter)
int MyFunctionName(); // valid but incorrect (should start with lower case letter)
```
In this tutorial, we will typically use the intercapped approach because it’s easier to read (it’s easy to mistake an underscore for a space in dense blocks of code). But it’s common to see either -- the C++ standard library uses the underscore method for both variables and functions. Sometimes you’ll see a mix of the two: underscores used for variables and intercaps used for functions.
^1683685547812

What if I am working someone else’s code? Then what convention should I use? #card 
It’s worth noting that if you’re working in someone else’s code, it’s generally considered better to match the style of the code you are working in than to rigidly follow the naming conventions laid out above.
> [!tip] Best practice
> When working in an existing program, use the conventions of that program (even if they don’t conform to modern best practices). Use modern best practices when you’re writing new programs.
^1683685547819

Should you have your identifiers start with an underscore? #card 
You should *avoid* naming your identifiers starting with an underscore, as these names are typically reserved for OS, library, and/or compiler use.
^1683685547826

What is a good rule of thumb for naming? #card 
Therefore, a good rule of thumb is to make the length of an identifier proportional to how widely it is used. An identifier with a trivial use can have a short name (e.g. such as _i_). An identifier that is used more broadly (e.g. a function that is called from many different places in a program) should have a longer and more descriptive name (e.g. instead of _open_, try _openFileOnDisk_).
^1683685547832





![[🤖 ChatGPT, Bing Chat, etc. Warning]]

**Q:** What is the keyword `alignas` used for in C++? #card
**A:** <span class="spoiler">`alignas`</span> specifies the alignment requirement of a variable or a type.
**Example:**
```cpp
#include <iostream>
// every object of type struct_float will be aligned to alignof(float) boundary
// (usually 4):
struct alignas(float) struct_float
{
    // your definition here
};
// every object of type sse_t will be aligned to 32-byte boundary:
struct alignas(32) sse_t
{
    float sse_data[4];
};
// the array "cacheline" will be aligned to 64-byte boundary:
alignas(64) char cacheline[64];
int main()
{
    struct default_aligned
    {
        float data[4];
    } a, b, c;
    [std꞉꞉cout](https://en.cppreference.com/w/cpp/io/cout)
        << "alignof(struct_float) = " << alignof(struct_float) << '\n'
        << "sizeof(sse_t) = " << sizeof(sse_t) << '\n'
        << "alignof(sse_t) = " << alignof(sse_t) << '\n'
        << "alignof(cacheline) = " << alignof(alignas(64) char[64]) << '\n'
        << [std꞉꞉hex](https://en.cppreference.com/w/cpp/io/manip/hex) << [std꞉꞉showbase](https://en.cppreference.com/w/cpp/io/manip/showbase)
        << "&a: " << &a << '\n'
        << "&b: " << &b << '\n'
        << "&c: " << &c << '\n'
        << "&x: " << &x << '\n'
        << "&y: " << &y << '\n'
        << "&z: " << &z << '\n';
}
```
Possible output:
```
alignof(struct_float) = 4
sizeof(sse_t) = 32
alignof(sse_t) = 32
alignof(cacheline) = 64
&a: 0x7fffcec89930
&b: 0x7fffcec89940
&c: 0x7fffcec89950
&x: 0x7fffcec89960
&y: 0x7fffcec89980
&z: 0x7fffcec899a0`
```
^1682992534817

What can the `alignas` specifier may be applied to what? #card 
- the declaration or defintion of a class
- the declaration of a non-bitfield class data member
- the declaration of a variable, except that it cannot be applied to the following:
	- a function parameter;
	- the exception parameter of a catch clause
^1684649743269

What is the difference between `alignof` and `sizeof` in C++? #card 
Both are operators that return a type of `size_t`.
- `sizeof` returns the size in bytes of the object - the memory space needed to encode it.
- `alignof`, on the other hand, returns the address alignment requirement in bytes of the object.
**Example**:
```cpp
#include <iostream>
struct Foo {
    int i;
    float f;
    char c;
};
int main() {
    std::cout << "Size of Foo: " << sizeof(Foo) << '\n';
    std::cout << "Alignment of Foo: " << alignof(Foo) << '\n';
}
```
^1684649947095


`sizeof` is always a {multiple} of `alignof`.
^1684649947099

**Q:** What is the keyword `alignof` used for in C++? #card
**A:** <span class="spoiler">`alignof`</span> returns the alignment requirement of a type.
^1682992534822


**Q:** What is the keyword `and` used for in C++? #card
**A:** <span class="spoiler">`and`</span> is a logical operator that returns true if both its operands are true.
^1682992534827


**Q:** What is the keyword `and_eq` used for in C++? #card
**A:** <span class="spoiler">`and_eq`</span> is a bitwise AND assignment operator.
The `and_eq` operator in C++ is the alternative representation of `&=` operator which is a compound bitwise AND assignment operator.
Here is an example of its use:
```cpp
#include <iostream> 
int main() {     
	int num1 = 12;  // in binary: 1100
	int num2 = 10;  // in binary: 1010
	num1 and_eq num2;  // equivalent to num1 &= num2;
	std::cout << "Result: " << num1 << std::endl;  // Output: 8
	return 0; 
}
```
In this example, `num1 and_eq num2;` is equivalent to `num1 &= num2;`. What this does is perform a bitwise AND operation on `num1` and `num2`, and then assigns the result back to `num1`.
- `num1` in binary: 1100
- `num2` in binary: 1010
- bitwise AND: 1000 which is 8 in decimal
So, `num1 and_eq num2;` results in `num1` being 8, which is what gets outputted by the program.
^1682992534834

What does is the equivalent operator for `and_eq`? #card-reverse  
The equivalent operator is `&=`
^1684425782871

**Q:** What is the keyword `asm` used for in C++? #card
**A:** <span class="spoiler">`asm`</span> is used to insert assembly language instructions directly into C++ code.
^1682992534839


**Q:** What is the keyword `auto` used for in C++? #card
**A:** <span class="spoiler">`auto`</span> specifies that the type of a variable should be automatically deduced from its initializer.
^1682992534844


**Q:** What is the keyword `bitand` used for in C++? #card
**A:** <span class="spoiler">`bitand`</span> is a bitwise AND operator.
^1682992534850


**Q:** What is the keyword `bitor` used for in C++? #card
**A:** <span class="spoiler">`bitor`</span> is a bitwise OR operator.
```cpp
#include <iostream>
int main() {
	int a = 5;      // in binary: 0101
	int b = 3;      // in binary: 0011
	int result = a | b; // bitwise OR operation
	std꞉꞉cout << "The result of 5 | 3 is " << result << '\n';
	return 0; 
}
```
The binary representations of the numbers 5 and 3 are 0101 and 0011, respectively. The result of the bitwise OR operation is:
```
  0101  (5 in binary)
| 0011  (3 in binary)
------   
  0111  (7 in binary)
```
So, the output of the program will be "The result of 5 | 3 is 7".
This is a simple example, but bitwise operations are often used in low-level programming, such as device drivers, low-level graphics, cryptography, and optimization of program code.
^1682992534855


**Q:** What is the keyword `bool` used for in C++? #card
**A:** <span class="spoiler">`bool`</span> is a fundamental type representing boolean values of true and false.
^1682992534860


**Q:** What is the keyword `break` used for in C++? #card
**A:** <span class="spoiler">`break`</span> causes an immediate exit from a loop or switch statement.
^1682992534866


**Q:** What is the keyword `case` used for in C++? #card
**A:** <span class="spoiler">`case`</span> marks a branch of a switch statement.
^1682992534871


**Q:** What is the keyword `catch` used for in C++? #card
**A:** <span class="spoiler">`catch`</span> marks a block of code that handles an exception thrown by a try block.
^1682992534876


**Q:** What is the keyword `char` used for in C++? #card
**A:** <span class="spoiler">`char`</span> is a fundamental type representing characters.
^1682992534882


**Q:** What is the keyword `char8_t (since C++20)` used for in C++? #card
**A:** Since C++20, <span class="spoiler">`char8_t`</span> represents UTF-8 characters.
^1682992534887


**Q:** What is the keyword `char16_t` used for in C++? #card
**A:** <span class="spoiler">`char16_t`</span> represents UTF-16 characters.
^1682992534893


**Q:** What is the keyword `char32_t` used for in C++? #card
**A:** <span class="spoiler">`char32_t`</span> represents UTF-32 characters.
^1682992534898


**Q:** What is the keyword `class` used for in C++? #card
**A:** The keyword <span class="spoiler">`class`</span> defines a new user-defined type called class. Classes can contain data members and member functions that operate on those data members.
^1682992534902


**Q:** What is the keyword `compl` used for in C++? #card
**A:** The <span class="spoiler">`compl`</span> operator returns the one's complement of its operand. It's equivalent to `~x` where `x` is an integer type.
^1682992534907


**Q:** What does the `concept` (since C++20) do? #card 
**A:** <span class="spoiler">`concept`</span> (since C++20) specifies constraints on template arguments. 
^1682992534911


**Q:** How does `const` work? #card 
**A:** <span class="spoiler">`const`</span> specifies that an object or variable should not be modified after initialization. 
^1682992534916


**Q:** How does `consteval` (since C++20) work? #card 
**A:** <span class="spoiler">`consteval`</span> (since C++20) specifies that a function must be evaluated at compile-time. 
^1682992534920


**Q:** How does `constexpr` work? #card 
**A:** <span class="spoiler">`constexpr`</span> specifies that an expression must be evaluated at compile-time if possible. 
- Consider the following example…
```cpp
constexpr int square(int x) {
	return x * x;
}
int main() {
	constexpr int val = square(10); // The result is computed at compile-time
	std::cout << val << std::endl;
	return 0;
}
```
In the above example, function square is computed at compile time (and is able to be done so given that all the necessary values are provided).
^1682992534927

What is a benefit to using `constexpr`? #card 
Can help improve performance since computation is done at compile-time rather than at run-time.
^1684424952051

What are some restrictions for `constexpr`? #card 
- Can only contain one line of code that compute and returns the result.
- hey cannot have loops or `switch` statements, or modify the state of global variables, etc.
- Starting from C++14, `constexpr` functions can have multiple statements, loops, and conditionals.
	- Even though restrictions are loosened, `constexpr` functions still can’t do everything a regular function can. (e.g., can’t throw exceptions, have a variable with static or thread storage duration, etc.)
^1684424952057


**Q:** How does `constinit` (since C++) work? #card 
**A:** <span class="spoiler">`constinit`</span> (since C++) specifies that a variable must be initialized with a constant expression.
^1682992534932


### 1.8: [Whitespace and basic formatting](https://www.learncpp.com/cpp-tutorial/whitespace-and-basic-formatting/)

{**Whitespace**} is a term that refers to characters that are used for formatting purposes. In C++, this refers primarily to spaces, tabs, and newlines.
^1684853063175

Does the following code compile?
```cpp
std::cout << "Hello "
     "world!"; // prints "Hello world!"
```
#card 
Yes, quoted text separated by nothing but whitespace (spaces, tabs, or newlines) will be concatenated.
^1684853063180

Does the following code compile? 
```cpp
std::cout << "Hello "
     "world!"; // prints "Hello world!"
```
#card 
No, newlines are not allowed in quoted text!
^1684853063184

-----
#### Basic formatting

What is best practice regarding line length? #card 
> [!tip]+ Best practice
> Consider keeping your lines to 80 chars or less in length.
^1684853063188

What should one do if a long line is split with an operator (e.g. << or +)? #card 
```cpp
std::cout << 3 + 4
    + 5 + 6
    * 7 * 8;
```
^1684853063192

-----
#### Automatic formatting

What approach should you use for formatting? #card 
> [!tip]+ Best practice
> Using the automatic formatting feature is highly recommended to keep your code’s formatting style consistent.
^1684853063196

### 1.9: [Introduction to literals and operators](https://www.learncpp.com/cpp-tutorial/introduction-to-literals-and-operators/)

#### **Literals**

A {**literal**} (also known as a {literal constant}) is a fixed value that has been inserted directly into the source code.
^1684853063200

-------
#### **Operators**

In mathematics, an {**operation**} is a mathematical process involving zero or more input values (called {**operands**}) that produces a new value (called an *output value*). This specific operation is denoted by a symbol called an **operator**.
^1684853063204

What should we append to the operator’s symbol? #card 
> [!note] Author’s note
> For reasons that will become clear when we discuss operators in more detail, for operators that are symbols, it is common to append the operator’s symbol to the word _operator_.
> For example, the plus operator would be written `operator+`, and the extraction operator would be written `operator>>`.
^1684853063208

The number of operands that an operator takes as input is called the operator’s {**arity**}.
^1684853063212

How many arities does operators in C++ have? #card 
There are four different arties in C++.
^1684853063216

{**Unary**} operators act on one operand. An example of a unary operator is the `-` operator. For example, given `-5`, `operator-` takes literal operand `5` and flips its sign to produce new output value `-5`.
^1684853063221

{**Binary**} operators act on two operands (often called _left_ and _right_, as the left operand appears on the left side of the operator, and the right operand appears on the right side of the operator). An example of a binary operator is the `+` operator. For example, given `3 + 4`, `operator+` takes the left operand `3` and the right operand `4` and applies mathematical addition to produce new output value `7`. The insertion (`<<`) and extraction (`>>`) operators are binary operators, taking `std::cout` or `std::cin` on the left side, and the value to output or variable to input to on the right side.
^1684853063225
^1684853063229

{**Ternary**} operators act on three operands. There is only one of these in C++ (the conditional operator), which we’ll cover later.
^1684853063233

{**Nullary**} operators act on zero operands. There is also only one of these in C++ (the throw operator), which we’ll also cover later.
^1684853063237

Do some operators have more than one meaning depending on how they are used? #card 
Yes, take for example the `operator-`. Could mean either subtraction or simply changing to the opposite the values sign.
^1684853063241

-----
#### **Chaining operators**

How do arithmetic operators execute? #card 
In the same order as they do in standard mathematics: *PEMDAS*.
^1684853063245

-----
#### **Return values and side effects**

An operator that has some observable effect beyond producing a return value is said to have a {**side effect**}.
^1684868417699

How should one visualize how operators return values? #card 
> [!note] For advanced readers
> For the operators that we call primarily for their return values (e.g. `operator+` or `operator*`), it’s usually obvious what their return values will be (e.g. the sum or product of the operands).
> For the operators we call primarily for their side effects (e.g. `operator=` or `operator<<`), it’s not always obvious what return values they produce (if any). For example, what return value would you expect `x = 5` to have?
> Both `operator=` and `operator<<` (when used to output values to the console) return their left operand. Thus, `x = 5` returns `x`, and `std::cout << 5` returns `std::cout`. This is done so that these operators can be chained. ^1684868417704
> For example, `x = y = 5` evaluates as `x = (y = 5)`. First `y = 5` assigns `5` to `y`. This operation then returns `y`, which can then be assigned to `x`.
> `std::cout << "Hello " << "world"` evaluates as `(std::cout << "Hello ") << "world!"`. This first prints `"Hello "` to the console. This operation returns `std::cout`, which can then be used to print `"world!"` to the console as well. ^1684868417708
^1684868417713

-------
#### **Quiz time**

For each of the following, indicate what output they produce:

a)
```cpp
std꞉꞉cout << 3 + 4 << '\n';
```
#card 
7
^1684853330800

b)
```cpp
std꞉꞉cout << 3 + 4 - 5 << '\n';
```
#card 
2
^1684853340268

c)
```cpp
std꞉꞉cout << 2 + 3 * 4 << '\n';
```
#card 
14
^1684853330804

d) Extra credit:
```cpp
int x { 2 };
std꞉꞉cout << (x = 5) << '\n';
```
#card 
Will print 5.
^1684853330809

### 1.10: [Introduction to expressions](https://www.learncpp.com/cpp-tutorial/introduction-to-expressions/)

#### **expressions**

An {**expression**} is a combination of literals, variables, operators, and function calls that calculates a single value. The process of executing an expression is called {**evaluation**}, and the single value produced is called the {**result**} of the expression.
^1684853490140

Are expression only those combinations that are used to calculate a values? #card 
> [!note] Related content
> While most expressions are used to calculate a value, expressions can also identify an object (which can be evaluated to get the value held by the object) or a function (which can be called to get the value returned by the function). We talk more about this in lesson [9.2 -- Value categories (lvalues and rvalues)](https://www.learncpp.com/cpp-tutorial/value-categories-lvalues-and-rvalues/).
> For now, we’ll assume all expressions calculate values.
^1684853741976

Expressions are always evaluated as part of {**statements**}.
^1684853741981

-----
#### **Expression statements**

An {**expression statement**} is a statement that consists of an expression followed by a semicolon. When the {expression statement} is executed, the expression will be evaluated.
^1684853741985

-----
#### **Useless expression statement**

-----
#### **Quiz Time**

##### **Question #1**

What is the difference between a statement and an expression? #card 
Statements are used when we want the program to perform an action. Expressions are used when we want the program to calculate a value.
^1684868417718

-----
##### **Question #2**

Indicate whether each of the following lines are _statements that do not contain expressions_, _statements that contain expressions_, or are _expression statements_.

a)
```cpp
int x;
```
#card 
Statement does not contain an expression (this is just a variable definition)
^1684868417723

b)
```cpp
int x = 5;
```
#card 
Statement contains an expression (The right-hand side of the equals sign is an expression containing a single value, but the rest of the statement isn’t an expression).
^1684868417728

c)
```cpp
x = 5;
```
#card 
Expression statement (the entire statement is an expression, terminated by a semicolon).
^1684868417732


d) Extra credit:
```cpp
foo(); // foo is a function
```
#card 
Function calls are part of an expression, so this is an expression statement.
^1684868417737

e) Extra credit:
```cpp
std꞉꞉cout << x; // Hint: operator<< is a binary operator.
```
#card 
`operator<<` is a binary operator, so `std::cout` must be the left-hand operand, and `x` must be the right-hand operand. Since that’s the entire statement, this must be an expression statement. ^1684868417741
^1684868417745


-----
##### **Question #3**

Determine what values the following program outputs. Do not compile this program. Just work through it line by line in your head.

```cpp
#include <iostream>
int main()
{
	std꞉꞉cout << 2 + 3 << '\n';
	int x{ 6 };
	int y{ x - 2 };
	std꞉꞉cout << y << '\n';
	int z{ };
	z = x;
	std꞉꞉cout << z - x << '\n';
	return 0;
}
```
#card 
Output is…
```
5
4
0
```
^1684868417749

### 1.11: [Developing your first program](https://www.learncpp.com/cpp-tutorial/developing-your-first-program/)

-----
#### **Multiply by 2**

How should we tackle this? #card 
In steps.
> [!tip]+ Best practice
> New programmers often try to write an entire program all at once, and then get overwhelmed when it produces a lot of errors. A better strategy is to add one piece at a time, make sure it compiles, and test it. Then when you’re sure it’s working, move on to the next piece.
^1684868417753

-----
#### **The not-good solution**

-----
#### **The mostly-good solution**


-----
#### **The preferred solution**

-----
#### **Quiz Time**

Modify the solution to the “best solution” program above so that it outputs like this (assuming user input 4):
```
Enter an integer: 4
Double 4 is: 8
Triple 4 is: 12
```
#card 
```cpp
#include <iostream>  
int main() {  
    int numToMultiply {};  
    std꞉꞉cout << "Enter an integer: ";  
    std꞉꞉cin >> numToMultiply;  
    std꞉꞉cout << "Double " << numToMultiply << " is: " << numToMultiply * 2 << std꞉꞉endl;  
    std꞉꞉cout << "Triple " << numToMultiply << " is: " << numToMultiply * 3 << std꞉꞉endl;  
    return 0;  
}
```
^1684868417758

### 1.x: [Chapter 1 summary and quiz](https://www.learncpp.com/cpp-tutorial/chapter-1-summary-and-quiz/)

#### **Chapter Review**

A {**statement**} is a type of instruction that causes the program to perform some action. Statements are often terminated by a semicolon.
^1684868417761

A {**function**} is a collection of statements that execute sequentially. Every C++ program must include a special function named _main_. When you run your program, execution starts at the top of the _main_ function.
^1684868417765

The rules that govern how elements of the C++ language are constructed is called a {**syntax**}. A {**syntax**} error occurs when you violate the grammatical rules of the language.
^1684868417769

{**Comments**} allow the programmer to leave notes in the code. C++ supports two types of comments. Line comments start with a `//` and run to the end of the line. {Block comments} start with a `/*` and go to the paired `*/` symbol. Don’t nest {block} comments.
^1684868417774


{**Data**} is any information that can be moved, processed, or stored by a computer. A single piece of data, stored somewhere in memory is called a {**value**}.
^1684868417778

A variable is a named piece of memory that we can use to store values. A variable’s name is called an {**identifier**}. In order to create a variable, we use a statement called a {**definition statement**}. When the program is run, each defined variable is {**instantiated**}, which means it is assigned a memory address.
^1684868417782

A {data type} tells the compiler how to interpret a piece of data into a meaningful value. An {**integer**} is a number that can be written without a fractional component, such as 4, 27, 0, -2, or -12.
^1684868417787

Copy assignment (via {operator=}) can be used to assign an already created variable a value.
^1684868417791

Initialization can be used to give a variable a value at the point of creation. C++ supports 3 types of initialization:
- {Copy initialization}.
^1684868417795
- {Direct initialization (also called parenthesis initialization)}.
^1684868417799
- {List initialization (also called uniform initialization or brace initialization)}.
^1684868417804

You should prefer {brace initialization} over the other initialization forms, and prefer {initialization} over {assignment}.
^1684868417809

Although you can define multiple variables in a single statement, it’s better to {define and initialize each variable on its own line, in a separate statement}.
^1684868484099

{**std꞉꞉cout**} and operator<< allow us to output an expression to the console as text. {**std꞉꞉endl**} outputs a newline character, forcing the console cursor to move to the next line. {**std꞉꞉cin**} and operator>> allow us to get a value from the keyboard. ^1684868417813
^1684868859281

A variable that has not been given a value is called an {**uninitialized variable**}. Trying to get the value of an uninitialized variable will result in {**undefined behavior**}, which can manifest in any number of ways.
^1684868859286

C++ reserves a set of names called {**keywords**}. These have special meaning within the language and may not be used as variable names.
^1684868859290

A {**literal constant**} is a fixed value inserted directly into the source code. Examples are 5 and “Hello world!”.
^1684868859294

An {**operation**} is a mathematical process involving zero or more input values, called {**operands**}. The specific operation to be performed is denoted by the provided {**operator**}. The result of an operation produces an output value.
^1684868859299

{**Unary**} operators take one operand. {**Binary**} operators take two operands, often called left and right. Ternary operators take three operands. {**Nullary**} operators take zero operands.
^1684868859303

An {**expression**} is a combination of literals, variables, operators, and function calls that are evaluated to produce a single output value. The calculation of this output value is called {**evaluation**}. The value produced is the {**result**} of the expression.
^1684868859308

An {**expression statement**} is an expression that has been turned into a statement by placing a semicolon at the end of the expression.
^1684868859312


-------
#### **Quiz time**

##### **Question #1**

What is the difference between initialization and assignment? #card 
Initialization provides a variable with an initial value (at the point of creation). Assignment gives a variable a new value after the variable has already been defined.

##### **Question #2**

When does undefined behavior occur? What are the consequences of undefined behavior? #card 
Undefined behavior occurs when the programmer does something that is ill-specified by the C++ language. The consequences could be almost anything, from crashing to producing the wrong answer to working correctly anyway.

##### **Question #3**

Write a program that asks the user to enter a number, and then enter a second number. The program should tell the user what the result of adding and subtracting the two numbers is.
The output of the program should match the following (assuming inputs of 6 and 4):
```
Enter an integer: 6
Enter another integer: 4
6 + 4 is 10.
6 - 4 is 2.
```
#card 