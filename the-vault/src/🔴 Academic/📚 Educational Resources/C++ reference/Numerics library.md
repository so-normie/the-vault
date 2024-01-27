---
tags:
  - 🔴-academic/📚-educational-resources/name/cpp-reference
  - 🔴-academic/📚-educational-resources/discipline/computer-science/programming-language/cpp
  - 🔴-academic/📚-educational-resources/discipline/computer-science/programming-language/c
  - study-note
cards-deck: Default::Computer Science
created: 2023-09-03 08:46
updated: 2024-01-25T16:47
---

# C++ reference

## Numerics library

### Common mathematical functions

**Flashcard 1**:
Q: What are the C++ mathematical functions for computing the smallest integer value not less than the given value? #card-reverse 
A: `std::ceil`, `std::ceilf`, and `std::ceill`


**Flashcard 2**:
Q: What is the prototype of the `std::ceil` function in C++? #card-reverse 
A: double `std::ceil(double x) noexcept;`


**Flashcard 3**:
Q: What is the prototype of the `std::ceilf` function in C++? #card-reverse 
A: `float std::ceilf(float x) noexcept;`


**Flashcard 4**:
Q: What is the prototype of the `std::ceill` function in C++? #card-reverse 
A: `long double std::ceill(long double x) noexcept;`


**Flashcard 5**:
Q: Which header should be included to use the `std::ceil` functions in C++? #card 
A: `#include <cmath>`


**Flashcard 6**:
Q: Which C++ function should be used when dealing with float type arguments? #card-reverse 
A: `std::ceilf`


**Flashcard 7**:
Q: Which C++ function should be used when dealing with long double type arguments? #card-reverse 
A: `std::ceill`


**Flashcard 8**:
Q: Which C++ function should be used when dealing with double type or default arguments? #card-reverse 
A: `std::ceil`


**Front:** What is an exception in C++? #card-reverse 
**Back:** In C++, an <span class="spoiler">exception</span> is an event that occurs during the execution of a program that disrupts the normal flow of the program’s instructions. <span class="spoiler">Exceptions</span> provide a way to transfer control from one part of a program to another when an error or other exceptional condition occurs.


**Front:** What happens when an exception is thrown in C++? #card 
**Back:** When an exceptional condition arises, an exception is thrown. This transfers control to a special function called a handler, which is responsible for dealing with the exceptional condition. The handler can take any appropriate action, such as displaying an error message or attempting to recover from the error.


**Front:** What does the `noexcept` keyword mean in C++? #card-reverse  
**Back:** The <span class="spoiler">`noexcept`</span> keyword in C++ specifies whether a function could throw exceptions or not. It is used as part of a function’s declaration, following its parameter list, and takes the form of <span class="spoiler">`noexcept`</span> or <span class="spoiler">`noexcept(expression)`</span>. The `expression` is a constant expression that must evaluate to a boolean value.


**Front:** What happens if an exception occurs within a function declared with `noexcept`? #card 
**Back:** If an exception does occur within a function declared with `noexcept`, it will result in a call to `std::terminate`, which by default calls <span class="spoiler">`abort`</span> to terminate the program.




