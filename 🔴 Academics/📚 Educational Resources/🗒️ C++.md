---
title: "🗒️ C++"
author: 
publisher: 
published: 
tags: 
- 🔴-academics/📚-educational-resources/name/cpp
- 🔴-academics/📚-educational-resources/discipline/computer-science/programming-language/cpp
- study-note 
cards-deck: Default::Computer Science
---

# 🗒️ C++

---

## 🕸️ All Mention(s):

---

## 🔙 Previous Note(s):

---

When declaring a `struct` in C++, what must I *always* remember to add at the end of it? 
#card 
A semicolon. For example…
```cpp
struct structName {
	int field_name {initialvalue};
};
```
^1683769343728

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
^1683769343732

What must I always remember when using `new` keyword in C++? 
#card-reverse  
Don’t forget to deallocate the memory using `delete[]`!
^1683769343750

True or false, does C++ provides a built-in way to resize an array that has already been allocated? 
#card 
False. [If you need to change the size of the array during runtime, you’ll have to create a new array with the desired size, copy the elements over, and delete the old array](https://www.learncpp.com/cpp-tutorial/dynamically-allocating-arrays/).
^1683769343753

Are arrays contiguous in C++? If so, what is the benefit? 
#card 
- Yes, arrays in C++ are stored in contiguous memory locations.
- This means that the elements of an array are stored next to each other in memory. 
- This property makes arrays efficient for accessing elements since the memory address of any element can be calculated using its index and the memory address of the first element.
^1683769343757

What is the downside of arrays being stored in contiguous memory in C++? 
#card-reverse 
- One downside of <span class="spoiler">arrays</span> being stored in contiguous memory locations is that it can be difficult to resize them during runtime. If you need to add more elements to an <span class="spoiler">array</span> than its current size allows, you’ll have to create a new <span class="spoiler">array</span> with a larger size, copy the elements from the old <span class="spoiler">array</span> to the new one, and then delete the old <span class="spoiler">array</span>. This process can be time-consuming and inefficient.
- Another downside is that inserting or deleting elements in the middle of an <span class="spoiler">array</span> can be slow because all the elements after the insertion or deletion point have to be shifted to make room for the new element or to close the gap left by the deleted element.
- These downsides can be mitigated by using dynamic data structures such as <span class="spoiler">vectors</span> or <span class="spoiler">linked lists</span>, which are designed to handle resizing and insertion/deletion more efficiently.
^1683769343759

Does `printf()` have an option for `std::string`? 
#card 
No, `printf()` does ***not*** have an option for `std::string`
^1683769343762

Can you initialize a  `char*` via brace initialization with an empty string? 
#card
Yes.
^1683769343768

Is the following a valid example of brace initialization? 
```cpp
int x = {4.4};
```
#card 
No, the syntax for brace initialization is as follows…
```cpp
T object {arg1, arg2, ...};
```
^1691038802876



In C++, can `struct` have a member functions? 
#card 
Yes.
^1683769343771

What is **polymorphism**? 
#card 
❗ To be filled.
^1683769343773

What must be *always* at the end of declaring a class? 
#card 
A semicolon.
^1683769343776

As recommended by LearnCpp.com What are the general things one should do when configuring their compiler for a C++ project? 
#card 
1. Disable all compiler extensions
	- Use the flag(s) `-pedantic-errors`
2. Turn your warning levels up to the maximum, especially while you are learning. It will help you identify possible issues.
	- Use the flag(s) `-Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion`
3. Enable “Treat warning as errors.”
	- Use the flags(s) `-Werror`
^1683769343779

How would you convert the following implementation of a constructor to a initializer list?
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

For the debug flag for g++, what is the difference between `-g` and `-ggdb`? 
#card 
- The `-g` flag produces debugging information in the operating system’s native format (stabs, COFF, XCOFF, or DWARF 2). On most systems that use stabs format, `-g` enables the use of extra debugging information that only GDB can use.
- The `-ggdb` flag produces debugging information specifically intended for GDB. This means to use the most expressive format available (DWARF 2, stabs, or the native format if neither of those are supported), including GDB extensions if at all possible.
- If you are using GDB, it is recommended to use `-ggdb`. If you do not use GDB, you can use -g and keep in mind that GDB works with the OS’s native format too.
^1683769343784

Is C++ pass-by-reference *or* pass-by-value? 
#card 
C++ is *both* pass-by-reference and pass-by-value.
^1683844265794

What is **pass-by-value**? 
#card-reverse 
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

What is **pass-by-reference** 
#card-reverse 
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


When passing-by-reference, what is the advantage of using **reference** (i.e., `&`)? 
#card 
- References are typically easier and safer to use. Unlike pointers, they can't be null, and they don't require dereferencing to access the value they're referencing.
- References provide a way to have function arguments behave like aliases for the original variables, which can make the code easier to read and understand.
- It's considered good practice to use references when you can, especially for const references, which allows the function to work with both lvalues and rvalues.
^1683844265806


When passing-by-reference, what is the advantage of using **pointers** (i.e., `*`)? 
#card 
- Pointers are more flexible and powerful, which can be both an advantage and a disadvantage. With pointers, you can point to different objects over their lifetime, and they can be reassigned to point to different objects.
- Pointers can be null, which can be useful in situations where you might not have a valid object to reference all the time.
- Pointers can be used in situations where "optional" semantics are needed. If a function accepts a pointer, you can pass in a null pointer to indicate that the argument isn't applicable.
- Pointers can also point to an array of values, which can be useful in certain situations.
^1683844265823

Do references require dereferencing? 
#card 
No. Note the difference to pointers…
```cpp
ref = 20  // reference 
*ptr = 20 // pointer (notce that we have to dereference the ptr)
```
^1683844265826

Can references be null? 
#card 
No.
^1683844265830

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
^1683844265834

In C++, what is the difference between a **struct** and a **class**? 
#card 
In C++, the only difference between a `struct` and a `class` is the default accessibility of member variables and methods. In a `struct`, they are `public` by default; in a `class`, they are `private` by default [1](https://stackoverflow.com/questions/2750270/c-c-struct-vs-class) [2](https://learn.microsoft.com/en-us/cpp/cpp/classes-and-structs-cpp?view=msvc-170) [3](https://blogs.sw.siemens.com/embedded-software/2014/06/02/struct-vs-class-in-c/). Both classes and structs can have a mixture of public, protected and private members, can use inheritance, and can have member functions [4](https://stackoverflow.com/questions/54585/when-should-you-use-a-class-vs-a-struct-in-c).
^1687733827890

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
^1687733827893

In the broad sense, how should I think of mutexes in C++? What are some simple concrete examples displaying the concept? #card 
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
^1687772985678

**Front**: What is a mutex in C++? 
#card
**Back**: A mutex (short for "mutual exclusion") in C++ is a synchronization primitive that can be used to protect shared data from being simultaneously accessed by multiple threads, thus preventing race conditions.
^1687773021696

**Front**: What is the purpose of the `std::mutex::lock()` function in C++? 
#card
**Back**: The `std::mutex::lock()` function is used to lock the mutex. If the mutex is already locked by another thread, this call will block until the mutex is available to be locked.
^1687773021701

**Front**: What is the purpose of the `std::mutex::unlock()` function in C++? 
#card
**Back**: The `std::mutex::unlock()` function in C++ is used to unlock the mutex, making it available for other threads to lock and access the shared data.
^1687773021707


**Front**: What is a deadlock in the context of mutexes?
#card
**Back**: A deadlock is a situation where a thread fails to unlock a mutex. This results in other threads being blocked when they attempt to lock the mutex, as they are waiting for the mutex to be released.
^1687773021713


**Front**: What are `std::lock_guard` and `std::unique_lock` in C++? 
#card
**Back**: `std::lock_guard` and `std::unique_lock` are both classes in C++ that manage a mutex object. They lock the mutex upon construction and unlock the mutex upon destruction. This provides a safer and more convenient way to manage locking and unlocking, as it ensures the mutex will always be unlocked even if an exception occurs. 
^1687773021720


**Front**: What is the difference between `std::lock_guard` and `std::unique_lock` in C++? 
#card
**Back**: Both `std::lock_guard` and `std::unique_lock` automatically manage the lock state of a mutex. However, `std::unique_lock` is more flexible and allows for deferred locking, try-locking, timed locking, recursive locking, and transferring lock ownership, while `std::lock_guard` does not.
^1687773021726

   
**Front**: How does `std::lock_guard` ensure the mutex gets unlocked in C++? 
#card
**Back**: `std::lock_guard` automatically unlocks the mutex when the `lock_guard` object is destroyed, which happens when the object goes out of scope. This ensures that the mutex will be unlocked even if an exception occurs.
^1687772985684

❗How can you initialize a char* pointer to point to the start of a C string in C++? 
#card 
Yes, you simply do the following…
^1691038455680

In C++, when you extract text from a string into a string stream, what is the time and space complexity of such an operation? For instance, consider the following snippet of code…
```cpp
std::string text {"Hello1232"}
stringstream ss;
ss << text;
```
When we stream `text` into `ss`, our we making an exact copy of `text` into or what? 
#card 
When extracting text form a string, the *time* complexity of such an operation is **linear** (i.e., $\mathcal{O}(n)$). Additionally, the *space* complexity is also **linear** (i.e., $\mathcal{O}(n)$) since we need allocate the same space needed to contain the text.
^1691035292892

Is the generic function `std::reverse()`, from the `<algorithm>` library, an in-place algorithm? 
#card 
Yes, it is an in-place algorithm.
^1691035292898

What is the time and space complexity of `std::reverse()`? 
#card 
- Time: $\mathcal{O}\left( \frac{n}{2} \right)$
- Space:  $\mathcal{O}(1)$
^1691035292903

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
^1691038455685

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
^1691038455691

Lets say I have a `std::stringstream` called `ss`, is the following code valid? 
```
ss.insert("");
ss.clear()
```
#card 
- No, the following code is not valid. `stringstream` and other stream classes in C++ do not have an `insert` method.
	- If you want to insert data into a stream, use `<<` (i.e., insertion operator)
	- You can also use the `string` method to set the contents of the stream directly.
^1691038455702

How can I get `std::string` of all the values currently in a `std::stringstream`? 
#card 
Simply call `.str()` with no arguments.
^1691038455709

How can I completely erase/reset the values of a `std::stringstream` to empty? 
#card 
Simply call `.str("")` with the empty string (i.e., `""`) argument.
^1691038455714

What exactly is the heap in Computer Science? Particularly, what distinguishes it from stack? Reference not only the software layer but also the hardware layer/computer architecture that allows this. 
#card 
❗ To  be filled.
^1691805549315

Why is `for(auto num : list)` undesirable? 
#card 
You are iterating over elements by value which means we cannot modify them in place.
^1691038455719

Whare the three common examples in how one can use the `auto` keyword in a range-based for loop? 
#card 
1. [To iterate over elements by value, use `for (auto element : container)`](https://en.cppreference.com/w/cpp/language/range-for)[1](https://en.cppreference.com/w/cpp/language/range-for).
2. [To iterate over elements by reference, use `for (auto& element : container)`](https://en.cppreference.com/w/cpp/language/range-for)[1](https://en.cppreference.com/w/cpp/language/range-for).
3. [To iterate over elements by constant reference, use `for (const auto& element : container)`](https://en.cppreference.com/w/cpp/language/range-for)[1](https://en.cppreference.com/w/cpp/language/range-for).
^1691038455740

How do you declare an array of size three using the `array` library in C++? 
#card 
The traditional way…
```cpp
#include <array>
^1691049517596

// ...

array<int,3> arr = [3, 2, 1];
```
An experimental, yet easier way… *\*Notice how we don’t have to concern ourselves with specifying the size!*
```cpp
#include <arrray>

auto a2 = std::to_array({0, 2, 1, 3});
```

Is the following code valid?
```cpp
array<int> arr = [3, 2, 1];
```
#card 
- No! You need to specify the size for the template parameter.
- If you don’t want to have to do that, use `std::to_array()`.
^1691049517601

What library is the function `to_array()` a part of? 
#card 
It is part of the `<array>` library.
^1691049517605

What is the difference between `min()` and `lowest()` for `numeric_limits<T>`?
#card 
- `lowest()` returns the least (including negative) value for that type
- `min()` returns the smallest finite (positive only) value for that type
^1691051525227

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
^1691805549320

How can  I go about using alternating values in C++?
#card 
1. One way is to use a `switch` statement with an iterator `i` that increments and then is reset back to zero after a certain value has been reached.
^1691856289306

Is the following snipper valid in C++?
```cpp
std::array<int> arr = {1,2,3,4};
```
#card 
No, it is not. Remember that for `std::array` you _must_ also specify the size of the `std::array` like so…
```cpp
std::array<int,4> arr = {1,2,3,4}; // Size of array is 4
```
^1691856289317

Is the following code valid in C++?
```cpp
for(const auto& i : arr) {
	i = 4;
}
```
#card 
The following code is **not** valid. `i` is a `const int&` so it is not allowed to modify the value at that address.
^1691856289325

Is the following code valid in C++?
```cpp
for(auto i : arr) {
	i = 4;
}
```
#card 
- While the code **will** compile, note that it **won’t** change the value of `arr` it will _only_ change the value of `i`.
- Recall that in this form of a `for`-range loop, `i` is of type `int` (i.e., simply just a _copy_ of the value in `arr`)
^1691856289334

If the following code valid in C++?
```cpp
for(auto& i : arr) {
	i = 4;
}
```
#card 
- Yes, the following code will compile and its is logically sound.
- `i` is of type `int &` so you can actually modify the elements of `arr`.
^1691856289342

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
^1691856289349

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
^1691856289356


Just to clarify, when dealing with type `int &` you do not need the dereference operator to access the value?
#card 
Yes, that’s correct! When dealing with a reference to an `int` (i.e., `int&`), you do not need to use the dereference operator (`*`) to access the value. A reference is an alias for another variable, so you can use it just like you would use the original variable. For example:
```c++
int x = 5;
int& y = x;
std::cout << y << std::endl; // prints 5
```
In this example, `y` is a reference to `x`, so when we print the value of `y`, it prints the value of `x`. We do not need to use the dereference operator to access the value of `x` through the reference `y`. 
^1691857051164

How could I assign a pointer `y` to point to an `int` variable called `x`?
#card 
If you want `y` to be a pointer to `x`, you can do that by declaring `y` as a pointer to an `int` and initializing it with the address of `x`. Here's an example:
```c++
int x = 5;
int* y = &x;
std::cout << *y << std::endl; // prints 5
```
In this example, `y` is a pointer to an `int`, and we initialize it with the address of `x` using the address-of operator (`&`). To access the value of `x` through the pointer `y`, we need to use the dereference operator (`*`) on `y`. 
^1691857051170

In C++, what is the difference between a pointer and a reference?
#card 
A pointer is a variable that stores the memory address of another variable, while a reference is an alias for another variable. Here are some key differences between pointers and references:
- **Syntax**: Pointers are declared using the `*` symbol, while references are declared using the `&` symbol. For example, `int* p` declares a pointer to an `int`, while `int& r` declares a reference to an `int`.
- **Initialization**: A pointer can be initialized to `nullptr` or to the address of another variable, while a reference must be initialized to refer to another variable when it is declared. For example, `int* p = nullptr;` is valid, but `int& r;` is not.
- **Reassignment**: A pointer can be reassigned to point to a different variable, while a reference cannot be reassigned to refer to a different variable once it has been initialized. For example, given two `int` variables `x` and `y`, you can do `int* p = &x; p = &y;`, but you cannot do `int& r = x; r = y;`.
- **Indirection**: To access the value of the variable pointed to by a pointer, you need to use the dereference operator (`*`), while you can use a reference just like you would use the original variable. For example, given an `int` variable `x` and a pointer `p` pointing to `x`, you need to do `*p` to access the value of `x`, while if you have a reference `r` referring to `x`, you can just use `r`.
^1691857051175

In C++, specifically regarding the **syntax**, what is the difference between pointers and references?
#card 
**Syntax**: Pointers are declared using the `*` symbol, while references are declared using the `&` symbol. For example, `int* p` declares a pointer to an `int`, while `int& r` declares a reference to an `int`.
^1691857051181

In C++, specifically regarding the **initialization**, what is the difference between pointers and references?
#card 
**Initialization**: A pointer can be initialized to `nullptr` or to the address of another variable, while a reference must be initialized to refer to another variable when it is declared. For example, `int* p = nullptr;` is valid, but `int& r;` is not.
^1691857051186

In C++, specifically regarding the **reassignment**, what is the difference between pointers and references?
#card 
**Reassignment**: A pointer can be reassigned to point to a different variable, while a reference cannot be reassigned to refer to a different variable once it has been initialized. For example, given two `int` variables `x` and `y`, you can do `int* p = &x; p = &y;`, but you cannot do `int& r = x; r = y;`.
^1691857051192

In C++, specifically regarding the **indirection**, what is the difference between pointers and references?
#card 
**Indirection**: To access the value of the variable pointed to by a pointer, you need to use the dereference operator (`*`), while you can use a reference just like you would use the original variable. For example, given an `int` variable `x` and a pointer `p` pointing to `x`, you need to do `*p` to access the value of `x`, while if you have a reference `r` referring to `x`, you can just use `r`.
^1691857051197

---


## 🔜 Next Note(s):


---
