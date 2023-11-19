---
author: 
publisher: 
published: 
tags:
  - 🔴-academic/📚-educational-resource/name/codility
  - study-note
cards-deck: Default::Computer Science
created: 2023-09-03 11:24
updated: 2023-11-18T02:44
---

context of C++, when tasked with iterating across an alphanumeric text and which the numeric portions of the text represent condensed forms of ambiguous text (i.e., `3aeb` is the same as `???aeb`), how should we go about iterating across this container with respect to the condensed text inside it? 
#card 
- **First approach**: 
	- Iterate across the string, and declare a temporary `int` to serve as a placeholder for all numeric segments we come across.
		- We will also have an uncondensed index to keep track of the uncondensed form. 
	- Using streams, we can easily put all numeric into a stream that we can later on use to insert into out placeholder `int`.
	- If the current character we find is *not* a numeric…
		- Extract the stream data and put it into out placeholder `int`.
		- If the placeholder `int` > 0.
			- Loop through numeric till again 0. 
			- Increment also our uncondensed index.
	- Need check if that if at end of string, do the stream to numeric check.
^1689808799566

How do I dereference a iterator in C++? 
#card 
Like so… `*it`
^1689808799571

How do I set an iterator to the beginning of a container (i.e., string, array, etc.) 
#card 
```cpp
auto it = my_container.begin();
```
^1689808799577

Generally, what type should I use when initializing an iterator in C++? 
#card 
Generally, you should not specify a type but instead use the keyword `auto`. For example… 
```cpp
auto it = my_container.begin();
```
^1689808799583

How do I set an iterator to the end of a container (i.e., string, array, etc.) 
#card 
```cpp
auto it = my_container.end();
```
^1689808799589

When should I not use iterators in C++?
#card 
- Generally, when dealing with **noncontiguous** blocks of memory. 
- For example, when dealing with linked lists…
^1689808799595


Let’s consider the situation that I have extracted some numerical text from a `std::string` and have placed it into a `stdstringstream`. How can I can convert and extract the contents of that string stream to an int?
#card 
```cpp
// ss is a std::stringstream with "345" already in it
int numericSegment {0};
ss >> numericSegment;
```
^1689778079546

In C++, what is something that I must always remember to do when dealing with **streams**? For example, after extracting the data of a `std::stringstream` into an `int`, what must I do, so I can further insert to data into that stream? 
#card 
- You must call the method `clear()` on from the stream that you wish to further insert data into.
- For example, consider the code below...
```cpp
// Simple loop that goes through an alphanumeric
// Note that all numeric segments in the string represent condensed unknown values (e.g., "2Ae" is the same as "??Ae") 
stringstream ss;
int numericSegment {0};
for(auto *it = S.begin(); it != S.end(); it++) {
	if(isdigit(*it)) {
		ss << *it;
	}
	else {
		// Need ot first check the previous
		ss >> numericSegment;
		while (numericSegment > 0) {
			numericSegment--;
			std::cout << "?";
		}
		ss.clear();  // <- Notice how we are calling the clear() method.
		std::cout << *it;
	}
}
```
- Note that when you extract data from a stream, the stream’s state may be changed. 
	- While there are many ways that the error flags of a stream can be set, you can avoid the problem as seen above by calling the `clear()` method of the the stream which clears the stream’s error flags.
^1689808799603

Does the `clear()` method of a stream object also clear the contents of a stream object? 
#card 
No, it does not. The `clear()` method of a stream object only clears the contents of a string stream object.
^1689808799610

Let’s say you have `stringstream` object that you want to clear the contents of. How would you go about this? 
#card 
- You would use the `str()` method with an empty string as an argument.
- For example…
	```cpp
	my_stringstream.str(""); // Clears the data in my_stringstream
	my_stringstream.clear(); // Going to want to call clear just ensure that the error flags are reset
	```
^1689808799616

What is the time and space complexity of the following operations? 
```cpp
my_stringstream.str(""); // Clears the data in my_stringstream
my_stringstream.clear(); // Going to want to call clear just ensure that the error flags are reset
```
#card 
- Time Complexity: $\mathcal{O}(n)$ (i.e., linear)
	- **Linear** with respect to the length of the string.
- Space Complexity: $\mathcal{O}(n)$ (i.e., linear)
	- **Linear** with respect to the length of the string.
^1689808799625

In C++, is the following code valid?
```cpp
std::stringstream ss;
ss << "324"
int x << ss;
```
#card 
No! The `<<` is the insertion operator, which means that it is used to get data on the *right* side and insert into a **stream** on the left side.
^1689808799634

In C++, is the following code valid?
```cpp
int x;
ss >> x
```
#card 
Yes!
^1689808799643

In C++, what is the time and space complexity of storing of accessing the length of a given `std::string` in C++?
#card 
In C++, the `std::string` class stores the length of the string as a member variable, so finding the length of a string using the `length()`  or `size()` member functions has a time complexity of $\mathcal{O}(1)$.
^1689808799652

In C++, do all containers have a time complexity of $\mathcal{O}(1)$ when accessing the length of the container? 
#card 
- Generally, yes. In C++, the C++ standard specifies the `size()` member function to have a time complexity of  $\mathcal{O}(1)$.
- While some older implementation of the C++ standard library may not fully conform, it is safe to say that in modern C++, all containers follow this standard.
^1689808799659

In the context of C++, is the following code valid?
```cpp
printf(%10d 10d% %3s, uncondensedPos, condensedPos, *it);
```
#card  
- While the current code *is* valid, there is a typo. `10d%` will literally just print `10d%` to the console..
	- The correct form should be `%10d`
^1689808799666

In the context of C++ and the `printf()` function, does the percent sign (`%`) go in front or at the end of the format specifier? 
#card 
The front of the format specifier (e.g., `%10d`)
^1689808799672

So C++ does support keyword equivalents for Boolean operators such as…
- `&&` can be written as `and`
- `||` can be written as `or`
- `!=` can be written as `not_eq`
- `!` can be written as `not`
Should we use them? 
#card 
- No, we should not. Although it is a feature, and are defined in the header `<ciso646>`, these alternative representations are not commonly used in C++ code. Developers prefer to use traditional operator symbols
- Additionally, there is the problem of dealing with errors such as below…
	```cpp
	else if(it == S.end()) { // <--- compiler error in code
	    // Other stuff...
	}
	```
^1689808799678

In the general context of dealing with algorithm problems, specifically when dealing with iterating across linear directional or bidirectional containers (e.g., `std::string`, `std::vector`, etc.), what should I structure my `if-else` statements? 
#card 
- Remember to specifically reserve the `else` statement as a error statement. Ideally you should be able to identify all conditions. As such, any condition that reaches else should be classified as completely unknown to the programmer and produce an error.
^1689808799685

Generally, in C++, how should you print an error to the console? 
#card 
- Traditionally, you would us `std::cerr`. For example…
	```cpp
	std::cerr << "An error occured." << std:endl;
	```
- Note, that `std::cerr` is ***not*** buffered and will immediately output all text as it receives.
^1689808799691

What does **nit** mean in the concept of code review?
#card 
Means that the comment is a suggestion to your code, but is not mandatory.
^1689808799698

In the context of C++, more specifically`std::string`, what is the difference between the methods `append()` and `push_back()`? 
#card 
- `append()` Allows for appending *strings* to the end of the caller (i.e., the string). While it does allow for appending single characters to a string (e.g., `str1.append(1, str2)` it is better to just use `push_back()`/
- `push_back()` Allows for appending a *character* to the end of a string.
^1689809074195

Is the following code valid in C++?
```cpp
str1.push_back(str2);
```
#card 
No! The `push_back()` method of `std::string` objects is for **characters**, *not* **strings**.
^1689809598723


Test card 🎴HEllo ^1689778079552



