---
title: C++ Weekly - Ep 342 - C++
created: 2023-08-24 00:06
authors:
  - Edmund Leibert III
tags:
  - 🔴-academics/📚-educational-resources/name/cpp-weekly-with-jason-turner
  - 🔴-academics/📚-educational-resources/format/internet/youtube
  - 🔴-academics/📚-educational-resources/discipline/computer-science/programming-language/cpp
  - study-note
cards-deck: Default::Computer Science
updated: 2023-10-20T08:59
---

# 🌐 C++ Weekly With Jason Turner

---

## 🕸️ All Mention(s): 

---

## 🔙 Previous Note(s):
- 

---

## C++ Weekly - Ep 342 - C++

In brief, what are **ranges** in C++ and need do they fill? Make sure to consider there relationship with the standard algorithm library.
#card
- Ranges are a new feature in C++20 that provide a way to abstract over iterators. This makes it easier to write algorithms that work on different types of data structures, and it also makes it easier to write composable algorithms.
- For example, the standard algorithm library includes an algorithm called `std::sort()` that sorts a range of elements.
- Before ranges, you would have to use iterators to specify the range of elements to be sorted.
	- With ranges, you can simply specify the range as a variable, and the algorithm will automatically iterate over the elements of the range.
- Here is an example of how to use ranges with the `std::sort()` algorithm:
```cpp
std::vector<int> my_vector = {1, 5, 3, 2, 4};
// Sort the vector using ranges
std::ranges::sort(my_vector);
// Print the sorted vector
for (int i : my_vector) {
  std::cout << i << " ";
}
```
- This code will sort the `my_vector` vector and then print the sorted elements to the console.
- Ranges are a powerful new feature in C++ that can make your code more concise, expressive, and reusable. If you are new to C++, I recommend learning about ranges as soon as possible.
- Here are some other examples of how ranges can be used:
	- Filtering a range of elements
	- Transforming a range of elements
	- Folding a range of elements
	- Iterating over a range of elements
- Ranges can be used with any type of data structure that supports iterators. This includes the standard library containers, such as `std::vector`, `std::list`, and `std::set`.
^1692863572425

In C++20, **ranges** are a powerful new feature in C++ that can make your code more {concise}, {expressive}, and {reusable}.
^1692863572433

Is the following code valid?
```cpp
std::vector<int> my_vector = {1, 5, 3, 2, 4};
// Sort the vector using ranges
std::ranges::sort(my_vector);
// Print the sorted vector
for (int i : my_vector) {
  std::cout << i << " ";
}
```
#card 
Yes, the following code will compile and run without any issues.
- The key feature of this snippet is that we are using ranges instead of having to _manually_ specify the range (i.e., using the methods `.begin()` and `.end()`).
^1692863572439

In C++, what is the `std::nth_element` function from the standard algorithm library?
#card 
- The `std::nth_element` algorithm is a useful standard library function in C++ that rearranges elements in a given range `[first, last)` in such a way that the element at the `nth` position is the element that would be there if the entire range were sorted.
	- Furthermore, none of the elements preceding `nth` are greater than it, and none of the elements following it are less.
- Here's a more concrete example and explanation:
```cpp
#include <algorithm>
#include <vector>
#include <iostream>
int main() {
    std::vector<int> v = {30, 60, 10, 50, 40, 20};
    // Reorder elements in such a way that the element at the 3rd position (0-indexed) is the one that would be there if the vector were fully sorted
    std::nth_element(v.begin(), v.begin() + 3, v.end());
    for (int i : v) {
        std::cout << i << " ";
    }
    // Output may be something like: 20 10 30 40 50 60
    return 0;
}
```
- In this example, `std::nth_element(v.begin(), v.begin() + 3, v.end())` will place the 4th smallest element in the array at the 3rd index (0-indexed), exactly where it would be if the entire array were sorted.
	- Note that the rest of the elements are not guaranteed to be sorted. The elements before the `nth` element are guaranteed to be less than or equal to the `nth` element, and the elements after the `nth` element are guaranteed to be greater than or equal to it.
- This function is useful in scenarios where you need to find the `nth` smallest/largest element without sorting the entire range, which can be more efficient. The time complexity of `std::nth_element` is linear on average, i.e., $\mathcal{O}(n)$, making it a useful choice for large datasets.
^1692863572445

What is the worst-case time complexity of `std::nth_element`?
#card
The worst-case time complexity of `std::nth_element` is more accurately described as linear on average,$\mathcal{O}(n)$, for the entire operation. The $\mathcal{O}(n \log n)$ complexity for swaps does not directly translate into the overall time complexity for the algorithm, as it refers to the number of swaps, not the time taken for the whole process.
- The reason for this is that a swap operation can often be considered a constant-time operation, depending on how it's implemented. The notation here is likely emphasizing the number of swaps rather than directly contributing to the overall time complexity.
^1692880708474


Why is the overall time complexity of `std::nth_element` considered linear, even though there are $\mathcal{O}(1)$ swaps?
#card
The overall time complexity of `std::nth_element` is considered linear, or $\mathcal{O}(n)$, because each swap operation's cost is generally considered constant time, or $\mathcal{O}(1)$. The $\mathcal{O}(n \log n)$ complexity refers to the number of swap operations, not the overall time complexity for the entire algorithm.
^1692880708481


What is the space complexity of `std::nth_element`?
#card
The space complexity of `std::nth_element` is $\mathcal{O}(1)$, meaning it uses a constant amount of additional space beyond the input itself. The algorithm works in-place and doesn't require extra memory proportional to the size of the input.
^1692880708487

Broadly speaking, in C++, what are the main categories that the operations/functions of the standard algorithm library can be divided into?
#card 
- Non-modifying sequence operations
- Modifying sequence operations
- Partitioning operations
- Sorting operations
- Binary search operations (on sorted ranges)
- Other operations on sorted ranges
- Set operations (on sorted ranges)
- Heap operations
- Minimum/maximum operations
- Comparison operations
- Permutation operations
- Numeric operations
- Operations on uninitialized memory
^1692880708494

In C++, what category does the algorithm, `std::nth_element` fall under to?
#card 
It falls under the category of *sorting operations*.
^1692880708500


What are ranges in C++?
#card-reverse
Ranges refer to a sequence of elements that can be iterated over. They can be expressed as an iterator-sentinel pair or as a single range argument in C++.
Example: 
```cpp
std::vector<int> v = {1, 2, 3};
std::ranges::sort(v);
```
^1692880708506


What is the purpose of constrained algorithms in the `std::ranges` namespace in C++20?
#card-reverse
Constrained algorithms in `std::ranges` utilize concepts to enforce type constraints, ensuring correct types are used. Example: 
```cpp
std::ranges::sort(v); 
```
The `std::ranges` ensures that `v` is sortable.
^1692880708512


How do ranges simplify the code when using algorithms in C++20?
#card-reverse
Ranges allow you to pass a container itself as a single argument to an algorithm instead of manually providing iterators for the beginning and end.
Example: 
```cpp
std::ranges::find(v, 2);
```
…instead of… 
```cpp
std::find(v.begin(), v.end(), 2);
```
^1692880708518


What is the benefit of projections and pointer-to-member callables in `std::ranges`?
#card-reverse
Projections and pointer-to-member callables allow transforming values on-the-fly.
Example: 
```cpp
std::ranges::sort(v, {}, &Person::age);
```
Sorts a vector of `Person` objects by age without modifying the underlying data.
^1692880708525

How have the return types of algorithms been enhanced in `std::ranges`?
#card-reverse
The return types of most algorithms in `std::ranges` return more information.
Example: 
```cpp
auto [found, end] = std::ranges::find(v, 2);
``` 
returns both the found iterator and the end of the range.
^1692880708531


What is the key advantage of using constrained algorithms in `std::ranges` compared to traditional algorithms?
#card-reverse
Constrained algorithms in `std::ranges` enforce correct usage and type safety, are more expressive, and allow enhanced functionality and safety.
Example: 
```cpp
std::ranges::find_if(v, is_even);
```
compiles only if `is_even` is callable with elements of `v`.
^1692880708537

Certainly! In the context of the example I provided, `is_even` is meant to represent a callable object, which is something that can be called as a function in C++. Callable objects include:

1. **Function Pointers**: A pointer to a function.
2. **Lambda Expressions**: An anonymous function object.
3. **Objects of a Class with an Overloaded `operator()`**: Sometimes referred to as functors.
4. **Standard Functions**: Such as `std::function`, which can store any callable object.

Here's how the `is_even` callable could be defined in various ways:

1. **Function Pointer Example**:
   ```cpp
   bool is_even(int value) {
       return value % 2 == 0;
   }
   ```

2. **Lambda Expression Example**:
   ```cpp
   auto is_even = [](int value) {
       return value % 2 == 0;
   };
   ```

3. **Functor Example**:
   ```cpp
   struct is_even {
       bool operator()(int value) const {
           return value % 2 == 0;
       }
   };
   ```

The idea is that `is_even` can be used as a predicate, a function that returns a boolean, within the `std::ranges::find_if` algorithm to find the first even number in a range. Here's how you could use it with a vector of integers:

```cpp
std::vector<int> v = {1, 3, 4, 5, 6};
auto it = std::ranges::find_if(v, is_even);
if (it != v.end()) {
    // *it is the first even number in v
}
```

The fact that C++ allows various forms of callables offers a great deal of flexibility when writing code. You can define the behavior inline using a lambda, use existing functions, or even create objects with custom behavior.

Here's a flashcard that summarizes this information:

What is a callable in C++, and how can it be used with algorithms such as `std::ranges::find_if`? Provide examples.
#card
A callable in C++ is an entity that can be called as a function. It includes function pointers, lambda expressions, objects with an overloaded `operator()`, and `std::function`. Examples:
-  **Function Pointer**: 
```cpp
bool is_even(int value) { 
	return value % 2 == 0;
}
```
-  **Lambda Expression**: 
```cpp
auto is_even = [](int value) {
	return value % 2 == 0;
};
```
-  **Functor**: 
```cpp
struct is_even {
	bool operator()(int value) const {
		return value % 2 == 0;
	};
}
```
These can be used with algorithms like `std::ranges::find_if(v, is_even);` to find the first even number in a range.
^1692880708543


---

## 🔜 Next Note(s):
- 

---
