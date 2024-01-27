---
tags:
  - 🔴-academic/📚-educational-resources/name/learncpp-com
  - 🔴-academic/📚-educational-resources/discipline/computer-science/programming-language/cpp
  - study-note
cards-deck: Default::Computer Science
created: 2023-10-27T17:38
updated: 2024-01-25T16:47
---

# LearnCpp.com

## Chapter 2꞉ C++ Basics: Functions and Files

### 2.1: [Introduction to functions](https://www.learncpp.com/cpp-tutorial/introduction-to-functions/)

A {**function**} is a reusable sequence of statements designed to do a particular job.
^1684877088201

In C++, must every executable program must have a function named *main*? #card 
Yes, this is where the program starts execution when its run.
^1684877088209

Functions that you write yourself are called {**user-defined functions**}.
^1684877088213

A {**function call**} is an expression that tells the CPU to interrupt the current function and execute another function. The CPU “puts a bookmark” at the current point of execution, and then {**calls**} (executes) the function named in the function call.
^1684877088216

The function initiating the function call is the {**caller**}, and the function being called is the {**callee**} or {**called**} function.
^1684877088221

-------
#### **An example of a user-defined function**

```cpp
returnType functionName() // This is the function header (tells the compiler about the existence of the function)
{
    // This is the function body (tells the compiler what the function does)
}
```
The first line is informally called the {**function header**}, and it tells the compiler about the existence of a function, the function’s name, and some other information that we’ll cover in future lessons (like the return type and parameter types).
^1684877088225

The curly braces and statements in-between are called the **function body**. This is where the statements that determine what your function does will go.

-------
#### **Calling functions more than once**


-------
#### **Functions calling functions calling functions**

-------
#### **Nested functions are not supported**

Does C++ allow nested functions? #card 
No, unlike some other programming languages, in C++, functions cannot be defined inside other functions. 
^1684877088229

-------
#### **Quiz time**

##### **Question #1**

In a function definition, what are the curly braces and statements in-between called? #card 
The function body.
^1684877088232

##### **Question #2**

What does the following program print? Do not compile this program, just trace the code yourself.
```cpp
#include <iostream> // for std::cout
void doB()
{
    std::cout << "In doB()\n";
}
void doA()
{
    std::cout << "In doA()\n";
    doB();
}
// Definition of function main()
int main()
{
    std::cout << "Starting main()\n";
    doA();
    doB();
    std::cout << "Ending main()\n";
    return 0;
}
```
#card 
```
In doA()
In doB()
In doB()
```
^1684877088236

### 2.2: [Function return values (value-returning functions)](https://www.learncpp.com/cpp-tutorial/function-return-values-value-returning-functions/)

-----
#### **Return values**

A function’s {**return type**} is the type that is defined before the function’s name.
^1684889259282

A {**return statement**} indicates the specific value being returned to the caller.
^1684889259288

The specific value returned from a function is called the {**return value**}.
^1684889259292

When the return statement is executed, the function exits immediately, and the return value is copied from the function back to the caller. This process is called {**return by value**}.
^1684889259295

-------
#### **Fixing our challenge program**


-----
#### **Revisiting main()**

The return value from `main` is sometimes called a **status code** (also sometimes called an **exit code**, or rarely a **return code**), as it is used to indicate whether the program ran successfully or not.

What is the best practice regarding what the `main` function should return? #card 
> [!tip] Best practice
> Your `main` function should return the value `0` if the program ran normally.
^1684889259298

A {non-zero} status code is often used to indicate failure (and while this works fine on most operating systems, strictly speaking, it’s not guaranteed to be portable).
^1684889259302

In this context, how can we use the `<cstdlib>` library? #card 
> [!note] For advanced readers
> The C++ standard only defines the meaning of 3 status codes: 0, EXIT_SUCCESS, and EXIT_FAILURE. 0 and EXIT_SUCCESS both mean the program executed successfully. EXIT_FAILURE means the program did not execute successfully.
> 
> EXIT_SUCCESS and EXIT_FAILURE are preprocessor macros defined in the <cstdlib> header: 
> <p class="language-cpp"><code class="language-cpp is-loaded">	<span class="token macro property"><span class="token directive-hash">#</span><span class="token directive keyword">include</span><span class="token string">&lt;cstdlib&gt;</span><span class="token comment">// for EXIT_SUCCESS and EXIT_FAILURE</span><br></br></span><span class="token keyword">int</span> <span class="token function">main</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation"> {</span><br></br><span class="token keyword">&nbsp;&nbsp;&nbsp;&nbsp;return</span> EXIT_SUCCESS<span class="token punctuation">;</span><br></br><span class="token punctuation">}</span></code></p>
^1684907741775
> If you want to maximize portability, you should only use 0 or EXIT_SUCCESS to indicate a successful termination, or EXIT_FAILURE to indicate an unsuccessful termination.
> 
> We cover the preprocessor and preprocessor macros in lesson [2.10 -- Introduction to the preprocessor](https://www.learncpp.com/cpp-tutorial/introduction-to-the-preprocessor/).
^1684889259310


-----
#### **A value-returning function that does not return a value will produce undefined behavior**

A function that returns a value is called a {**value-returning function**}. A function is value-returning if the return type is anything other than `void`.
^1684889259314

-----
#### **A value-returning function that does not return a value will produce undefined behavior**

The only exception to the rule that a value-returning function must return a value via a return statement is for function {`main()`}. The function `main()` will implicitly return the value {`0`} if no return statement is provided.
^1684889259318

-----
#### **The function author can decide what the return value means**


-----
#### **Reusing functions**

What does DRY stand for? #card 
Don’t Repeat Yourself
^1684907741780

What is the opposite of DRY? #card 
> [!note] As an aside…
> The opposite of DRY is WET (“Write everything twice”).
^1684907741785

-----
#### **Conclusion**

-----
#### **Quiz time**

##### **Question #1**

Inspect (do not compile) each of the following programs. Determine what the program will output, or whether the program will generate a compiler error.

Assume you have “treat warnings as errors” turned off.

1a)
```cpp
#include <iostream>
int return7()
{
    return 7;
}
int return9()
{
    return 9;
}
int main()
{
    std::cout << return7() + return9() << '\n';
    return 0;
}
```
#card 
This program prints the number 16
^1684907741789

1b)
```cpp
#include <iostream>
int return7()
{
    return 7;
    int return9()
    {
        return 9;
    }
}

int main()
{
    std::cout << return7() + return9() << '\n';
    return 0;
}
```
#card 
This program will not compile. Nested functions are not allowed.
^1684907741793

1c)
```cpp
#include <iostream>
int return7()
{
    return 7;
}
int return9()
{
    return 9;
}
int main()
{
    return7();
    return9();
    return 0;
}
```
#card
This program compiles but does not produce any output. The return values from the functions are not used for anything (and are thus discarded).
^1684907741796

1d)
```cpp
#include <iostream>
int getNumbers()
{
    return 5;
    return 7;
}
int main()
{
    std::cout << getNumbers() << '\n';
    std::cout << getNumbers() << '\n';
    return 0;
}
```
#card
This program prints 5 twice (on separate lines). Both times when function getNumbers() is called, the value 5 is returned. When the return 5 statement is executed, the function is exited immediately, so the return 7 statement never executes.
^1684907741800

1e)
```cpp
#include <iostream>
int return 5()
{
    return 5;
}
int main()
{
    std::cout << return 5() << '\n';
    return 0;
}
```
#card
This program will not compile because the function has an invalid name. We talked about naming rules in lesson [1.7 -- Keywords and naming identifiers](https://www.learncpp.com/cpp-tutorial/keywords-and-naming-identifiers/#rules).
^1684907741804

1f) Extra credit: Will the following program compile?
```cpp
#include <iostream>
int returnFive()
{
    return 5;
}
int main()
{
    std::cout << returnFive << '\n';
    return 0;
}
```
#card
This program will compile, but the function will not be called because the function call is missing parentheses.
^1684907741808

### 2.3: [Void functions (non-value returning functions)](https://www.learncpp.com/cpp-tutorial/void-functions-non-value-returning-functions/)


-----
#### **Void return values**
To tell the compiler that a function does not return a value, a return type of {**void**} is used. #card
^1684907741811 
For example:
```cpp
#include <iostream>
// void means the function does not return a value to the caller
void printHi()
{
    std::cout << "Hi" << '\n';
    // This function does not return a value so no return statement is needed
}
int main()
{
    printHi(); // okay: function printHi() is called, no value is returned
    return 0;
}
```
^1684907741815

-----
#### **Void functions don’t need a return statement**

Can you put a return statement at the end of a function? #card 
A return statement (with no return value) can be used in a void function -- such a statement will cause the function to return to the caller at the point where the return statement is executed. This is the same thing that happens at the end of the function anyway. Consequently, putting an empty return statement at the end of a void function is redundant:
```cpp
#include <iostream>
// void means the function does not return a value to the caller
void printHi()
{
    std::cout << "Hi" << '\n';
    return; // tell compiler to return to the caller -- this is redundant since the return will happen at the end of the function anyway!
} // function will return to caller here
int main()
{
    printHi();
    return 0;
}
```
^1684907741818


What is the best practice regarding putting a return statement at the end of a non-value returning function? #card 
> [!tip] Best practice
> Do not put a return statement at the end of a non-value returning function.
^1684907741822

-----
#### **Void functions can’t be used in expression that require a value**

What is a critical tip regarding this concept? #card 
> [!tip] Tip
>
> Some statements require values to be provided, and others don’t.
> 
> When we call a function by itself (e.g. the first `printHi()` in the above example), we’re calling a function for its behavior, not its return value. In this case, we can call either a non-value returning function, or we can call a value-returning function and just ignore the return value.
> 
> When we call a function in a context that requires a value (e.g. `std::cout`), a value must be provided. In such a context, we can only call value-returning functions.
> <pre><code class="language-cpp"><span class="hljs-meta">#<span class="hljs-meta-keyword">include</span> <span class="hljs-meta-string">&lt;iostream&gt;</span></span> <span class="hljs-comment">
> // Function that does not return a value</span>
<span class="hljs-function"><span class="hljs-keyword">void</span> <span class="hljs-title">returnNothing</span><span class="hljs-params">()</span></span> {
}<span class="hljs-comment">
// Function that returns a value</span>
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">returnFive</span><span class="hljs-params">()</span>
</span>{
<span class="hljs-keyword">    return</span> <span class="hljs-number">5</span>;
}
<span class="hljs-function"><span class="hljs-keyword">int</span> <span class="hljs-title">main</span><span class="hljs-params">()</span></span> {<span class="hljs-comment">
   // When calling a function by itself, no value is required</span>    
   returnNothing(); <span class="hljs-comment">// ok: we can call a function that does not return a value</span>
   returnFive();    <span class="hljs-comment">// ok: we can call a function that returns a value, and ignore that return value</span>    <span class="hljs-comment">
   // When calling a function in a context that requires a value (like std::cout)</span>
   <span class="hljs-built_in">std</span>::<span class="hljs-built_in">cout</span> &lt;&lt; returnFive();    <span class="hljs-comment">// ok: we can call a function that returns a value, and the value will be used</span> 
   <span class="hljs-built_in">std</span>::<span class="hljs-built_in">cout</span> &lt;&lt; returnNothing(); <span class="hljs-comment">// compile error: we can't call a function that returns void in this context</span>  
   <span class="hljs-keyword">return</span> <span class="hljs-number">0</span>;
}
</code></pre>
^1684955584641


-----
#### **Returning a value from a void function is a compiler error**

Trying to return a value from a non-value returning function will result in a {compilation error}.
^1684907741842

-----
#### **Early returns**

A return statement that is not the last statement in a function is called an {**early return**}.
^1684907741846

-----
#### **Quiz time**

##### **Question #1**
Inspect the following programs and state what they output, or whether they will not compile.

1a)
```cpp
#include <iostream>
void printA()
{
    std::cout << "A\n";
}
void printB()
{
    std::cout << "B\n";
}
int main()
{
    printA();
    printB();
    return 0;
}
```
#card 
This program prints the letters A and B on separate lines.
^1684907741849

1b)
```cpp
#include <iostream>
```cpp
void printA()
{
    std::cout << "A\n";
}
int main()
{
    std::cout << printA() << '\n';
    return 0;
}
```
#card 
This program does not compile. Function `printA()` returns `void`, which can’t be sent to `std::cout` to be printed. This will produce a compile error.
^1684907741857

-----
##### **Question #2**

What is an early return, and what is its behavior? #card 
An early return is a return statement that occurs before the last line of a function. It causes the function to return to the caller immediately.
^1684907741860

### 2.4: [Introduction to function parameters and arguments](https://www.learncpp.com/cpp-tutorial/introduction-to-function-parameters-and-arguments/)

-----
#### **Function parameters and arguments**

A **function parameter** is a variable used in the header of a function. Function parameters work almost identically to variables defined inside the function, but with one difference: they are initialized with a value provided by the caller of the function.


An **argument** is a value that is passed _from_ the caller _to_ the function when a function call is made:
```cpp
doPrint(); // this call has no arguments
printValue(6); // 6 is the argument passed to function printValue()
add(2, 3); // 2 and 3 are the arguments passed to function add()
```


-----
#### **How parameters and arguments work together**

When a function is called, all of the parameters of the function are created as variables, and the value of each of the arguments is copied into the matching parameter. This process is called **pass by value**.


-----
#### **Fixing our challenge program**


-----
#### **Using return values as arguments**

-----
#### **How parameters and return values work together**

-----
#### **More examples**


-----
#### **Conclusion**

-----
#### **Quiz time**


##### **Question #1**

What’s wrong with this program fragment?
```cpp
#include <iostream>
void multiply(int x, int y)
{
    return x * y;
}

int main()
{
    std::cout << multiply(4, 5) << '\n';
    return 0;
}
```
#card 
multiply() has a return type of void, meaning it is a non-value returning function. Since the function is trying to return a value (via a return statement), this function will produce a compiler error. The return type should be int.

### 2.5: [Introduction to local scope](https://www.learncpp.com/cpp-tutorial/introduction-to-local-scope/)

### 2.6: [Why functions are useful, and how to use them effectively](https://www.learncpp.com/cpp-tutorial/why-functions-are-useful-and-how-to-use-them-effectively/)

### 2.7: [Forward declarations and definitions](https://www.learncpp.com/cpp-tutorial/forward-declarations/)

### 2.8: [Programs with multiple code files](https://www.learncpp.com/cpp-tutorial/programs-with-multiple-code-files/)

### 2.9: [Naming collisions and an introduction to namespaces](https://www.learncpp.com/cpp-tutorial/naming-collisions-and-an-introduction-to-namespaces/)

### 2.10: [Introduction to the preprocessor](https://www.learncpp.com/cpp-tutorial/introduction-to-the-preprocessor/)

### 2.11: [Header files](https://www.learncpp.com/cpp-tutorial/header-files/)

### 2.12: [Header guards](https://www.learncpp.com/cpp-tutorial/header-guards/)

### 2.13: [How to design your first programs](https://www.learncpp.com/cpp-tutorial/how-to-design-your-first-programs/)

### 2.x: [Chapter 2 summary and quiz](https://www.learncpp.com/cpp-tutorial/chapter-2-summary-and-quiz/)



