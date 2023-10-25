---
title: Misc. Notes
created: 2023-09-03 08:46
updated: 2023-10-25T09:46
authors:
  - Edmund Leibert III
tags:
  - 🔴-academics/📚-educational-resources/name/🗒️-cpp
  - 🔴-academics/📚-educational-resources/source-format/miscellaneous
  - 🔴-academics/📚-educational-resources/discipline/computer-science/programming-language/cpp
  - 🔴-academics/📚-educational-resources/name/🗒️-cpp/🔖-bookmark/🗒️-cpp/misc-notes
  - study-note
cards-deck: 🔴 Academics::📚 Educational Resources::🗒️ C++::Misc. Notes
---

# Misc. Notes


---

> [!abstract]+ Abstract 
> 

---

> [!info]+ 🕸️ All Mention(s): 
> 

---

> [!info]+ 🔙 Previous Note(s):
> 

---

﹇<br>
When declaring a `struct` in C++, what must I *always* remember to add at the end of it? 

#card 

A semicolon. For example…
```cpp
struct structName {
	int field_name {initialvalue};
};
```

⌂
<br>﹈<br>^1694418100786


﹇<br>
What is the difference between brace and list initialization in C++?

#card 

In C++, both brace initialization (also known as uniform initialization) and list initialization are ways to initialize objects. They are similar in many ways, but there are some differences<sup>[\[1\]](https://stackoverflow.com/questions/18222926/what-are-the-advantages-of-list-initialization-using-curly-braces)</sup><sup>[\[2\]](https://stackoverflow.com/questions/21150067/initialization-difference-with-or-without-curly-braces-in-c)</sup>:
1. **Narrowing Conversions**: Brace initialization does not allow narrowing conversions<sup>[\[1\]](https://stackoverflow.com/questions/18222926/what-are-the-advantages-of-list-initialization-using-curly-braces)</sup>. For example, if you try to initialize an `int` with a `double`, brace initialization will give a compile error, while list initialization will not<sup>[\[1\]](https://stackoverflow.com/questions/18222926/what-are-the-advantages-of-list-initialization-using-curly-braces)</sup>.
2. **std::initializer_list Constructor**: If a class has a constructor that takes an `std::initializer_list`, brace initialization will prefer that constructor over others<sup>[\[1\]](https://stackoverflow.com/questions/18222926/what-are-the-advantages-of-list-initialization-using-curly-braces)</sup>. This can lead to some unexpected results if not taken into account<sup>[\[1\]](https://stackoverflow.com/questions/18222926/what-are-the-advantages-of-list-initialization-using-curly-braces)</sup>.
3. **Auto Keyword**: When using the `auto` keyword, brace initialization and list initialization behave differently<sup>[\[1\]](https://stackoverflow.com/questions/18222926/what-are-the-advantages-of-list-initialization-using-curly-braces)</sup>. For example…
	```cpp
	auto x = {1};
	``` 
	…will deduce `x` as `std::initializer_list<int>`, while…
	```cpp
	auto x{1};
	``` 
	…will deduce `x` as `int`<sup>[\[1\]](https://stackoverflow.com/questions/18222926/what-are-the-advantages-of-list-initialization-using-curly-braces)</sup>.

In general, brace initialization is preferred in modern C++ due to its safety features (like disallowing narrowing conversions) and its uniform syntax<sup>[\[1\]](https://stackoverflow.com/questions/18222926/what-are-the-advantages-of-list-initialization-using-curly-braces)</sup> However, it’s important to be aware of these differences when writing code.

⌂
<br>﹈<br>^1694908101464



﹇<br>
How do you create a dynamically allocated array of structs. 

#card 

One way is to use the `new` keyword…
```cpp
#include <iostream>
struct MyStruct {
    int x;
    int y;
};
int main() {
    int n = 10; // number of elements
    MyStruct *myArray = new MyStruct[n];
    for (int i = 0; i < n; i++) {
        myArray[i].x = i;
        myArray[i].y = i * 2;
    }
    for (int i = 0; i < n; i++)
        std::cout << myArray[i].x << " " << myArray[i].y << std::endl;
    delete[] myArray;
    return 0;
}
```

⌂
<br>﹈<br>^1694418100793


﹇<br>
What must I always remember when using the `new` keyword in C++? 

#card-reverse  

Don’t forget to deallocate the memory using `delete` or `delete[]`!

Here’s how you can delete a single object and an array of objects that were initialized using the `new` operator in C++:

```cpp
// Define a simple struct
struct MyStruct {
    int x;
    int y;
};

// Initialize a single MyStruct using new
MyStruct* p1 = new MyStruct();

// Use the struct
p1->x = 10;
p1->y = 20;

// Delete the struct
delete p1;
p1 = nullptr; // Avoid dangling pointer

// Initialize an array of MyStruct using new
MyStruct* p2 = new MyStruct[10];

// Use the struct array
for(int i = 0; i < 10; ++i) {
    p2[i].x = i;
    p2[i].y = i * 2;
}

// Delete the struct array
delete[] p2;
p2 = nullptr; // Avoid dangling pointer
```

In this example, `p1` is a pointer to a `MyStruct` object and `p2` is a pointer to an array of `MyStruct` objects. The `new` operator is used to allocate memory for the object and the array, and returns a pointer to them. After you’re done using the object and the array, you can use the `delete` and `delete[]` operators respectively to deallocate the memory and avoid memory leaks.

Remember, after calling `delete` or `delete[]` on a pointer, you should not use that pointer again. It’s a good practice to set the pointer to `nullptr` after deleting it. This helps prevent “dangling pointers”, which are pointers that point to memory that has already been deallocated. Dangling pointers can lead to undefined behavior and difficult-to-find bugs in your code.

⌂
<br>﹈<br>^1694418100796

﹇<br>
What should you do after calling `delete` or `delete[]` on a pointer? 

#card

You should not use that pointer again. It’s a good practice to set the pointer to `nullptr` after deleting it.

⌂
<br>﹈<br>^1694494768670


﹇<br>
Why should you set a pointer to `nullptr` after deleting it? 

#card

Setting a pointer to `nullptr` after deleting it helps prevent “dangling pointers”.

⌂
<br>﹈<br>^1694494768674


﹇<br>
What are “dangling pointers”? 

#card

“Dangling pointers” are pointers that point to memory that has already been deallocated.

⌂
<br>﹈<br>^1694494768678


﹇<br>
What can dangling pointers lead to? 

#card

Dangling pointers can lead to undefined behavior and difficult-to-find bugs in your code.

⌂
<br>﹈<br>^1694494768681


﹇<br>
True or false, does C++ provides a built-in way to resize an array that has already been allocated? 

#card 

False. [If you need to change the size of the array during runtime, you’ll have to create a new array with the desired size, copy the elements over, and delete the old array](https://www.learncpp.com/cpp-tutorial/dynamically-allocating-arrays/).

⌂
<br>﹈<br>^1694418100801


﹇<br>
Are arrays contiguous in C++? If so, what is the benefit? 

#card 

- Yes, arrays in C++ are stored in contiguous memory locations.
- This means that the elements of an array are stored next to each other in memory. 
- This property makes arrays efficient for accessing elements since the memory address of any element can be calculated using its index and the memory address of the first element.

⌂
<br>﹈<br>^1694418100805


﹇<br>
What is the downside of arrays being stored in contiguous memory in C++? 

#card-reverse 

- One downside of <span class="spoiler">arrays</span> being stored in contiguous memory locations is that it can be difficult to resize them during runtime. If you need to add more elements to an <span class="spoiler">array</span> than its current size allows, you’ll have to create a new <span class="spoiler">array</span> with a larger size, copy the elements from the old <span class="spoiler">array</span> to the new one, and then delete the old <span class="spoiler">array</span>. This process can be time-consuming and inefficient.
- Another downside is that inserting or deleting elements in the middle of an <span class="spoiler">array</span> can be slow because all the elements after the insertion or deletion point have to be shifted to make room for the new element or to close the gap left by the deleted element.
- These downsides can be mitigated by using dynamic data structures such as <span class="spoiler">vectors</span> or <span class="spoiler">linked lists</span>, which are designed to handle resizing and insertion/deletion more efficiently.

⌂
<br>﹈<br>^1694418100809


﹇<br>
Does `printf()` have an option for `std::string`? 

#card 

No, `printf()` does ***not*** have an option for `std::string`

⌂
<br>﹈<br>^1694418100813


﹇<br>
Can you initialize a  `char*` via brace initialization with an empty string? 

#card

Yes.

⌂
<br>﹈<br>^1694418100817


﹇<br>
Is the following a valid example of brace initialization? 

```cpp
int x = {4.4};
```

#card 

No, the syntax for brace initialization is as follows…

```cpp
T object {arg1, arg2, ...};
```

⌂
<br>﹈<br>^1694418100821


﹇<br>
In C++, can `struct` have a member functions? 

#card 

Yes.

⌂
<br>﹈<br>^1694418100825



﹇<br>
What must be *always* at the end of declaring a class? 

#card 

A semicolon.

⌂
<br>﹈<br>^1694418100832


﹇<br>
As recommended by LearnCpp.com, what are the general things one should do when configuring their compiler for a C++ project? 

#card 

1. Disable all compiler extensions
	- Use the flag(s) `-pedantic-errors`
2. Turn your warning levels up to the maximum, especially while you are learning. It will help you identify possible issues.
	- Use the flag(s) `-Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion`
3. Enable “Treat warning as errors.”
	- Use the flags(s) `-Werror`

⌂
<br>﹈<br>^1694418100835


﹇<br>
How would you convert the following implementation of a constructor to a initializer list?

```cpp
IntCollection::IntCollection(const IntCollection &c) {
    data = new int[static_cast<unsigned long long int>(c.capacity)];
    size = c.size;
    capacity = c.capacity;

    for (int i = 0; i < c.size; i++) {
        this->data[i] = c.data[i];
    }
}
```

#card 

```cpp
IntCollection::IntCollection(const IntCollection &c)
    : data(new int[static_cast<unsigned long long int>(c.capacity)]),
      size(c.size),
      capacity(c.capacity) {
    for (int i = 0; i < c.size; i++) {
        this->data[i] = c.data[i];
    }
}
```

⌂
<br>﹈<br>^1694418100839


﹇<br>
In C++, the initializer list provides several benefits:
1. ???
2. ???
3. ???

#card 

In C++, the initializer list provides several benefits:
1. **Efficiency**: Initializing member variables via an initializer list can be more efficient than doing so in the constructor body.
2. **Immutability**: For `const` or reference members, you must use an initializer list, as they can't be assigned values in the constructor body.
3. **Readability**: It makes the code more readable by listing all member initializations in one place.

⌂
<br>﹈<br>^1694834417492



﹇<br>
In C++, explain relatively in-depth how an initializer list enhances **efficiency**.

#card 

**Under the Hood for Efficiency**: When you use an initializer list, the member variables are initialized directly with the value, rather than first being default-constructed and then assigned a value. This "two-step" process in the absence of initializer lists can be less efficient, especially for complex objects. In some cases, it may even lead to double initialization. This efficiency gain is more noticeable for types where the cost of construction and assignment is high.

⌂
<br>﹈<br>^1694834417509


﹇<br>
In C++, explain relatively in-depth how an initializer list enhances **immutability**.

#card 

> Why _**must**_ you use initializer lists for `const` and Reference Members?

For `const` members and references, you _**must**_ use an initializer list because once they are constructed, you cannot change their value or bind them to another object. Unlike regular variables, `const` members are immutable by definition and must be initialized at the point of construction, which can only happen in an initializer list.

⌂
<br>﹈<br>^1694834417517


﹇<br>
In C++, explain relatively in-depth how an initializer list enhances **readability**.

#card 

**Readability**: Using initializer lists consolidates all the initialization logic in a single location right at the top of the constructor. This improves code readability, as anyone looking at your class will immediately know how members are being initialized without having to scan through the constructor's code block.

⌂
<br>﹈<br>^1694834417523



﹇<br>
When at the end of a while loop in C++, are all objects deconstructed? For instance, I instantiated the `Assignment` class (which is a derived class of the `Activity` class) in a `while(true)` loop. If the loop is not broken and goes for another iteration, the assignment class appears to be deconstructed.

#card 

In C++, an object’s destructor is called at the closing `}` for the block it was created in. So if you have a loop like this:

```c++
while (some_condition) {
    SomeClass some_object;
    some_object.someFunction();
    some_variable = some_object.some_member;
}
```

[Then the destructor for the object created in one iteration of the loop will be called at the end of the loop before another object is created](https://stackoverflow.com/questions/10388108/c-if-an-object-is-declared-in-a-loop-is-its-destructor-called-at-the-end-of)

⌂
<br>﹈<br>^1694418100843


﹇<br>
For the debug flag for g++, what is the difference between `-g` and `-ggdb`? 

#card 

- The `-g` flag produces debugging information in the operating system’s native format (stabs, COFF, XCOFF, or DWARF 2). On most systems that use stabs format, `-g` enables the use of extra debugging information that only GDB can use.
- The `-ggdb` flag produces debugging information specifically intended for GDB. This means to use the most expressive format available (DWARF 2, stabs, or the native format if neither of those are supported), including GDB extensions if at all possible.
- If you are using GDB, it is recommended to use `-ggdb`. If you do not use GDB, you can use -g and keep in mind that GDB works with the OS’s native format too.

⌂
<br>﹈<br>^1694418100846


In C++, the constructor is a {1:special member function} of a {1:class} that has the {2:same name as the class itself}. 
^1694834417534


The purpose of the constructor is to {1:initialize the member variables and allocate resources}. Constructors {2:don't have a return type, not even `void`}.
^1694834417540

﹇<br>
When you see a constructor definition, like the one you posted:

```cpp
IntCollection::IntCollection(const IntCollection &c)
    : data(new int[static_cast<unsigned long long int>(c.capacity)]),
      size(c.size),
      capacity(c.capacity) {
    // constructor body
}
```

What can you infer?

#card 

When you see a constructor definition, like the one you posted:

```cpp
IntCollection::IntCollection(const IntCollection &c)
    : data(new int[static_cast<unsigned long long int>(c.capacity)]),
      size(c.size),
      capacity(c.capacity) {
    // constructor body
}
```

The constructor is acting on an instance of a class, and the variables `data`, `size`, and `capacity` are assumed to be member variables of that class. The `IntCollection::` scope resolution operator makes it clear that this constructor is for the `IntCollection` class. Thus, it's assumed that `data`, `size`, and `capacity` have been declared in the class definition of `IntCollection`.

So when you see a constructor defined outside the class with variable names but without types, the types have typically been declared in the class definition. Here's an example for full context:

```cpp
// Class definition (often in a header file)
class IntCollection {
public:
    IntCollection(const IntCollection &c); // copy constructor
    // Other constructors and member functions
private:
    int* data;
    int size;
    int capacity;
};

// Constructor implementation (often in a cpp file)
IntCollection::IntCollection(const IntCollection &c)
    : data(new int[static_cast<unsigned long long int>(c.capacity)]),
      size(c.size),
      capacity(c.capacity) {
    // constructor body
}
```

The member variables `data`, `size`, and `capacity` are already typed in the class definition. The constructor then uses these pre-declared variables, so there's no need to redeclare their types in the constructor.

⌂
<br>﹈<br>^1694834417546




﹇<br>
Is C++ pass-by-reference *or* pass-by-value? 

#card 

C++ is *both* pass-by-reference and pass-by-value.

⌂
<br>﹈<br>^1694418100849



﹇<br>
What is **pass-by-value**? 

#card-reverse 

When we pass parameters by value, a copy of the value is passed to the parameter and any changes to that value is *not* affected likewise to the original value.
```cpp
void increment(int a) {
    a = a + 1;
    cout << "Inside increment function: " << a << endl;
}


int main() {
    int num = 5;
    increment(num);
    cout << "Inside main function: " << num << endl;
    return 0;
}
```

⌂
<br>﹈<br>^1694418100853


﹇<br>
What is **pass-by-reference** 

#card-reverse 

When we pass parameters by reference, a reference to the value is passed to the parameter and any changes to that value *is* affected likewise to the original value.
```cpp
void increment(int& a) {
    a = a + 1;
    cout << "Inside increment function: " << a << endl;
}


int main() {
    int num = 5;
    increment(num);
    cout << "Inside main function: " << num << endl;
    return 0;
}
```

⌂
<br>﹈<br>^1694418100857


﹇<br>
When passing-by-reference, what is the advantage of using **reference** (i.e., `&`)? 

#card 

- References are typically easier and safer to use. Unlike pointers, they can't be null, and they don't require dereferencing to access the value they're referencing.
- References provide a way to have function arguments behave like aliases for the original variables, which can make the code easier to read and understand.
- It's considered good practice to use references when you can, especially for const references, which allows the function to work with both lvalues and rvalues.

⌂
<br>﹈<br>^1694418100861


﹇<br>
When passing-by-reference, what is the advantage of using **pointers** (i.e., `*`)? 

#card 

- Pointers are more flexible and powerful, which can be both an advantage and a disadvantage. With pointers, you can point to different objects over their lifetime, and they can be reassigned to point to different objects.
- Pointers can be null, which can be useful in situations where you might not have a valid object to reference all the time.
- Pointers can be used in situations where "optional" semantics are needed. If a function accepts a pointer, you can pass in a null pointer to indicate that the argument isn't applicable.
- Pointers can also point to an array of values, which can be useful in certain situations.

⌂
<br>﹈<br>^1694418100865


﹇<br>
Do references require dereferencing? 

#card 

No. Note the difference to pointers…
```cpp
ref = 20  // reference 
*ptr = 20 // pointer (notice that we have to dereference the ptr)
```

⌂
<br>﹈<br>^1694418100868


﹇<br>
Can references be null? 

#card 

No.

⌂
<br>﹈<br>^1694418100872


﹇<br>
How would I go about creating a reference (i.e., alias) for the variable `x` in `int x = 10;`? 

#card 

```cpp
int x = 10;
int& ref = x; // ref is now a reference (i.e., alias) to 'x'
```

In this case, `ref` is a reference to `x`, meaning it's just another name for `x`. When you use `ref`, you're directly accessing and manipulating `x`, without needing to do anything special. For example:
```cpp
`ref = 20; // This changes 'x' to 20 
cout << x << endl; // This will output '20'`
```

⌂
<br>﹈<br>^1694418100875


﹇<br>
In C++, what is the difference between a **struct** and a **class**? 

#card 

In C++, the only difference between a `struct` and a `class` is the default accessibility of member variables and methods. In a `struct`, they are `public` by default; in a `class`, they are `private` by default [1](https://stackoverflow.com/questions/2750270/c-c-struct-vs-class) [2](https://learn.microsoft.com/en-us/cpp/cpp/classes-and-structs-cpp?view=msvc-170) [3](https://blogs.sw.siemens.com/embedded-software/2014/06/02/struct-vs-class-in-c/). Both classes and structs can have a mixture of public, protected and private members, can use inheritance, and can have member functions [4](https://stackoverflow.com/questions/54585/when-should-you-use-a-class-vs-a-struct-in-c).

⌂
<br>﹈<br>^1694418100879


﹇<br>
Why does importing from a `.cxx` into another `.cxx` file create an error in C++? But when I rename the importing `.cxx` file to `.hxx` it works? 

#card 

- The general convention in C++ is to declare functions, classes, and variables in header (.h or .hpp) files, and define them in implementation (.cpp) files. This is because the C++ compilation model doesn't support directly including one .cpp file into another.
- Here's a brief overview of how the C++ build process works:
	1. The preprocessor processes `#include` directives. When it encounters `#include "file.h"`, it replaces the `#include` directive with the content of "file.h". The same goes for `#include <file>`, but with different lookup rules for the file.
	2. The compiler then compiles each .cpp file into an "object file" (.o or .obj, depending on your system). If one .cpp file includes another, the content of the included file will be compiled multiple times, which can lead to multiple definition errors. Furthermore, when you define something in a .cpp file, it has internal linkage by default, meaning it can't be used from other .cpp files.
	3. The linker links all the object files into a single executable. If the same symbol (function, variable, etc.) is defined in multiple object files, it will result in a linking error, unless that symbol was declared as `inline` or `static`.
- So, if you need to use a function or a variable from one .cpp file in another, you should declare it in a .h file and include that .h file where you need it. Then you define it in a .cpp file. This allows the linker to link the code correctly. 
- Let's consider an example. We have a function `void hello()` in `hello.cpp` and we want to use it in `main.cpp`. Here is how you should do it:
```cpp
// hello.h
#pragma once
void hello();
// hello.cpp
#include "hello.h"
void hello() {
	// implementation here
}
// main.cpp
#include "hello.h"
int main() {
	hello();
	return 0;
}
```
- When you compile `main.cpp`, the preprocessor will replace `#include "hello.h"` with the content of `hello.h`, so the compiler knows the declaration of `hello()`. When you link `main.o` and `hello.o`, the linker knows how to link `hello()` correctly.

⌂
<br>﹈<br>^1694418100882


﹇<br>
In the broad sense, how should I think of mutexes in C++? What are some simple concrete examples displaying the concept? 

#card 

- In C++, a `std::mutex` can be used to protect shared data from being simultaneously accessed by multiple threads, thus preventing race condition. Here's a simple example:
```cpp
#include <iostream>
#include <thread>
#include <mutex>
std::mutex mtx; // global mutex
int count = 0;  // global count
void increaseCount(int id, int loop_count) {
    for (int i = 0; i < loop_count; ++i) {
        // lock the mutex before accessing shared data
        mtx.lock();
        ++count;
        std::cout << "Thread " << id << " incremented count to " << count << std::endl;
        mtx.unlock();
        // unlock after done
    }
}
int main() {
    const int loop_count = 100;
    // Create two threads that both run increaseCount()
    std::thread t1(increaseCount, 1, loop_count);
    std::thread t2(increaseCount, 2, loop_count);
    // Wait for both threads to finish
    t1.join();
    t2.join();
    return 0;
}
```
- This is a simple program where two threads increment a global counter. A mutex is used to ensure that only one thread increments and prints the counter at a time, preventing race condition.
- Note that `std::mutex::lock()` will block if the mutex is already locked by another thread, and will only return once the lock is acquired. Once you're done with the shared resource, you must call `std::mutex::unlock()` to release the lock, allowing other threads to acquire it.
- The `lock()` and `unlock()` operations should always come in pairs. If a thread fails to unlock a mutex, other threads will be blocked when they attempt to lock the mutex, resulting in a deadlock.
- It's generally recommended to use `std::lock_guard` or `std::unique_lock`, which provide a safer and more convenient way to manage locking and unlocking:
```cpp
void increaseCount(int id, int loop_count) {
    for (int i = 0; i < loop_count; ++i) {
        // lock the mutex before accessing shared data
        std::lock_guard<std::mutex> guard(mtx);
        ++count;
        std::cout << "Thread " << id << " incremented count to " << count << std::endl;
        // mtx is automatically released when guard goes out of scope
    }
}
```
- With `std::lock_guard`, you don't need to explicitly unlock the mutex. It will automatically be unlocked when the `lock_guard` object is destroyed, which happens when the object goes out of scope. This means the mutex will be unlocked even if an exception occurs, making your code more robust.

⌂
<br>﹈<br>^1694418100886


﹇<br>
What is a mutex in C++? 

#card

A mutex (short for "mutual exclusion") in C++ is a synchronization primitive that can be used to protect shared data from being simultaneously accessed by multiple threads, thus preventing race conditions.

⌂
<br>﹈<br>^1694418100890


﹇<br>
What is the purpose of the `std::mutex::lock()` function in C++? 

#card

The `std::mutex::lock()` function is used to lock the mutex. If the mutex is already locked by another thread, this call will block until the mutex is available to be locked.

⌂
<br>﹈<br>^1694418100894


﹇<br>
What is the purpose of the `std::mutex::unlock()` function in C++? 

#card

The `std::mutex::unlock()` function in C++ is used to unlock the mutex, making it available for other threads to lock and access the shared data.

⌂
<br>﹈<br>^1694418100898


﹇<br>
What is a deadlock in the context of mutexes?

#card

A deadlock is a situation where a thread fails to unlock a mutex. This results in other threads being blocked when they attempt to lock the mutex, as they are waiting for the mutex to be released.

⌂
<br>﹈<br>^1694418100901


﹇<br>
What are `std::lock_guard` and `std::unique_lock` in C++? 

#card

`std::lock_guard` and `std::unique_lock` are both classes in C++ that manage a mutex object. They lock the mutex upon construction and unlock the mutex upon destruction. This provides a safer and more convenient way to manage locking and unlocking, as it ensures the mutex will always be unlocked even if an exception occurs. 

⌂
<br>﹈<br>^1694418100905


﹇<br>
What is the difference between `std::lock_guard` and `std::unique_lock` in C++? 

#card

Both `std::lock_guard` and `std::unique_lock` automatically manage the lock state of a mutex. However, `std::unique_lock` is more flexible and allows for deferred locking, try-locking, timed locking, recursive locking, and transferring lock ownership, while `std::lock_guard` does not.

⌂
<br>﹈<br>^1694418100909


﹇<br> 
How does `std::lock_guard` ensure the mutex gets unlocked in C++? 

#card

`std::lock_guard` automatically unlocks the mutex when the `lock_guard` object is destroyed, which happens when the object goes out of scope. This ensures that the mutex will be unlocked even if an exception occurs.

⌂
<br>﹈<br>^1694418100913



﹇<br>
How can you initialize a char* pointer to point to the start of a C string in C++? 

#card 

Yes.

In C++, you can initialize a `char*` pointer to point to the start of a C string as follows:

```cpp
const char* str = "Hello, World!";
```

In this example, `str` is a pointer to a character and it’s pointing to the first character of the string “Hello, World!”. Please note that the string is constant, meaning you can’t modify the contents of the string through this pointer.

If you want to point to a non-constant C string, you can do it like this:

```cpp
char str[] = "Hello, World!";
char* ptr = str;
```

In this case, `ptr` points to the first character of the array `str`, and you can modify the contents of the string through this pointer. However, be careful not to go out of bounds of the array, as that would lead to undefined behavior.

⌂
<br>﹈<br>^1694418100917



﹇<br>
In C++, when you extract text from a string into a string stream, what is the time and space complexity of such an operation? For instance, consider the following snippet of code…

```cpp
std::string text {"Hello1232"}
stringstream ss;
ss << text;
```

#card 

When extracting text form a string, the *time* complexity of such an operation is **linear** (i.e., $\mathcal{O}(n)$). Additionally, the *space* complexity is also **linear** (i.e., $\mathcal{O}(n)$) since we need allocate the same space needed to contain the text.

⌂
<br>﹈<br>^1694418100921



﹇<br>
Is the generic function `std::reverse()`, from the `<algorithm>` library, an in-place algorithm? 

#card 

Yes, it is an in-place algorithm.

⌂
<br>﹈<br>^1694418100925


﹇<br>
What is the time and space complexity of `std::reverse()`? 

#card 

- Time: $\mathcal{O}\left( \frac{n}{2} \right)$
- Space:  $\mathcal{O}(1)$

⌂
<br>﹈<br>^1694418100929


﹇<br>
Is the following code valid? 

```cpp
int main() {  
    char* it;  
    char* str = " Hellow the Words";  
    it = str[0];  
    return 0;  
}
```

#card 

No! You can not use 

⌂
<br>﹈<br>^1694418100933


﹇<br>
Is the following code valid?

```cpp
#include <iostream>
int main() {
    char* it;
    char* str = " Hellow the Words";
    it = &str[0];
    *it = 'l';
    for(auto iter : str ) {
        std::cout << *iter;
    }
    std::cout << std::endl;   
    return 0;
}
```

#card 

- No, remember that to use `auto` range-based loops, the container/data structure must support the `.begin()` method.
	- C-style string literals do not support that
- Also, the statement `*it = 'l'` is wrong.
	- In C++, string literals are stored in read-only memory, and attempting to modify them results in undefined behavior.
	- To avoid this you can either use `std::string` or an **array** of `char`s.

⌂
<br>﹈<br>^1694418100937


﹇<br>
Lets say I have a `std::stringstream` called `ss`, is the following code valid? 

```
ss.insert("");
ss.clear()
```

#card 

- No, the following code is not valid. `stringstream` and other stream classes in C++ do not have an `insert` method.
	- If you want to insert data into a stream, use `<<` (i.e., insertion operator)
	- You can also use the `string` method to set the contents of the stream directly.

⌂
<br>﹈<br>^1694418100941


﹇<br>
How can I get `std::string` of all the values currently in a `std::stringstream`? 

#card 

Simply call `.str()` with no arguments.

⌂
<br>﹈<br>^1694418100946


﹇<br>
How can I completely erase/reset the values of a `std::stringstream` to empty? 

#card 

Simply call `.str("")` with the empty string (i.e., `""`) argument.

⌂
<br>﹈<br>^1694418100950


﹇<br>
What exactly is the heap in Computer Science? Particularly, what distinguishes it from stack? Reference not only the software layer but also the hardware layer/computer architecture that allows this. 

#card 

In computer science, the **heap** is a region of a computer’s memory space that is used for dynamic memory allocation. [It complements the **stack**, which is used for static memory allocation](https://www.geeksforgeeks.org/stack-vs-heap-memory-allocation/)[1](https://www.geeksforgeeks.org/stack-vs-heap-memory-allocation/)[2](https://www.baeldung.com/cs/memory-stack-vs-heap).

Here are some key differences between the heap and the stack:

1. [**Memory Allocation**: In a stack, memory allocation and deallocation are automatically done by the compiler, whereas in the heap, it needs to be done by the programmer manually](https://www.geeksforgeeks.org/stack-vs-heap-memory-allocation/)[1](https://www.geeksforgeeks.org/stack-vs-heap-memory-allocation/).
2. **Memory Management**: Stack memory uses a “Last In, First Out” (LIFO) data structure, meaning that the most recently added item is the first to be removed. [Heap memory, on the other hand, operates dynamically, which means that the program can allocate and deallocate memory areas of different sizes when necessary](https://www.baeldung.com/cs/memory-stack-vs-heap)[2](https://www.baeldung.com/cs/memory-stack-vs-heap).
3. [**Scope**: Stack memory is used for local variables and function calls, while heap memory is used for objects and data structures that need to persist outside of single function calls](https://www.geeksforgeeks.org/stack-vs-heap-memory-allocation/)[1](https://www.geeksforgeeks.org/stack-vs-heap-memory-allocation/)[2](https://www.baeldung.com/cs/memory-stack-vs-heap).
4. **Size**: Stack has a limited size, usually determined at the start of the program. [The heap, on the other hand, can grow and shrink during the execution of the program to accommodate dynamic memory needs](https://www.geeksforgeeks.org/stack-vs-heap-memory-allocation/)[1](https://www.geeksforgeeks.org/stack-vs-heap-memory-allocation/)[2](https://www.baeldung.com/cs/memory-stack-vs-heap).

In terms of hardware or computer architecture, both stack and heap are located in a computer’s RAM (Random Access Memory). The operating system allocates physical memory for both stack and heap when a process is started. [The exact location of the stack and heap in physical memory isn’t fixed and can be anywhere due to the Memory Management Unit (MMU) which adds a layer of indirection between virtual memory (used by your programs) and physical memory (the actual hardware)](https://stackoverflow.com/questions/30008025/where-is-heap-and-stack-on-physical-memory)[3](https://stackoverflow.com/questions/30008025/where-is-heap-and-stack-on-physical-memory). [Modern operating systems also implement techniques like Address Space Layout Randomization (ASLR) to randomly place these in virtual memory for security reasons](about:blank#)[3](https://stackoverflow.com/questions/30008025/where-is-heap-and-stack-on-physical-memory).

It’s important to note that while these concepts are common across many programming languages and operating systems, the exact details can vary.

⌂
<br>﹈<br>^1694418100953


﹇<br>
What is the difference between “heap” and “free store”?

#card 

[The terms “heap” and “free store” are often used interchangeably in the context of C++ memory management, but there is a subtle difference between them](https://stackoverflow.com/questions/6161235/what-is-the-difference-between-the-heap-and-the-free-store)[1](https://stackoverflow.com/questions/6161235/what-is-the-difference-between-the-heap-and-the-free-store)[2](https://stackoverflow.com/questions/16404748/why-should-i-prefer-using-the-free-store-over-the-heap)[3](https://www.appsloveworld.com/cplus/100/25/what-is-the-difference-between-the-heap-and-the-free-store):

- [**Heap**: A dynamic memory area that is allocated/freed by the `malloc` / `free` functions](https://stackoverflow.com/questions/6161235/what-is-the-difference-between-the-heap-and-the-free-store)[1](https://stackoverflow.com/questions/6161235/what-is-the-difference-between-the-heap-and-the-free-store)[3](https://www.appsloveworld.com/cplus/100/25/what-is-the-difference-between-the-heap-and-the-free-store).
- [**Free Store**: A dynamic memory area that is allocated/freed by `new` / `delete`](https://stackoverflow.com/questions/6161235/what-is-the-difference-between-the-heap-and-the-free-store)[1](https://stackoverflow.com/questions/6161235/what-is-the-difference-between-the-heap-and-the-free-store)[3](https://www.appsloveworld.com/cplus/100/25/what-is-the-difference-between-the-heap-and-the-free-store).

[It’s possible for `new` and `delete` to be implemented in terms of `malloc` and `free`, so technically, they could be the same memory area](https://stackoverflow.com/questions/6161235/what-is-the-difference-between-the-heap-and-the-free-store)[1](https://stackoverflow.com/questions/6161235/what-is-the-difference-between-the-heap-and-the-free-store)[3](https://www.appsloveworld.com/cplus/100/25/what-is-the-difference-between-the-heap-and-the-free-store). [However, as the standard doesn’t specify this, it’s best to treat them separately, and not to mix `malloc` / `delete` or `new` / `free`](https://stackoverflow.com/questions/16404748/why-should-i-prefer-using-the-free-store-over-the-heap)[2](https://stackoverflow.com/questions/16404748/why-should-i-prefer-using-the-free-store-over-the-heap).

[In practice, the term “heap” is often used in a more general sense to refer to dynamic memory allocation in various programming languages, while “free store” is a term more specific to C++](about:blank#)[1](https://stackoverflow.com/questions/6161235/what-is-the-difference-between-the-heap-and-the-free-store)[2](https://stackoverflow.com/questions/16404748/why-should-i-prefer-using-the-free-store-over-the-heap)[3](https://www.appsloveworld.com/cplus/100/25/what-is-the-difference-between-the-heap-and-the-free-store).

⌂
<br>﹈<br>^1694838074673


﹇<br>
Why is `for(auto num : list)` undesirable? 

#card 

You are iterating over elements by value which means we cannot modify them in place.

⌂
<br>﹈<br>^1694418100957


﹇<br>
Whare the three common examples in how one can use the `auto` keyword in a range-based for loop? 

#card 

1. [To iterate over elements by value, use `for (auto element : container)`](https://en.cppreference.com/w/cpp/language/range-for)[1](https://en.cppreference.com/w/cpp/language/range-for).
2. [To iterate over elements by reference, use `for (auto& element : container)`](https://en.cppreference.com/w/cpp/language/range-for)[1](https://en.cppreference.com/w/cpp/language/range-for).
3. [To iterate over elements by constant reference, use `for (const auto& element : container)`](https://en.cppreference.com/w/cpp/language/range-for)[1](https://en.cppreference.com/w/cpp/language/range-for).

⌂
<br>﹈<br>^1694418100961


﹇<br>
How do you declare an array of size three using the `array` library in C++? 

#card 

The traditional way…
```cpp
#include <array>


// ...

array<int,3> arr = [3, 2, 1];
```
An experimental, yet easier way… *\*Notice how we don’t have to concern ourselves with specifying the size!*
```cpp
#include <arrray>

auto a2 = std::to_array({0, 2, 1, 3});
```

⌂
<br>﹈<br>^1694418100965


﹇<br>
Is the following code valid?
```cpp
array<int> arr = [3, 2, 1];
```

#card 

- No! You need to specify the size for the template parameter.
- If you don’t want to have to do that, use `std::to_array()`.

⌂
<br>﹈<br>^1694418100969


﹇<br>
What library is the function `to_array()` a part of? 

#card 

It is part of the `<array>` library.

⌂
<br>﹈<br>^1694418100973


﹇<br>
What is the difference between `min()` and `lowest()` for `numeric_limits<T>`?

#card 

- `lowest()` returns the least (including negative) value for that type
- `min()` returns the smallest finite (positive only) value for that type

⌂
<br>﹈<br>^1694418100977


﹇<br>
Is the following code valid?

```cpp
//  
// Created by edmun on 8/11/2023.  
//  
#include <iostream>  
using namespace std;  
int main() {  
    for(int i {0}; i < 20; i++) {  
        int case_val {0}  
        switch (case_val) {  
            case 0:  
                cout << i << ": First" << endl;  
            case 1:  
                cout << i << ": Second" << endl;  
        }  
        case_val++;  
        if(case_val > 1) {  
            case_val = 0;  
        }  
    }  
    return 0;  
}
```

#card

No, I am missing a semicolon at the end of the line before the `switch` statement.

⌂
<br>﹈<br>^1694418100984


﹇<br>
How can  I go about using alternating values in C++?

#card 

One way is to use a `switch` statement with an iterator `i` that increments and then is reset back to zero after a certain value has been reached.

⌂
<br>﹈<br>^1694418100991


﹇<br>
Is the following snippet valid in C++?

```cpp
std::array<int> arr = {1,2,3,4};
```

#card 

No, it is not. Remember that for `std::array` you _must_ also specify the size of the `std::array` like so…
```cpp
std::array<int,4> arr = {1,2,3,4}; // Size of array is 4
```

⌂
<br>﹈<br>^1694418100998


﹇<br>
Is the following code valid in C++?

```cpp
for(const auto& i : arr) {
	i = 4;
}
```

#card 

The following code is **not** valid. `i` is a `const int&` so it is not allowed to modify the value at that address.

⌂
<br>﹈<br>^1694494807603



﹇<br>
Is the following code valid in C++?

```cpp
for(auto i : arr) {
	i = 4;
}
```

#card 

- While the code **will** compile, note that it **won’t** change the value of `arr` it will _only_ change the value of `i`.
- Recall that in this form of a `for`-range loop, `i` is of type `int` (i.e., simply just a _copy_ of the value in `arr`)

⌂
<br>﹈<br>^1694494836967



﹇<br>
If the following code valid in C++?

```cpp
for(auto& i : arr) {
	i = 4;
}
```

#card 

- Yes, the following code will compile and its is logically sound.
- `i` is of type `int &` so you can actually modify the elements of `arr`.

⌂
<br>﹈<br>^1694418101012


﹇<br>
Is the following code valid in C++?

```cpp
for(auto& i : arr) {
	i = 4;
	cout << i << endl;
}
```

#card 

- Yes, the following code will compile.
- Remember that since `i` is of type `int &` (i.e., `i` is a reference), then we do **not** need to dereference (i.e., need to use the `*` operator)

⌂
<br>﹈<br>^1694494836971



﹇<br>
Is the following code valid in C++?

```cpp
for(auto& i : arr) {
	*i = 4;
	cout << *i << endl;
}
```

#card 

- No, the following code will **not** compile.
- Remember that since `i` is of type `int &` (i.e., `i` is a reference), so if we wish to…
	- **Reassign**: then we do **_not_** need to dereference (i.e., use the `*` operator); we simply assign like so…
```cpp
i = 4;
```
- **Indirection**: to access a value of `i`, remember, like reassignment, we do **_not_** need to dereference. We simply just use the variable; for example, we can simply just do…
```cpp
cout << i << endl;
```

⌂
<br>﹈<br>^1694418101026


﹇<br>
Just to clarify, when dealing with type `int &` you do not need the dereference operator to access the value?

#card 

Yes, that’s correct! When dealing with a reference to an `int` (i.e., `int&`), you do not need to use the dereference operator (`*`) to access the value. A reference is an alias for another variable, so you can use it just like you would use the original variable. For example:
```c++
int x = 5;
int& y = x;
std::cout << y << std::endl; // prints 5
```
In this example, `y` is a reference to `x`, so when we print the value of `y`, it prints the value of `x`. We do not need to use the dereference operator to access the value of `x` through the reference `y`. 

⌂
<br>﹈<br>^1694494836974



﹇<br>
How could I assign a pointer `y` to point to an `int` variable called `x`?

#card 

If you want `y` to be a pointer to `x`, you can do that by declaring `y` as a pointer to an `int` and initializing it with the address of `x`. Here's an example:
```c++
int x = 5;
int* y = &x;
std::cout << *y << std::endl; // prints 5
```
In this example, `y` is a pointer to an `int`, and we initialize it with the address of `x` using the address-of operator (`&`). To access the value of `x` through the pointer `y`, we need to use the dereference operator (`*`) on `y`. 

⌂
<br>﹈<br>^1694418101041

﹇<br>
Why is accessing an element in an array faster than in a linked list? 

#card

Accessing an element in an array is faster because of the way arrays are stored in memory. In an array, elements are stored in contiguous memory locations. This means that if you know the address of the first element (the base address), you can directly calculate the address of any element. 
- For example, if you want to access the 5th element of an array, you can directly access it because you know it’s exactly 5 memory spaces away from the start of the array. This is a constant time operation, often denoted as $\mathcal{O}(1)$. 
- On the other hand, a linked list stores elements in separate nodes, each containing a reference to the next node. To access a particular element, you have to start from the head of the list and follow the references until you reach the desired element. This could potentially require traversing the entire list, which makes it a linear time operation, often denoted as $\mathcal{O}(n)$.

⌂
<br>﹈<br>^1694495603173



﹇<br>
What are some reasons we wouldn’t always use linked lists instead of arrays in C++? 

#card

There are several reasons why we might prefer arrays over linked lists in certain situations in C++.
1. Firstly, each node in a linked list requires extra memory to store the reference to the next node. This overhead does not exist in arrays.
2. Secondly, due to their contiguous memory layout, arrays allow for faster access times. This can be crucial in situations where you need to frequently access elements at arbitrary positions. 
3. Lastly, arrays are simpler to use and understand than linked lists. They don’t require dealing with pointers or dynamic memory allocation, which makes them a good choice for many situations.

⌂
<br>﹈<br>^1694495603177


﹇<br>
When can linked lists be more efficient than arrays?

#card

Linked lists can be more efficient than arrays when you need to frequently add or remove elements from the list. In an array, adding or removing elements typically requires shifting elements or reallocating memory, which can be costly operations. However, in a linked list, these operations simply involve changing a few references and can be done in constant time (i.e., $\mathcal{O}(1)$) if you have a reference to the point of insertion or deletion. Therefore, if your program involves frequent insertions or deletions, a linked list could be more efficient.

⌂
<br>﹈<br>^1694495603181


﹇<br>
In C++, what is the difference between a pointer and a reference?

#card 

A pointer is a variable that stores the memory address of another variable, while a reference is an alias for another variable. Here are some key differences between pointers and references:
- **Syntax**: Pointers are declared using the `*` symbol, while references are declared using the `&` symbol. For example, `int* p` declares a pointer to an `int`, while `int& r` declares a reference to an `int`.
- **Initialization**: A pointer can be initialized to `nullptr` or to the address of another variable, while a reference must be initialized to refer to another variable when it is declared. For example, `int* p = nullptr;` is valid, but `int& r;` is not.
- **Reassignment**: A pointer can be reassigned to point to a different variable, while a reference cannot be reassigned to refer to a different variable once it has been initialized. For example, given two `int` variables `x` and `y`, you can do `int* p = &x; p = &y;`, but you cannot do `int& r = x; r = y;`.
- **Indirection**: To access the value of the variable pointed to by a pointer, you need to use the dereference operator (`*`), while you can use a reference just like you would use the original variable. For example, given an `int` variable `x` and a pointer `p` pointing to `x`, you need to do `*p` to access the value of `x`, while if you have a reference `r` referring to `x`, you can just use `r`.

⌂
<br>﹈<br>^1694418101047


﹇<br>
In C++, specifically regarding the **syntax**, what is the difference between pointers and references?

#card 

**Syntax**: Pointers are declared using the `*` symbol, while references are declared using the `&` symbol. For example, `int* p` declares a pointer to an `int`, while `int& r` declares a reference to an `int`.

⌂
<br>﹈<br>^1694418101055


﹇<br>
In C++, specifically regarding the **initialization**, what is the difference between pointers and references?

#card 

**Initialization**: A pointer can be initialized to `nullptr` or to the address of another variable, while a reference must be initialized to refer to another variable when it is declared. For example, `int* p = nullptr;` is valid, but `int& r;` is not.

⌂
<br>﹈<br>^1694418101062


﹇<br>
In C++, specifically regarding the **reassignment**, what is the difference between pointers and references?

#card 

**Reassignment**: A pointer can be reassigned to point to a different variable, while a reference cannot be reassigned to refer to a different variable once it has been initialized. For example, given two `int` variables `x` and `y`, you can do `int* p = &x; p = &y;`, but you cannot do `int& r = x; r = y;`.

⌂
<br>﹈<br>^1694418101068


﹇<br>
In C++, specifically regarding the **indirection**, what is the difference between pointers and references?

#card 

**Indirection**: To access the value of the variable pointed to by a pointer, you need to use the dereference operator (`*`), while you can use a reference just like you would use the original variable. For example, given an `int` variable `x` and a pointer `p` pointing to `x`, you need to do `*p` to access the value of `x`, while if you have a reference `r` referring to `x`, you can just use `r`.

⌂
<br>﹈<br>^1694418101072

﹇<br>
What are the main two types of polymorphism in C++?


#card 

- Compile-Time Polymorphism (Method Overloading)
- Run-Time Polymorphism (Method Overriding via Virtual Functions)

⌂
<br>﹈<br>^1694836467493


﹇<br>
In programming, especially C++, what is polymorphism?

#card 

Certainly! Polymorphism is one of the four fundamental principles of Object-Oriented Programming (OOP), alongside encapsulation, inheritance, and abstraction. In C++, polymorphism allows objects of different classes to be treated as objects of a common superclass.

There are mainly two types of polymorphism in C++:

1. **Compile-Time Polymorphism**: Method Overloading

	In compile-time polymorphism, the function that needs to be executed is determined at compile-time. Overloading is a typical example.
	
	```cpp
	#include <iostream>
	using namespace std;
	
	class MathOperations {
	public:
	    // Overloaded add() for integers
	    int add(int a, int b) {
	        return a + b;
	    }
	    
	    // Overloaded add() for floats
	    float add(float a, float b) {
	        return a + b;
	    }
	};
	
	int main() {
	    MathOperations math;
	    cout << math.add(5, 10) << endl;  // Output: 15
	    cout << math.add(5.5f, 10.5f) << endl;  // Output: 16
	    return 0;
	}
	```

2. **Run-Time Polymorphism**: Method Overriding via Virtual Functions
	
	In run-time polymorphism, the function that needs to be executed is determined at run-time, typically using virtual functions and pointers/references to base classes.
	
	```cpp
	#include <iostream>
	using namespace std;
	
	class Shape {
	public:
	    virtual void draw() {
	        cout << "Drawing a shape" << endl;
	    }
	};
	
	class Circle : public Shape {
	public:
	    void draw() override {
	        cout << "Drawing a circle" << endl;
	    }
	};
	
	class Square : public Shape {
	public:
	    void draw() override {
	        cout << "Drawing a square" << endl;
	    }
	};
	
	void drawShape(Shape& shape) {
	    shape.draw();
	}
	
	int main() {
	    Circle c;
	    Square s;
	    
	    drawShape(c);  // Output: Drawing a circle
	    drawShape(s);  // Output: Drawing a square
	    
	    return 0;
	}
	```
	
	In this example, the function `drawShape` takes a reference to a `Shape` object. When you pass a `Circle` or `Square` object to `drawShape`, the program invokes the `draw` method of the corresponding class, even though the type of the parameter is a reference to the base `Shape` class. This is run-time polymorphism in action.
	
	Would you like to have Anki flashcards for this topic?

⌂
<br>﹈<br>^1694836467498


{1:Compile-Time Polymorphism} {2:(Method Overloading)}
^1694836467505
 
{1:Run-Time Polymorphism} {2:(Method Overriding via Virtual Functions)}
^1694836467511

﹇<br>
What is compile-time polymorphism in C++ and give an example?

#card

Compile-time polymorphism in C++ allows the function to be determined at compile-time. Method overloading is an example. For instance, you can have multiple `add` methods that accept different types of parameters (`int`, `float`, etc.).

⌂
<br>﹈<br>^1694836598257


﹇<br>
What is run-time polymorphism in C++ and give an example?

#card

Run-time polymorphism in C++ allows the function to be determined at run-time, typically using virtual functions and pointers/references to base classes. For example, a base class `Shape` can have a virtual function `draw`, which can be overridden by derived classes like `Circle` and `Square`. Using a reference/pointer to `Shape`, you can call the `draw` method and execute the derived class's implementation.

⌂
<br>﹈<br>^1694836598264


﹇<br>
What is a virtual function in C++?

#card

A virtual function in C++ is a member function that is declared within a base class and is redefined by a derived class. The keyword `virtual` is used to make a function virtual. When you refer to a derived class object using a pointer or a reference to the base class, you can call a virtual function for that object and execute the derived class’s version of the function.

⌂
<br>﹈<br>^1694836598269


﹇<br>
What does the `override` keyword signify in C++?

#card

The `override` keyword in C++ indicates that a virtual member function in a derived class is meant to override a virtual function declared in a base class. It helps in catching errors during compilation, such as a mismatch in function signatures between the base and derived class methods. If the method does not correctly override a base class method, the compiler will issue an error.

⌂
<br>﹈<br>^1694836598274


﹇<br>
In a brief summary, what is **polymorphism** in the context of C++?

#card 

Polymorphism is a fundamental concept in Object-Oriented Programming that allows objects of different types to be treated as objects of a common type. In C++, it manifests in two main ways:
1. **Compile-Time Polymorphism**: This occurs when the function to be executed is determined at compile-time. Method overloading is a common example.
2. **Run-Time Polymorphism**: This takes place when the function to be executed is determined at run-time. This is often implemented using virtual functions and allows you to perform operations on objects without knowing their concrete types.

In essence, polymorphism enables more flexible, extensible, and maintainable code by allowing you to write functions that can work with different classes in a unified manner.

⌂
<br>﹈<br>^1694836789227



﹇<br>
What is encapsulation in C++? Give an example.

#card

Encapsulation in C++ is the bundling of data with the methods that operate on that data. It restricts direct access to an object's data, ensuring that it can only be modified in well-defined ways. 

Example:
```cpp
class Circle {
private:
    double radius;
public:
    void setRadius(double r) { radius = r; }
    double getArea() { return 3.14159 * radius * radius; }
};
```

⌂
<br>﹈<br>^1694836978464



﹇<br>
What is inheritance in C++? Give an example.

#card

Inheritance in C++ is the mechanism by which one class (derived class) inherits attributes and methods from another class (base class). This promotes code reusability.

Example:
```cpp
class Shape {
public:
    virtual void draw() {}
};

class Circle : public Shape {
public:
    void draw() override { /* Drawing logic */ }
};
```

⌂
<br>﹈<br>^1694836978474



﹇<br>
What is polymorphism in C++? Give an example.

#card

Polymorphism in C++ allows objects of different classes to be treated as objects of a common superclass. It often uses virtual functions to achieve this. 

Example:
```cpp
void drawShape(Shape& shape) {
    shape.draw();
}
```

⌂
<br>﹈<br>^1694836978481


﹇<br>
What is abstraction in C++? Give an example.

#card

Abstraction in C++ allows the programmer to hide complex details while exposing only the essential parts. It often involves the use of abstract classes and interfaces. 

Example:
```cpp
class AbstractShape {
public:
    virtual void draw() = 0;
};
```

⌂
<br>﹈<br>^1694836978489

﹇<br>
Does `std::multiset` have a `.push()` method? 

#card 

No, it does not have a `.push()` method.

⌂
<br>﹈<br>

﹇<br>
Does `std::multiset` have a `.remove()`  method?

#card 

No, it does not have a `.remove()` method. 

⌂
<br>﹈<br>



---

> [!info]+ 🔜 Next Note(s):
>

---
