---
author: 
publisher: 
published: 
tags: [computer-science/programming-language/cpp, educational-resource/cpp, study-note] 
cards-deck: Default::Computer Science
---

# C++

When declaring a `struct` in C++, what must I *always* remember to add at the end of it? #card 
A semicolon. For example…
```cpp
struct structName {
	int field_name {initialvalue};
};
```
^1683769343728

How do you create a dynamically allocated array of structs. #card 
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
        std꞉꞉cout << myArray[i].x << " " << myArray[i].y << std꞉꞉endl;
    delete[] myArray;
    return 0;
}
```
^1683769343732

What must I always remember when using `new` keyword in C++? #card-reverse  
Don’t forget to deallocate the memory using `delete[]`!
^1683769343750

True or false, does C++ provides a built-in way to resize an array that has already been allocated? #card 
False. [If you need to change the size of the array during runtime, you’ll have to create a new array with the desired size, copy the elements over, and delete the old array](https://www.learncpp.com/cpp-tutorial/dynamically-allocating-arrays/).
^1683769343753

Are arrays contiguous in C++? If so, what is the benefit? #card 
- Yes, arrays in C++ are stored in contiguous memory locations.
- This means that the elements of an array are stored next to each other in memory. 
- This property makes arrays efficient for accessing elements since the memory address of any element can be calculated using its index and the memory address of the first element.
^1683769343757

What is the downside of arrays being stored in contiguous memory in C++? #card-reverse 
- One downside of <span class="spoiler">arrays</span> being stored in contiguous memory locations is that it can be difficult to resize them during runtime. If you need to add more elements to an <span class="spoiler">array</span> than its current size allows, you’ll have to create a new <span class="spoiler">array</span> with a larger size, copy the elements from the old <span class="spoiler">array</span> to the new one, and then delete the old <span class="spoiler">array</span>. This process can be time-consuming and inefficient.
- Another downside is that inserting or deleting elements in the middle of an <span class="spoiler">array</span> can be slow because all the elements after the insertion or deletion point have to be shifted to make room for the new element or to close the gap left by the deleted element.
- These downsides can be mitigated by using dynamic data structures such as <span class="spoiler">vectors</span> or <span class="spoiler">linked lists</span>, which are designed to handle resizing and insertion/deletion more efficiently.
^1683769343759

Does `printf()` have an option for `std꞉꞉string`? #card 
No, `printf()` does ***not*** have an option for `std꞉꞉string`
^1683769343762

Can you initialize a  `char*` via `char* name {""}` #card
^1687733827885
No, you can not.
^1683769343768

In C++, can `struct` have a member functions? #card 
Yes.
^1683769343771

What is **polymorphism**? #card 
To replace.
^1683769343773

What must be *always* at the end of declaring a class? #card 
A semicolon.
^1683769343776

As recommended by LearnCpp.com What are the general things one should do when configuring their compiler for a C++ project? #card 
1. Disable all compiler extensions
	- Use the flag(s) `-pedantic-errors`
2. Turn your warning levels up to the maximum, especially while you are learning. It will help you identify possible issues.
	- Use the flag(s) `-Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion`
3. Enable “Treat warning as errors.”
	- Use the flags(s) `-Werror`
^1683769343779

How would you convert the following implementation of a constructor to a initializer list?
```cpp
IntCollection꞉꞉IntCollection(const IntCollection &c)
    : data(new int[static_cast<unsigned long long int>(c.capacity)]),
      size(c.size),
      capacity(c.capacity) {
    for (int i = 0; i < c.size; i++) {
        this->data[i] = c.data[i];
    }
}
```
#card 
```cpp
IntCollection꞉꞉IntCollection(const IntCollection &c)
    : data(new int[static_cast<unsigned long long int>(c.capacity)]),
      size(c.size),
      capacity(c.capacity) {
    for (int i = 0; i < c.size; i++) {
        this->data[i] = c.data[i];
    }
}
```
^1683771976139


![[🤖 ChatGPT, Bing Chat, etc. Warning]]

When at the end of a while loop in C++, are all objects deconstructed? For instance, I instantiated the `Assignment` class (which is a derived class of the `Activity` class) in a `while(true)` loop. If the loop is not broken and goes for another iteration, the assignment class appears to be deconstructed. #card 
In C++, an object’s destructor is called at the closing `}` for the block it was created in. So if you have a loop like this:
```c++
while (some_condition) {
    SomeClass some_object;
    some_object.someFunction();
    some_variable = some_object.some_member;
}
```
[Then the destructor for the object created in one iteration of the loop will be called at the end of the loop before another object is created](https://stackoverflow.com/questions/10388108/c-if-an-object-is-declared-in-a-loop-is-its-destructor-called-at-the-end-of)
^1683769343781

For the debug flag for g++, what is the difference between `-g` and `-ggdb`? #card 
- The `-g` flag produces debugging information in the operating system’s native format (stabs, COFF, XCOFF, or DWARF 2). On most systems that use stabs format, `-g` enables the use of extra debugging information that only GDB can use.
- The `-ggdb` flag produces debugging information specifically intended for GDB. This means to use the most expressive format available (DWARF 2, stabs, or the native format if neither of those are supported), including GDB extensions if at all possible.
- If you are using GDB, it is recommended to use `-ggdb`. If you do not use GDB, you can use -g and keep in mind that GDB works with the OS’s native format too.
^1683769343784

Is C++ pass-by-reference *or* pass-by-value? #card 
C++ is *both* pass-by-reference and pass-by-value.
^1683844265794

What is **pass-by-value**? #card-reverse 
When we pass parameters by value, a copy of the value is passed to the parameter and any changes to that value is *not* affected likewise to the original value.
```cpp
void increment(int a) {
    a = a + 1;
    cout << "Inside increment function: " << a << endl;
}
^1683844265799

int main() {
    int num = 5;
    increment(num);
    cout << "Inside main function: " << num << endl;
    return 0;
}
```

What is **pass-by-reference** #card-reverse 
When we pass parameters by reference, a reference to the value is passed to the parameter and any changes to that value *is* affected likewise to the original value.
```cpp
void increment(int& a) {
    a = a + 1;
    cout << "Inside increment function: " << a << endl;
}
^1683844265802

int main() {
    int num = 5;
    increment(num);
    cout << "Inside main function: " << num << endl;
    return 0;
}
```


When passing-by-reference, what is the advantage of using **reference** (i.e., `&`)? #card 
- References are typically easier and safer to use. Unlike pointers, they can't be null, and they don't require dereferencing to access the value they're referencing.
- References provide a way to have function arguments behave like aliases for the original variables, which can make the code easier to read and understand.
- It's considered good practice to use references when you can, especially for const references, which allows the function to work with both lvalues and rvalues.
^1683844265806


When passing-by-reference, what is the advantage of using **pointers** (i.e., `*`)? #card 
- Pointers are more flexible and powerful, which can be both an advantage and a disadvantage. With pointers, you can point to different objects over their lifetime, and they can be reassigned to point to different objects.
- Pointers can be null, which can be useful in situations where you might not have a valid object to reference all the time.
- Pointers can be used in situations where "optional" semantics are needed. If a function accepts a pointer, you can pass in a null pointer to indicate that the argument isn't applicable.
- Pointers can also point to an array of values, which can be useful in certain situations.
^1683844265823

Do references require dereferencing? #card 
No. Note the difference to pointers…
```cpp
ref = 20  // reference 
*ptr = 20 // pointer (notce that we have to dereference the ptr)
```
^1683844265826

Can references be null? #card 
No.
^1683844265830

How would I go about creating a reference (i.e., alias) for the variable `x` in `int x = 10;`? #card 
```cpp
int x = 10;
int& ref = x; // ref is now a reference (i.e., alias) to 'x'
```
In this case, `ref` is a reference to `x`, meaning it's just another name for `x`. When you use `ref`, you're directly accessing and manipulating `x`, without needing to do anything special. For example:
```cpp
`ref = 20; // This changes 'x' to 20 
cout << x << endl; // This will output '20'`
```
^1683844265834

In C++, what is the difference between a **struct** and a **class**? #card 
In C++, the only difference between a `struct` and a `class` is the default accessibility of member variables and methods. In a `struct`, they are `public` by default; in a `class`, they are `private` by default [1](https://stackoverflow.com/questions/2750270/c-c-struct-vs-class) [2](https://learn.microsoft.com/en-us/cpp/cpp/classes-and-structs-cpp?view=msvc-170) [3](https://blogs.sw.siemens.com/embedded-software/2014/06/02/struct-vs-class-in-c/). Both classes and structs can have a mixture of public, protected and private members, can use inheritance, and can have member functions [4](https://stackoverflow.com/questions/54585/when-should-you-use-a-class-vs-a-struct-in-c).
^1687733827890

Why does importing from a `.cxx` into another `.cxx` file create an error in C++? But when I rename the importing `.cxx` file to `.hxx` it works? #card 
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
^1687733827893

In the broad sense, how should I think of mutexes in C++? What are some simple concrete examples displaying the concept? #card 
- In C++, a `std꞉꞉mutex` can be used to protect shared data from being simultaneously accessed by multiple threads, thus preventing race condition. Here's a simple example:
```cpp
#include <iostream>
#include <thread>
#include <mutex>
std꞉꞉mutex mtx; // global mutex
int count = 0;  // global count
void increaseCount(int id, int loop_count) {
    for (int i = 0; i < loop_count; ++i) {
        // lock the mutex before accessing shared data
        mtx.lock();
        ++count;
        std꞉꞉cout << "Thread " << id << " incremented count to " << count << std꞉꞉endl;
        mtx.unlock();
        // unlock after done
    }
}
int main() {
    const int loop_count = 100;
    // Create two threads that both run increaseCount()
    std꞉꞉thread t1(increaseCount, 1, loop_count);
    std꞉꞉thread t2(increaseCount, 2, loop_count);
    // Wait for both threads to finish
    t1.join();
    t2.join();
    return 0;
}
```
- This is a simple program where two threads increment a global counter. A mutex is used to ensure that only one thread increments and prints the counter at a time, preventing race condition.
- Note that `std꞉꞉mutex꞉꞉lock()` will block if the mutex is already locked by another thread, and will only return once the lock is acquired. Once you're done with the shared resource, you must call `std꞉꞉mutex꞉꞉unlock()` to release the lock, allowing other threads to acquire it.
- The `lock()` and `unlock()` operations should always come in pairs. If a thread fails to unlock a mutex, other threads will be blocked when they attempt to lock the mutex, resulting in a deadlock.
- It's generally recommended to use `std꞉꞉lock_guard` or `std꞉꞉unique_lock`, which provide a safer and more convenient way to manage locking and unlocking:
```cpp
void increaseCount(int id, int loop_count) {
    for (int i = 0; i < loop_count; ++i) {
        // lock the mutex before accessing shared data
        std꞉꞉lock_guard<std꞉꞉mutex> guard(mtx);
        ++count;
        std꞉꞉cout << "Thread " << id << " incremented count to " << count << std꞉꞉endl;
        // mtx is automatically released when guard goes out of scope
    }
}
```
- With `std꞉꞉lock_guard`, you don't need to explicitly unlock the mutex. It will automatically be unlocked when the `lock_guard` object is destroyed, which happens when the object goes out of scope. This means the mutex will be unlocked even if an exception occurs, making your code more robust.
^1687772985678

**Front**: What is a mutex in C++? #card
**Back**: A mutex (short for "mutual exclusion") in C++ is a synchronization primitive that can be used to protect shared data from being simultaneously accessed by multiple threads, thus preventing race conditions.
^1687773021696

**Front**: What is the purpose of the `std꞉꞉mutex꞉꞉lock()` function in C++? #card
**Back**: The `std꞉꞉mutex꞉꞉lock()` function is used to lock the mutex. If the mutex is already locked by another thread, this call will block until the mutex is available to be locked.
^1687773021701

**Front**: What is the purpose of the `std꞉꞉mutex꞉꞉unlock()` function in C++? #card
**Back**: The `std꞉꞉mutex꞉꞉unlock()` function in C++ is used to unlock the mutex, making it available for other threads to lock and access the shared data.
^1687773021707


**Front**: What is a deadlock in the context of mutexes? #card
**Back**: A deadlock is a situation where a thread fails to unlock a mutex. This results in other threads being blocked when they attempt to lock the mutex, as they are waiting for the mutex to be released.
^1687773021713


**Front**: What are `std꞉꞉lock_guard` and `std꞉꞉unique_lock` in C++? #card
**Back**: `std꞉꞉lock_guard` and `std꞉꞉unique_lock` are both classes in C++ that manage a mutex object. They lock the mutex upon construction and unlock the mutex upon destruction. This provides a safer and more convenient way to manage locking and unlocking, as it ensures the mutex will always be unlocked even if an exception occurs. 
^1687773021720


**Front**: What is the difference between `std꞉꞉lock_guard` and `std꞉꞉unique_lock` in C++? #card
**Back**: Both `std꞉꞉lock_guard` and `std꞉꞉unique_lock` automatically manage the lock state of a mutex. However, `std꞉꞉unique_lock` is more flexible and allows for deferred locking, try-locking, timed locking, recursive locking, and transferring lock ownership, while `std꞉꞉lock_guard` does not.
^1687773021726

   
**Front**: How does `std꞉꞉lock_guard` ensure the mutex gets unlocked in C++? #card
**Back**: `std꞉꞉lock_guard` automatically unlocks the mutex when the `lock_guard` object is destroyed, which happens when the object goes out of scope. This ensures that the mutex will be unlocked even if an exception occurs.
^1687772985684
