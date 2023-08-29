---
author: 
created: 2023 
tags: 
- 🔴-academics/📚-educational-resources/name/leetcode
- 🔴-academics/📚-educational-resources/name/leetcode/difficulty/easy
- study-note 
cards-deck: Default::Computer Science
---

# LeetCode

## Problems (Easy)
### 1768. Merge Strings Alternately

#### Solution (C++)

How long should I take for each type of database coding problem? #card 
- **Easy**: 7m30s
- **Medium**: 15m
- **Hard**: 35m
^1689963399203

How long should I take for each type of algorithm coding problem? #card 
- **Easy**: 5m
- **Medium**: 10m
- **Hard**: 20m
^1692234812444


When doing $O$-notation analysis, how should I account for the space complexity of the final result? #card 
- You shouldn’t. Generally when dealing with space complexity we should only consider extra temporary space that is allocated in the algorithm.
- For example, consider an algorithm with two input strings $m$ and $n$ that produces a new output strong by merging each of the input strings together. In this case, the the space time complexity would be $O(1)$ because we are not creating anymore space outside of the space needed for the final result.
^1689963399219

What is a faster, more modern alternative to adding a character to end of a string in C++? #card
- Can use the `push_back()` of the string class. Example is below…
```cpp
string word1 = "red"
string result = "";
int i = 0, j = 0;
while (i < m) {
	result.push_back(word1[i++]);
}
```
^1689963399224


In C++, how can detect a char is the end of a string if using a pointer in C++? #card 
- You can check to see if it is equal to the `'\0'` (i.e. the **null character**) value which signifies the end of a string.
```cpp
#include <iostream>
int main() {
    const char* str = "Hello, World!";
    const char* p = str;
    while (*p != '\0') {
        std::cout << *p;
        ++p;
    }
    std::cout << std::endl;
    return 0;
}
```
^1689963399229


What does “amortized constant” mean in C++? #card 
❗ To be filled.
^1689963399234

Does the C++ class `std::string` rely on the **null character**? #card 
No, it stores it size as an integer and does not rely on it.
^1689963399239

What is the best approach for this problem? #card 
```cpp
// Time: O(n+m)
// Space: O(1) *Not considering the space consumed by the input strings (word1 and word2) and the output string (word3)
#include<string>
class Solution {
public:
    string mergeAlternately(string word1, string word2) {
        const char* ptr1 = word1.c_str();
        const char* ptr2 = word2.c_str();
        string word3 = "";
        while(*ptr1 != '\0' || *ptr2 != '\0') {
            word3 += *ptr1;
            word3 += *ptr2;
            ptr1++;
            ptr2++;
            // Return from below
            if(*ptr1 == '\0') {
                while(*ptr2 != '\0') {
                    word3 += *ptr2;
                    ptr2++;
                } 
                return word3;
            }
            if(*ptr2 == '\0') {
                while(*ptr1 != '\0') {
                    word3 += *ptr1;
                    ptr1++;
                } 
                return word3;
            }
        }
        return word3;
    }
};
```
- Note that we could have used the `push_back()` function from the `std::string` class
^1689963399246

### [1. Two Sum](https://leetcode.com/problems/two-sum/)

#### Solution (C++)

What is the **correct** approach to this problem? #card 
- **Approach 1**
	1. First and foremost, we are going to have to use an **associative container** (e.g., `std::map` or `std::hash`) as we are going to want to iterate across the `std::vector` input.
		1. If the complement value (i.e., the corresponding value that needs to be found to add the *current* value to the `target`) is not found yet, we will put the *current value of the input `std::vector`* as the key and the *index* as the value. 
		2. Continue iterating across the input container and eventually we will find the corresponding value.
	- **Asymptotic Analysis**:
		- Time: $\mathcal{O}(n)$
		- Space: $\mathcal{O}(n)$
	- **Specifics**:
		- Instead of initializing a whole separate `std::vector<int> result` object, we can simply use **list initialization**.
		- Recall that if we simply want to know if a key *exists* in a map, it is better to just use count, especially since `find()` returns an iterator.
^1689963399251

##### Attempt #1 (7/20/2023)   ⏲️ 00:15:00

In the context of C++, is the following code valid?
```cpp
map<int> numMap;
```
#card 
- **No!** `std::map` is a template class that requires *two* arguments. The correct way is describe below...
	```cpp
	map<int, int> numMap;
	```
^1689963399256

At least in the context of C++,  what is the relationships between generics and templates? #card 
A template class allows you to write generics. Recall that generic code is simply code that can work with different data types.
^1689963399261

In C++, specifically in the context of data types, when does the compiler generate code for you? #card 
The compiler generates code for you, from *your* given data types, during compile time.
^1689963399266

In C++, how do I determine if I have found a key in my **map**? #card 
```cpp
if (numMap.find(key) == numMap.end()) {
	// element not found
}
else {
	// element found
}
```
^1689963399271

What is the time complexity of the `find()` method of `std::unordered_map`? 
- $\mathcal{O}(n)$ <i>*Worst case is linear</i> 
- $\Theta(n)$ <i>*Average case is constant</i> 

In the regards to asymptotic complexity, what is the symbol for worst-case complexity? #card-reverse 
- $\mathcal{O}$ is the symbol in the context of Big $O$ notation.
	- Also, describes the **upper bound** of an algorithm
^1689963399277

In the regards to asymptotic complexity, what is the symbol to describe a **tight bound**? #card-reverse 
- $\Theta$ is the symbol in the context of Big $O$ notation.
^1689963399282

In the regards to asymptotic complexity, what is the symbol for best-case complexity? #card-reverse 
- $\Omega$ is the symbol in the context of Big $O$ notation.
	- Describes the **lower bound** of an algorithm.
^1689963399287

What bound does $\mathcal{O}$ describe in the context of asymptotic notation? #card 
Describes the upper bound (i.e., worst case behavior)
^1689963399292


What bound does $\Theta$ describe in the context of asymptotic notation? #card 
Describes the tight bound.
^1689963399296


What bound does $\Omega$ describe in the context of asymptotic notation? #card 
Describes the the lower bound (i.e., best case behavior)
^1689963399301


What is another name for Big $O$ notation? #card 
asymptotic notation
^1689963399306


##### Attempt #1 (7/20/2023)   ⏲️ 00:15:00

What is one of the primary differences between `std::map` and `std::unordered_map`, specifically regarding the time complexity of their search, insertion, and removal operations? #card 
- While they are both associative containers, they have different underlying implementations.
- Additionally, `std::map` has a $\mathcal{O}(1)$ (i.e., constant time) time complexity while `std::unordered_map` has a $\mathcal{O}(\log n)$ time complexity. 
^1689963399310


What is the list initialization for a vector? #card 
`{"2", "3"}`  ← Note the use of braces
^1689963399315
^1689963399321



What is the list initialization for arrays? #card 
`["3", "4"]` ← Note the use of brackets 
^1689963399325


### [1071. Greatest Common Divisor of Strings](https://leetcode.com/problems/greatest-common-divisor-of-strings/description/?envType=study-plan-v2&envId=leetcode-75)

#### Solution (C++)

What is the optimal approach to this problem? #card 
**Approach 1**
1. First and foremost, we can first assert that there is a list of sub values that are **divisible** across both containers by checking if they match when they are combined in both ways. For example, `str1 + str2 == str2 + str1`.  
2. From there, since we know the **gcd** is present, we can simply get the **gcdLength** of both containers length. And with **gcdLength**, we can get the actual **gcd** string.
- <u>**Asymptotic Analysis**</u>
   - Time: $\mathcal{O}(n+m)$
   - Space: $\mathcal{O}(n+m)$
^1689963399330


##### Attempt #1 (7/20/2023) ⏲️ 02:35:40

In C++, what is dangerous about the following code?
```cpp
if(str1.append(str2) == str1.append(str2)) {
	// ...
}
```
#card 
- ! Note that the `append()` method of a string a **modifies** the caller (i.e., the `str1` in the expression `str1.append(str2)`)
	- ***Highly discouraged*** to modify modify existing variables in Boolean expressions.
^1689963399334


In the context of 2d containers, how does can one easily find the greatest common divisor of two separate containers? #card 
1. First and foremost, we can first assert that there is a list of sub values that are **divisible** across both containers by checking if they match when they are combined in both ways. For example, `str1 + str2 == str2 + str1`.  
2. From there, since we know the **gcd** is present, we can simply get the **gcdLength** of both containers length. And with **gcdLength**, we can get the actual **gcd** string.
^1689963399339


How can we check that there *exists* a common divisor of two separate containers? #card 
Assert that there is a list of sub values that are **divisible** across both containers by checking if they match when they are combined in both ways. For example, `str1 + str2 == str2 + str1`. 
^1689963399343


In C++, how can I find the greatest common divisor of two numbers? #card 
Use the `std::gcd()` from the `<numeric>` library.
^1689963399348


I am getting an error with the following  code, wrong?
```cpp
#include <string>
#include <numeric>

using namespace std;

class Solution {
public:
    string gcdOfStrings(string str1, string str2) {
        std::string gcd {""}; 
        if(str1 + str2 == str2 + str1) { // both strings contain multiples of the identical segment
            // atleast one divisible segment
            int gcdLength = gcd(str1.size(), str2.size());
            return str1.substr(0, gcdLength);
        }
        return gcd;
    }
};
```
The compiler error…
```bash
Line 12: Char 29: error: type 'std::string' (aka 'basic_string<char>') does not provide a call operator int gcdLength = gcd(str1.size(), str2.size()); ^~~ 1 error generated.
```
#card 
Note how we declare a variable called `gcd` of type `std::string` already before calling the `gcd()` function. Need to be prepend `std::` to the `gcd()` so that the compiler knows that it is of the namespace library.
^1689963399353


In C++, what library is `gcd()` a part of? #card 
The `<numeric>` library.
^1689963399357


Should we consider the time complexity of adding strings when we are doing asymptotic analysis? #card
Yes, we should. For example, in C++, the time complexity of the `append()` function is $\mathcal{O}(n)$ where $n$ is the length of the string that is beginning append to the calling string.
^1689963399361


What is the worst case time complexity of `gcd()` from the `<numeric>` library? #card 
$\mathcal{O}(\log m \cdot n)$
^1689963399366



### [1431. Kids With the Greatest Number of Candies](https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/description/?envType=study-plan-v2&envId=leetcode-75)

#### Solution (C++) 

What is the optimal approach(s) to the problem? #card
**Approach 1**
1. Calculate the max element in the input vector
2. Iterate through the elements in the vector, and for each element, determine if the current element + `extraCandies` will be greater than the max that was previously found.
	1. If it is, set the one-to-one corresponding index of the results vector to `true`
- <ul>**Asymptotic Analysis**</ul>
	- Time: $\mathcal{O}(n)$
	- Space: $\mathcal{O}(1)$
^1689963399371



##### Attempt #1 (7/20/2023) ⏲️ 00:07:56

In C++, what is the best way to find the max element of a sequence container? #card 
Call the `max_element()` from the `<algorithm>` library function on the sequence container.
^1689963399375


In C++, how many groups are there for the various containers implemented in the language? #card 
- There are 4 main…
	- sequence
	- associative
	- unordered associative containers 
	- container adapters
- There is 1 pseudo…
	- strings
^1689963399379


What implemented data structure(s) in C++ are classified as **sequence containers**? #card-reverse 
- `array`
- `<vector>`
- `<forward_list>`
- `<list>`
^1689963399384


When generally conducting asymptotic analysis, do we generally account for the space of the input or output? #card 
No, we focus on analyzing additional memory that may be required.
^1689963399388


Let us consider the case that I have an iterator called `*it` traversing a `std::vector`. How can I modify the value of an element using the iterator? #card 
Simple. Just dereference the iterator and assign it a new value. For example…
```cpp
*it = 4;
```
^1689963399393


When dealing with a LeetCode problem, and our problem requires us returning a container, what is something we can do to make out life easier? #card 
Well, if know the size of the container we will be returning we can initialize to the size of input immediately. For example…
```cpp
vector<bool> kidsWithCandies(vector<int>& candies, int extraCandies) {
	vector<bool> result(5, true);
}
```
^1689963399398


How do I initialize a vector with an already predetermined length 5 with all the elements being `false`? #card 
```cpp
vector<bool> v(5, false);
```
^1689963399402



In the following code,  what does it do? What is it significance?
```cpp
if(flowerbed[i] == 0) {	
	bool emptyLeftPlot = (i == 0) || (flowerbed[i - 1] == 0);
	bool emptyRightPlot = (i == flowerbed.size()) || (flowerbed[i + 1] == 0);
}
```
#card 
1. If the current plot is empty, thus *potentially* allowing for a flower at a pot…
	1. If we are at the start of the container, return true at least for the condition of the left side. If we are **not** at the start, simply then check. Recall the compiler will only evaluate till the first expression of an OR statement that return true.
	2. If we are at the end of the container, return true at least for the condition of the right side. If we are **not** at the end, simply then check. Recall the compiler will only evaluate till the first expression of an OR statement that return true.
^1689963399406


How do I generally get the sum of a sequential container in C++? #card 
Use the function `std::accumulate()` from the `<numeric>` library.
^1689963399411


In C++, is it `<numerics>` or `<numeric>` library? #card 
It is `<numeric>` library.
^1689963399415



### [345. Reverse Vowels of a String](https://leetcode.com/problems/reverse-vowels-of-a-string/description/?envType=study-plan-v2&envId=leetcode-75)

#### Solution (C++)

What is the optimal approach to this problem? #card 
**Approach 1**
1. Have two pointers, `itL` and `itR`, set to the start and last element of the string.
2. Start a loop that continues till `itL` is greater than or equal to `itR`
	1. If the `itL` pointer is a vowel, proceed. If not, increment.
		1. If `itL` is a vowel, check if `itR` is a vowel. If they are both, swap and increment/decrement both after. If not, simply decrement `itR`.
- **Asymptotic Analysis**
	- Time: $\mathcal{O}(n)$
	- Space: $\mathcal{O}(1)$
^1689963399419




##### Attempt #1 (7/21/2023) ⏲️ 00:07:56

What does the following code mean? 
```cpp
bool itR = s.end()
```
#card
Sets the iterator `itR` to the last index of the container `s`.
^1689963399423


Is the following valid code in C++?
```cpp
std::iter_swap(*itL, *itR);
```
#card 
- No, it is not. `std::iter_swap()` can **not** swap the values derived from the dereferencing of  iterators.
- If you desire to swap the *values* (i.e., not the actual positions of the iterators), then you should just do the following...
	```cpp
	std::iter_swap(itL, itR);
	```
- If you desire to swap the actual positions of where two iterators point to, then you can call the `std::swap()` from `<utility>` library.
^1689963399428


What library is the `std::swap()` function from? #card 
It is from the `<utility>` library.
^1689963399433


What library is the `std::iter_swap()` function from? #card 
It is from the `<algorithm>` library.
^1689963399437


When initializing a map with already predetermined values, do I use {} or []? #card 
Should use {}.
^1689963399441

When iterating across a sequential container, for my primary (most outer) loop, when should I stop my loop? #card 
When my left iterator is **not** strictly less than (i.e., `<`) my right iterator.
^1689963696393


### [151. Reverse Words in a String](https://leetcode.com/problems/reverse-words-in-a-string/description/?envType=study-plan-v2&envId=leetcode-75)

#### Solution (C++)

What is the optimal approach to this problem? #card 
**Approach 1**
1. First reverse, in place, the string (i.e., reverse the string with respect to each *character*).
2. Find each, now reversed, word by using the space as a delimiter. Do this by using the `end` iterator and the `std::find()` to set the `end` iterator to the first space after the word. Reverse it again to now make the word in order.
3. Set the `start` equal to the `end` iterator. 
	1. While the `start` iterator does not equal the end of the string, increment start to point to the second element after the first delimiter that is after a word. 
	2. Erase all, from this new start to the next not delimiter element, so we can remove all extra delimiters (i.e., spaces).
4. Trim any extra leading or trialing white spaces.
- **Asymptotic Analysis**
	- Time: $\mathcal{O}(n)$
	- Space: $\mathcal{O}(1)$
^1689983870617

##### Attempt #1 (7/21/2023) ⏲️ 00:07:56

What is the time and space complexity of splitting a `std::string` into a `std::vector` of words? #card 
- Time Complexity: $\mathcal{O}(n)$
- Space Complexity: $\mathcal{O}(n)$
^1689997459037

Does C++ have mutable strings? #card
Yes.
^1689969615256

What does it mean for a programming language to have mutable strings? #card 
- Means that the elements of the string can be modified in place.
- This is in contrast to languages like Java, or Python.
^1689969615260

In  C++, how can I simply reverse the contents of a container? #card 
You can simply call use the `std::reverse()` algorithm from the `<algorithm>` library.
^1689969615265

In C++, what is the easiest, modern, way of converting a sentence that is a string to a vector of segments (that represents words)? Consider the delimiter in this case being a space. #card 
Since the delimiter is a space, we can simply insert the sentence into a `stringstream()` and then extract the contents of that `stringstream` to a word.
- We can simply use a `while()` loop, since the `stringstream` will default to using a space as a delimiter.
- For example...
```cpp
std::stringstream ss(inputSentence);
std::vector<std::words> words;
	
string word = "";
while(ss >> word) {
	words.push_back(word)
}
```
^1689969615269

What is wrong with the following code? 
```cpp
std::stringstream ss(inputSentence);
std::vector<std::words> words;
	
while(ss >> words) {
	words.push_back(words)
}
```
#card 
You need to actually extract from `ss` into a **string**. Can just simply extract it into  the vector.
^1689983870623

What is the time complexity of the `std::reverse()` algorithm? #card 
The time complexity is $\mathcal{O}\left( \frac{n}{2} \right)$
^1689983870628

For this problem, what is the downside to going with the “split first” approach? #card 
Although this makes the code more readable, this increases the space complexity of the algorithm to $\mathcal{O}(n)$, since we are having to create a copy of the initial container.
^1689983870632

Given a vector of strings, how can I, ideally using functions from the `<numeric>` or `<algorithm>` standard library, concatenate the elements into a larger string where the elements (i.e., words) are separated by strings? #card 
- You can use the `std::accumulate()` from the numeric library to add up all the container elements together (if the elements supports it, *which it should*).
- For example…
```cpp
#include <iostream>
#include <numeric> 
#include <string>
#include <vector>
int main() {
	std::vector<std::string> words = {"Test"};
	std::string sentence;
	if (!words.empty()) {
		sentence = std::accumulate( 
			std::next(words.begin()),
			words.end(),
			words[0],
			[](const std::string& a, const std::string& b) 
			{ 
				return a + ' ' + b; 
			} 
		); 
	}
std::cout << sentence << '\n'; 
return 0; }
```
^1689989918512


What does the following code snippet do? 
```cpp
if( !words.empty()) {
	reversedS = std::accumulate(
		std::next(words.begin()),
		words.end(), words[0],
		[](const string a, const string b) {
			return a + ' ' + b;
		}
	);
}
```
Make sure to break down each argument of `std::accumulate()`.
#card 
- The first argument is means that we will start from the element *next* of `words.begin()` (i.e., the second element)
- We end our accumulation at `words.end()`
- Our initial accumulation value is the first element of words.
- The last argument is a lambda function in which we get the previous value that was accessed and the current and add it together to build our new (accumulating) result.
^1689983899295


In the following code I sent, why do we increment `start` (`start++`) first, and then find if there are any extra delimiters (i.e. spaces)? 
```cpp
auto start = s.begin();
while (start != s.end()) {
	auto end = std::find(start, s.end(), ' ');
	std::reverse(start, end);
	start = end;
	
	if (start != s.end()) {
		start++;
		auto next = std::find_if(start, s.end(), [](char c) { return c != ' '; });
		if (next != start) {
			start = s.erase(start, next);
		}
	}
}
```
Essentially, why do we have start not to the first space but the second one after a word? #card 
The reason for incrementing `start` is so that we at least leave one space.
^1689983870642

In modern C++, how can we remove all *leading* elements of a string in place? #card-reverse  
To achieve this, do the following…
```cpp
auto end = std::find_if_not(s.begin(), s.end(), [](char c){ return std::isspace(c); });
std::erase(s.begin(), end);
```
^1689983870646

In modern C++, how can we check if a character is a space? #card 
Use the function `std::space()`. For example, `std::isspace(c)` will either return `true` or `false` depending on if `c` is a character.
^1689983870651

In modern C++, how can we remove all *trailing* elements of a string in place? #card-reverse 
To achieve this, do the following…
```cpp
start = std::find_if_not(s.rbegin(), s.rend(), [](char c){ return std::space(c); }).base();
std::erase(start, s.end());
```
^1689983870655

If the following code snippet valid? 
```cpp
auto start = std::find_if_not(s.end(), s.begin(), [](char c){ return std::space(c); });
std::erase(start, end());
```
#card
No, the following code snippet is not valid. To search through a string in reverse order you need to use **reverse iterators**.
^1689983870660

What should I always do to iterator that is returned after reverse searching through a container? #card 
Call the method `.base()` on it so we can get the forward iterator.
^1689983870664

How many arguments does `std::find()` and `std::find_if_not()` take? #card 
Three.
- First two to determine range and traversal direction
- Last for what value to find or the lambda function.
^1689983870668

What library is `std::find()` and `std::find_if_not()` from? #card 
They are from the `<algorithm>` library.
^1689983870673

### [238. Product of Array Except Self](https://leetcode.com/problems/product-of-array-except-self/?envType=study-plan-v2&envId=leetcode-75)

#### Solution (C++)

##### Attempt #1 (7/21/2023) ⏲️ 00:07:56


What does the third argument in `std::accumulate()` stand for? #card 
The size of each step.
^1689983870677

For the function `std::distance()`, is the first argument taken as the starting iterator or is it the second? #card 
The first argument is the starting iterator. 
^1689983870682

What is the time complexity of `std::accumulate()`? #card 
- Time Complexity: $\mathcal{O}(n)$
- Space Complexity: $\mathcal{O}(1)$
^1689983870687

What is the time complexity of the following snippet of code? 
```cpp
while(it != nums.end()) { // Get the product of both the left and right side 
	int leftMultiplied = std::accumulate(nums.begin(), it, 1, std::multiplies<int>()); 
	result.push_back(leftMultiplied);
	it++; 
}
```
#card
Time Complexity: $\mathcal{O}(n)$
^1689983870692

What is the optimal approach for finding what the total multiple of all values to the left of an element in a sequential container is? #card
- **Base Case**: First element is added to our `std::vector<int> maxLeftMultiple` variable.
- **General Case**:
	1. Multiply the current element with the previous element. Push the result of that to `maxLeftMultiple`
	2. Once done iterating across *once* we know that for each element, the accumulated multiplication of all values to the left of it is its index, minus one (-1), of the `maxLeftMultiple` vector.
	- For a better visual…
		- ![[Pasted image 20230721170047.png|100]]
- **Time Complexity**: $\mathcal{O}(n)$
^1689983870697

How can I get the accumulated multiple (i.e., multiplying all elements together) of a sequential container in C++? #card 
You can you the `std::accumulate()` function. For example…
```cpp
std::accumulate(nums.begin(), nums.end(), 1, std::multiplies<int>());
```
^1689987955244


What is the equivalent of…
```
std::accumulate(nums.begin(), nums.end(), std::multiplies<int>());
```
but using lambda functions? #card 
```cpp
std::accumulate(nums.begin(), nums.end(), 1, [](int x, int y){ return x * y});
```
^1689987955248

When creating a lambda function for `std::accumulate()`, how many parameters can I design my lambda function to have? #card 
For `std::accumulate()`, lambda functions must max two parameters.
- If two parameters, then lambda function is a **binary operation** where first argument is the current accumulated value and the second argument is the current value.
^1689987955253

When creating a lambda function for `std::find_if_not()`, how many parameters can I design my lambda function to have? #card 
Only one.
^1689987955257

How can I compute the products of all elements to the left of each element? #card 
You can use the `std::inclusive_scan()` function. For example…
```cpp
std::vector<int> results;
std::inclusive_scan(nums.begin(), nums.end(), result.begin(), std::multiplies<int>());
```
- Note that we will have to shift the output `result` one to the right to **correctly** align the value.
^1689987955262


How many parameters does `std::inclusive_scan()` have? #card 
`std::inclusive_scan()` has two versions:
- 3 arguments: first input iterator, last input iterator (exclusive), output iterator
- 4 arguments: first input iterator, last input iterator (exclusive), output iterator, binary operation
^1689987955266

Can you specify the initial value for the output range for `std::exclusive_scan()`? #card 
`std::exclusive_scan()` has two versions:
- 4 arguments: first input iterator, last input iterator (exclusive), output iterator, initial value
- 5 arguments: first input iterator, last input iterator (exclusive), output iterator, initial value, binary operation
^1689987955272

What is the time complexity of `std::inclusive_scan()`? How about `std::exclusive_scan()`? #card 
They both have a time complexity: $\mathcal{O}(n)$
^1689987955277

How many parameters does `std::accumulate()` have? #card
`std::accumulate()` has two versions.
	- 3 arguments: starting position (inclusive), ending position (exclusive), initial accumulate value
	- 4 arguments: starting position (inclusive), ending position (exclusive), initial accumulate value, binary operation
^1689987955281

How many parameters does `std::find()` have? #card 
`std::find` has 3 arguments:
- 3 arguments: first input iterator, last input iterator (exclusive), value to search for
^1689988097046

How many parameters does `std::find_if_not()` have? #card
`std::find_if_not` has 3 arguments:
- 3 arguments: first input iterator, last input iterator (exclusive), unary predicate
^1689987955286

Just using either `std::exclusive_scan()` or `std::inclusive_scan()`, how can I get the following result…
```
1, 2, 3, 4, 5 <- input vector inVec
1, 1, 2, 6, 24
```
Note! We can not do a shift at the end.
#card
Use the following code…
```cpp
std::exclusive_scan(inVec.begin(), inVec.end(), result.begin(), 1, std::multiplication<int>)
```
- Can do the same thing using `inclusive_scan()`, but need to do a shift at the end.
- Note that if we were doing addition, we would want to have our initial value to be zero.
^1689989854782

Just using either `std::exclusive_scan()` or `std::inclusive_scan()`, how can I get the following result…
```
1, 2, 3, 4, 5 <- input vector inVec
1, 1, 2, 6, 24
```
Find a solution that requires using a shift at the end.
#card 
Use the following code…
```cpp
std::inclusive_scan(v.begin(), v.end(), inclusive_scan_results.begin(), std::multiplies<int>());
// Need to do shift at the end.
```
- Can do the same thing using `exclusive_scan()` and no need for a rightward shift.
- Note that if we were doing addition, we would want our initial value to be zero.
^1689989854790

How can I shift a sequential container to the right using modern C++ practices. #card 
Can use the `std::rotate()` function from the `<algorithm>` library.
```cpp
// Shift result to the right by one position
std::rotate(inclusive_scan_results.rbegin(), inclusive_scan_results.rbegin() + 1, inclusive_scan_results.rend());
inclusive_scan_results.front() = 1;
```
^1689989854797

What is the time complexity of `std::rotate()`? #card 
Time complexity: $\mathcal{O}(n)$
^1689989854804

❗How many parameters does `std::rotate()` have? #card 
To be filled.
^1689990005349

❗What initial value should I use when finding the product of all elements to the left of every element in a sequential container? Note than I am using `std::exclusive_scan()`. #card 
To be filled.
^1689989854811

❗What initial value should I use when finding the sum of all elements to the left of every element in a sequential container? Note than I am using `std::exclusive_scan()`. #card 
To be filled.
^1689989854818

Is it `std::multiplies<int>()` or `std::multiplied<int>()`? #card 
It is `std::multiplies<int>()`
^1689991710389

How many parameters does `exclusive_scan()` have? #card 
`std::exclusive_scan` is a function template in the C++ Standard Library that computes an exclusive prefix sum (also known as exclusive scan) of the elements in a range. It has two versions:
- The first version takes 5 arguments:
    1. `first`: an iterator to the first element of the input range
    2. `last`: an iterator to one past the last element of the input range
    3. `d_first`: an iterator to the first element of the output range
    4. `init`: the initial value of the sum
    5. `binary_op`: a binary operation function object that will be applied to the elements (by default, this is `std::plus<>`)
- The second version takes 4 arguments:
    1. `first`: an iterator to the first element of the input range
    2. `last`: an iterator to one past the last element of the input range
    3. `d_first`: an iterator to the first element of the output range
    4. `init`: the initial value of the sum
The second version uses `std::plus<>` as the binary operation by default.
^1689991710394


What are the parameters of `std::transform()`? #card 
`std::transform` is an algorithm in the C++ Standard Library that applies a given function to a range of elements and stores the result in another range, beginning at a specified output iterator.
`std::transform` has two versions:
- The first version takes 4 arguments:
    1. `first1`: an iterator to the first element of the first input range
    2. `last1`: an iterator to one past the last element of the first input range
    3. `d_first`: an iterator to the first element of the output range
    4. `unary_op`: a unary operation function object that will be applied to the elements
- The second version takes 5 arguments:
    1. `first1`: an iterator to the first element of the first input range
    2. `last1`: an iterator to one past the last element of the first input range
    3. `first2`: an iterator to the first element of the second input range
    4. `d_first`: an iterator to the first element of the output range
    5. `binary_op`: a binary operation function object that will be applied to pairs of elements
The first version applies the given unary operation to each element in the input range and stores the result in the output range. The second version applies the given binary operation to pairs of elements from two input ranges and stores the result in the output range.
^1689993457873

Generally, when should you use the `std::vector` method `reserve()`? #card-reverse 
- The container’s method changes the vector’s allocation or capacity to a certain size.
- It does not change the vector size or the elements in it. 
^1689991710399


❗Generally, when should you use the `std::vector` method `resize()`? #card-reverse 
- The container’s method changes the actual size of teh vector and the number of element that is contains.
- Will add or remove elements from the vector to achieve the size needed.
	- If growing, the new elements are set to the default value.
	- If shrinking, the elements are erased.
^1689991710403

Does the `std::vector` method `erase()` effect the actual size of the vector? #card 
Yes. It will actually shorten the vector, and as result, also drop elements.
^1690960629617

### [334. Increasing Triplet Subsequence](https://leetcode.com/problems/increasing-triplet-subsequence/description/?envType=study-plan-v2&envId=leetcode-75)

#### Solution (C++)

##### Attempt #1 (7/21/2023) ⏲️ 00:31:50

In LeetCode, what is the shortcut to, when not using the vim key bindings, to duplicating the current line and pasting it below? #card-reverse 
<kbd>Shift</kbd>+<kbd>Alt</kbd>
^1690053546525

In LeetCode, what is the shortcut to, when not using the vim key bindings, to move the current line either up or down? #card-reverse 
<kbd>Alt</kbd>+<kbd>↑</kbd>/<kbd>↓</kbd>
^1690053546530

### [443. String Compression](https://leetcode.com/problems/string-compression/?envType=study-plan-v2&envId=leetcode-75)

#### Solution (C++)

##### Attempt #1 (7/21/2023) ⏲️ 00:30:10

### [9. Palindrome Number](https://leetcode.com/problems/palindrome-number/)

What is the optimal solution/approach for the following problem? #card 
1. Approach problem by getting lower half of the `int` and then reversing it to see if it equals the front half.
	1. **Edge Cases:**
		- If input number is between 0 and 9, it is a palindrome
		- If number is of base 10 is not a palindrome.
	2. Can make a `while` loop to iterate to the first (lower half) of the number and build the lower half.
	3. Make sure to drop the middle value (if the input num length is odd) from the remaining front half.
	4. Make sure that lower half it equal to the front half. 
2. **Time Complexity:**
	- Time: $\mathcal{O}(n)$ *\*Where $n$ is the length of the number*
	- Can also be interpreted as $\mathcal{O}($`std::log10(num)`$)$.
	- Space: $\mathcal{O}\left( \frac{n}{2} \right)$
^1690169948313

#### Solution (C++)

##### Attempt #1 (2023-23-07) : ⏲️ 00:21:00

How can I get the last digit of a number greater than or equal to 0? #card 
Simply divide the modulo by 
```cpp
int num = 432;
lastDigit = 432 % 10;
```
^1690161603795

What does the following code return? 
```cpp
int num = 432155
std::cout << num % std::pow(10,5);
```
#card 
- Prints out the following… `32155`
- Note how that this method returns **all** digits up to, from right-to-left, the $n$ position (where $n=5$ in the above case).
^1690161603803

How can one “vectorize” an `int` (i.e., split up all elements/digits into a container?) #card 
The most common, or efficient way is to use recursion.
```cpp
void vectorize_int(int num, std::vector<int> &numVector) {
	if(num > 9) {
		vectorize_int(num / 10, numVector);
	}
	numVector.push_back(num % 10);
}
```
The time complexity of this algorithm is…
- Time Complexity: $\mathcal{O}(\log_{10}$`num`$)$
- Space Complexity: $\mathcal{O}(\log_{10}$`num`$)$
^1690161603810

How do you calculate the length of a positive integer? #card 
Simply use the `std::log10()` and `std::floor()` function from the `<cmath>` library
```cpp
std::floor(std::log10(num)) + 1;
```
^1690161603817

What is the time complexity of the following function?
```cpp
std::floor(std::log10(num)) + 1;
```
#card
The time complexity of the following function is $\mathcal{O}(n)$ where $n$ is the amount of digits in the integer.
^1690166438377

What is the time complexity of the function `std::stoi()`? #card 
- While it can achieve $\mathcal{O}(1)$, if there is no leading whitespace, it usually just $\mathcal{O}$(`str.length()`)
^1690161603824

Can negative numbers be considered palindromes? #card 
No.
^1690166438386

What does $\text{mod}(54456,10^3)$ equal? #card 
Equals 456. Remember that this expression all numbers (from right-to-left) the values **up to** the exponent that of 10.
^1690166438395

Is zero a palindrome? #card 
- Recall that for a number to be a palindrome, it, and the reverse of itself must be equal. 
- Considering that for any number ending in zero, the reverse of it would have to start with zero, we can deduce that 0 is the ***only*** valid number “ending” in zero that can be a palindrome.
^1690166438403

Is 10 a palindrome? #card 
No.
^1690166438412

What are some immediate edge cases I need to be thinking about for the problem? #card 
- 0 is the only number ending in zero that is a palindrome.
- Negative numbers are not palindromes.
^1690166438420

What library is `std::floor()` from? #card 
From the library `<cmath>`.
^1690166438428

What is wrong with the following code?
```cpp
int num = 32345;
int numLength = std::floor(std::log10(num)) + 1;
```
#card 
Forgetting to do the `static_cast<int>()` to ensure that the return type of the right side of that statement returns an `int`.
^1690166438435

What must I **always remember to f\*cking do** when I am using a `while` loop? #card 
**REMEMBER TO F\*CKING INCREMENT THE ITERATOR**
- Every time you make that mistake it is a 2 minute plank you fat lard.
^1690166438442

 When building edge cases, especially for this problem, what is something I must mind when writing code for my base cases? #card 
 Keep in mind the ranges of our `if-else` Boolean checks and that they are not short circuiting.
^1690166438449

What is wrong with the following code?
```cpp
if(numLength % 2 == 1) {
	x / 10;
}
```
#card 
Not updating the code!
^1690166438456

What is the problem with the following code?
```cpp
int numLength = static_cast<int>( std::floor(std::log10(x)) + 1 );
int i = {0};
int halfX {0};

while(i < std::floot(numLength/2) ) {
	int lastDigit = x % 10;
	x = x / 10;
	halfX = halfX * 10;
	halfX += lastDigit;
	i++;
}
```
#card 
Not accounting for case in loop where the value is just a single digit. Correction below…
```cpp
int numLength = static_cast<int>( std::floor(std::log10(x)) + 1 );
int i {0};
int halfX {0};
while(i < std::floor(numLength/2) ) {
	int lastDigit = x % 10;
	x = x / 10;
	if(i >= 1) { // If we are not at the first digit.
		halfX = halfX * 10;
	}
	halfX += lastDigit;
	i++;
}
```
^1690168898120

How do I get the *lower* half of an **odd** or **even** number. For example, an input of `9` would return `3`. Or, an input of `4` would return `2`.
#card 
```cpp
int lowerHalf = std::floor(num / 2);
```
^1690168898127

What is wrong with the following code? 
```cpp
int x = {0};
```
#card 
This is **copy initialization**, should prefer to use **list initialization**.
^1690169111842


### [2. Add Two Numbers](https://leetcode.com/problems/add-two-numbers/)

#### Solution (C++)

❗What is the optimal solution to this problem? #card 
To be filled.
^1690177023110

##### Attempt #1 (2023-23-07) ⏲️ 00:21:00

What is the easiest way to check if a pointer is not null? #card
Simply do the following…
```cpp
if(l1) {  // <-- Will be true if l1 is not equal to nullptr
	// ...
}
```
^1690176419662

What does the following code do?
```cpp
int valAtPos = (l1 ? l1->val : 0) + (l2 ? l2->val : 0) + carry;
carry = valAtPos / 10;
valAtPos = valAtPos % 10;
```
#card 
1. Cleanly defaults to zero if `l1` or `l2` equals `nullptr`. If not, then we access each of the nodes respective `val`s.
2. `carry` is set to the *tens* digit of `valAtPos`.
3. `valAtPos` is set to the last (*ones*) digit of `valAtPos`.
 
What must I **always remember** to do when dealing with linked lists, specifically building my pointer. #card 
- First, create a `dummy` node. Then you can have your result, or “building/iterating”, node pointer be independent of tracking the start of your built linked list.
^1690176419670

What is happening in the code below?
```cpp
ListNode dummy;
ListNode* result = &dummy;
// ...
return dummy.next;
```
#card 
- We are creating a `ListNode` object named `dummy` on the stack. 
- Since we are not creating a pointer to that object, we must use the `.` (i.e., “dot”) operator.
^1690176419678

For cases, going past the initial iteration of the container, where should I test them? #card 
Outside the loop!
^1690176419685

### [3. Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/)

#### Solution (C++)

##### Attempt #1 (2023-23-07) ⏲️ 00:40:00

When dealing with a test case, after the iteration over the original container is done, where should we do the test case? #card 
Test it *after* the main loop. Do this especially for cases in which we are testing cases where their is no stopper. Consider the importance of the following…
```cpp
// Loop
if (maxLength < currSubSet.size() ) {
	maxLength = currSubSet.size();
}
```
^1690177023118

### [27. Remove Element](https://leetcode.com/problems/remove-element/)

#### Solution (C++)

What is the optimal approach to this problem? #card 
**Approach 1**
1. Simply use the generic algorithms and built-in methods of `vector` to remove the elements in our input vector that we want gone.
	1. Remember to call first `remove()`
	2. Finally return the now modified’s vector size.
	3. Then call `erase()`
**Time Complexity**
- Time: $\mathcal{O}(n)$
- Space: $\mathcal{O}(1)$
^1690725166700


##### Attempt #1 (7-30-2023) ⏲️ 00:25:00

In C++, is the `erase` method a member function of some container classes in C++ or is a generic algorithm? #card 
`erase` is a member function of some container classes such as `vector`, `deque`, and `list`.
^1690724587627

How many parameters does `erase` from the `<algorithm>` library have? #card 
Erase has **two** overloads…
- First overload takes a single iterator as an argument (removes a single element from the `vector`)
- Second overload takes two iterators as arguments. Removes a range of elements from the `vector`
**Example:**
```cpp
#include <vector>
#include <iostream>
using namespace std;
int main() {
    vector<int> nums = {1, 2, 3, 4, 5};
    // Example of the first overload of the erase method
    // Remove a single element
    nums.erase(nums.begin() + 1); // nums now contains {1, 3, 4, 5}
    // Print the contents of the vector
    for (int num : nums) {
        cout << num << " ";
    }
    cout << endl;
    // Example of the second overload of the erase method
    // Remove a range of elements
    nums.erase(nums.begin() + 1, nums.begin() + 3); // nums now contains {1, 5}
    // Print the contents of the vector
    for (int num : nums) {
        cout << num << " ";
    }
    cout << endl;
    return 0;
}
```
^1690724587634

What is the time complexity of the `erase` method ? #card 
The time complexity of `erase` is $\mathcal{O}(n)$ (i.e., linear)
^1690725004479

What is the space complexity of the `erase` method? #card
The space complexity of `erase` is $\mathcal{O}(1)$ (i.e., constant)
^1690725009772

What is the time complexity of `remove()` #card 
- $O(n)$
- This is because the `remove()` function needs to iterate across the entire container.
^1690727104022

Does `remove` actually delete/erase values in the element? #card 
- No, all that the `remove` generic algorithm does is shift all the values that are desired to be “removed” to the end of a the container.
- If you want to actually remove the elements, you should call `erase` to actually remove the elements in place.
^1690727104027

Is `remove` a method of containers? #card 
- No, it is a generic algorithm and should be called like so. 
- For example...
```cpp
std::remove(...)
```
^1690727104032

Does `erase()` remove elements in place? #card 
Yes, the `erase` method of the `vector` class in C++ removes elements from the vector in place.
^1690736191773


### [28. Find the Index of the First Occurrence in a String](https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/)

#### Solution (C++)

##### Attempt #1 (2023-30-07) ⏲️ 00:25:00

Is the following code valid?
```cpp
std::find(haystack.begin(), haystack.end(), needle);
```
#card 
No.
^1690761141179

What is the time complexity of the `find` method of the `string` class? #card 
While there are various implementations, it can be expected that the worst-case time complexity is $\mathcal{O}(n)$
^1690761141184


### [35. Search Insert Position](https://leetcode.com/problems/search-insert-position/)

#### Solution (C++)

##### Attempt #1 (2023-30-07) ⏲️ 00:25:00

What is the worst-case time complexity of binary search? #card 
$\mathcal{O}(\log n)$
^1690761141188

What are some three ways in which binary search is implemented in the `algorithm` library in C++? #card 
The following generic algorithms…
- `std::lower_bound()`
- `std::upper_bound()`
- `std::binary_search()`
^1690761141193

What is the difference between `std::lower_bound()` and `std::upper_bound()`? #card 
- `std::lower_bound()` does a binary search to find the “closest” value, in a sorted array, strictly **greater than or equal to** ($\geq$) a given value.
- `std::upper_bound` does a binary search to find the “closest” value,  in a sorted array, **greater than** ($>$) a given value.
^1690761141198

Essentially, is `std::lower_bound()` returning an iterator to an element $>$ than a value and `std::upper_bound()` returning an iterator to an element $≥$? #card 
No, this is false.
- `std::lower_bound()` is best thought as $≥$
- `std::upper_bound()` is best thought as $>$
^1690761141202

Does `std::binary_search()` return an iterator? #card 
No, it returns a Boolean stating if the value is found in the container.
^1690761301754

What is the time complexity of `std::lower_bound()`, `std::upper_bound()`, and `std::binary_search()`? #card
**Time Complexity:** $\mathcal{O}(\log n)$
^1690761301759

### [58. Length of Last Word](https://leetcode.com/problems/length-of-last-word/)

#### Solution (C++)

What is the optimal solution for this problem? #card 
- **Approach:**
	1. Find the last non-space character in our input string (use reverse search)
	2. Using that position, find the first space (use reverse search)
	3. Return the length between the iterators
- **Time Complexity:**
	- **Time**: $\mathcal{O}(n)$
	- **Space**: $\mathcal{O}(1)$
^1690771191576


##### Attempt #1 (2023-30-07) ⏲️ 00:25:00

What is the difference between `std::find()` from the the `<algorithm>` and the `find()` method of `std::string`? #card 
- `std::find` is focused on finding elements in a range (in this case chars if the container is a `std::string`)
- `std::string::find` is a member function of the `std::string` class that searches for a substring or a character within a string.
	- Returns the position go the first occurrence of the substring or a character within the string, or `std:::string::npos` if no such occurrence is found.
^1690762055326


Using `std::string::find`, could you search starting in reverse to find the first space (in reverse)? #card 
- You can instead use `std::string::rfind` which is a member function that searches for the last occurrence of a character or substring within a string.
- Example…
```cpp
#include <iostream>
#include <string>
int main() {
    std::string str = "Hello, world!";
    char ch = ' ';
    std::size_t pos = str.rfind(ch);
    if (pos != std::string::npos)
        std::cout << "The last occurrence of '" << ch << "' is at position " << pos << '\n';
    else
        std::cout << "The character '" << ch << "' was not found\n";
    return 0;
}
```
This code will output `The last occurrence of ' ' is at position 6`.
^1690762055332 

Is the following code valid?
```cpp
class Solution {
public:
    int lengthOfLastWord(string s) {
        // Find the last space in a string
        auto it = s.rfind(' ');
        if(it == std::string::npos) {
            return s.size();
        }
        else {
            auto sSize = std::distance(s.begin(), it);
            return sSize;
        }
    }
};
```
#card 
No. If you wish to calculate the distance between an iterator and a numerical (e.g., `int`) representation of a position using `std::distance` from the `<algorithm>` library, best to use `auto sSize = std::distance(s.begin(), s.begin() + it);`
^1690762605039

Lets say I have wish to calculate the distance between an iterator and a numerical (e.g., `int`) representation of a position using `std::distance` from the `<algorithm>` library. How can I correctly go about this? #card 
Follow this format… 
```cpp
auto sSize = std::distance(s.begin(), s.begin() + it);
```
^1690762615907

❗What is wrong with the approach of just searching (in reverse) for the first space, if it exists, in a container? #card 
To be filled.
^1690764348740

❗What is the time and space complexity of split a string, using the space `' '` as the delimiter. #card 
To be filled.
^1690764348745

Does `std::string::rfind` return the first element or substring found in string (in reverse order)? #card 
True. It searches for the *last* occurrence of a character or substring within a string, starting form the end of the string.
^1690764348750

❗Is the following code valid?
```cpp
auto lastChar = std::find_if_not(s.rbegin(), s.rend(), delimeter);
```
#card
To be filled.
^1690764348755

Is the following code valid in C++?
```cpp
auto lastChar = std::find_if_not(s.rbegin(), s.rend(), [](char ch){return std::isspace(ch);});
```
#card 
No, it is not.
^1690765413126


### [66. Plus One](https://leetcode.com/problems/plus-one/)

#### Solution (C++)

##### Attempt #1 (2023-30-07) ⏲️ 00:21:03

How do I insert a value at the beginning of `std::vector`? #card 
Use the following format…
```cpp
vec.insert(vec.begin(), 1);
```
^1690771191583


### [67. Add Binary](https://leetcode.com/problems/add-binary/)

#### Solution (C++)

##### Attempt  #1 (2023-30-07) ⏲️ 

How do you convert an `int` to a `std::string`? #card 
Use the function `std::to_string` from the `<string>` library.
^1690771191591

How to convert a `char` to an `int` in C++? #card 
Simply do the following…
```cpp
int charInt = charVal - '0';
```
^1690771205487

Does C++ have an inbuilt function to convert `char` to `int`? #card 
No.
^1690771191598

❗ What does `atoi()` do? #card 
To be filled.
^1690771191605


Is the following code valid? 
```cpp
sumResult.insert(sumResult.begin(), std::to_string(columnSum));
```
#card
No. ❗Need to explain more
^1690771191611

Is the following code valid?
```cpp
int aVal = itA != a.rend() ? *itA - '0' : 0;  
int bVal = itB != b.rend() ? *itB - '0' : 0;
```
#card 
Yes, it is also the recommended template for adding digits.
^1690771191617

How to convert an `int` to `char`? #card 
Simply do the following…
```cpp
int intVal = '0' + charVal;
```
^1690771191622


Does C++ have an inbuilt function to convert `int` to `char`? #card 
No.
^1690771191626


### [69. Sqrt(x)](https://leetcode.com/problems/sqrtx/description/)

### [70. Climbing Stairs](https://leetcode.com/problems/climbing-stairs/description)

#### Solution (C++)

What is the **optimal solution** to this problem? #card 
- **Fibonacci Approach**
	- **Approach:**
		1. First, let us consider a function $W(n)$ where $n$ is the number of steps in the staircase and $W(n)$ is the function returning the number of possible ways to get to the top.
		2. Consider the base cases, we know that we can either do 1 step or a 2 step for our first move.
			1. Thus, our base case is $W(n) = W(n-1) + W(n-2)$
			2. Note, that this works, because the idea is that we are saying that the number of ways to climb $n$ stairs is the sum of how many ways we can climb to $n-1$ (we take 1 step first) and $n-2$ (we take 2 step first)
				- Refer to the image below for a more concrete explanation…
				  ![[Pasted image 20230801232925.png|500]]
		3. So, with that known, we recognize this as the Fibonacci Sequence (shifted to the right by 1), and we can just use the closed-form of eh Fibonacci Sequence to find our answer.
	- **Asymptotic Complexity:**
		- Time: $\mathcal{O}(log (n))$
		- Space: $\mathcal{O}(1)$
- ⚠️ The approaches below are not as optimal…
- **Dynamic Programming**
^1690960629623

##### Attempt #1 ⏲️ 99:99:99

In the context of asymptotic complexity, which is faster $\mathcal{O}(\log_{2} n)$ or $\mathcal{O}(1)$? #card 
$\mathcal{O}(\log_{2} n)$ becomes slower than $\mathcal{O}(1)$ when $n > 10$ .
Proof for when $n > 10$ then is $\log_{2} n > 1$ (i.e., function is slower)…
To prove mathematically, we compare both the functions directly and by comparing their growth rates…
$$
\displaylines{
f(n) = \log_{2} n \\
g(n) = 1
}
$$
…so at $n = 10$, we find that…
$$
\displaylines{
f(n) = \log_{2} 10 \\
f(n) ≈ 2.30259 \\
\dots \\
g(n) = 1
\\dots \\
f(n) > g(n)
}
$$
…now lets compare the growth rates and show that $O(\log_{2} n)$ will never become fast that $O(1)$ past that point…
$$
\displaylines{
\frac{df}{dn} = \frac{1}{n \log(n)} \\
\dots \\
\frac{dg}{dn} = 0 \\
}
$$
So as we see, the growth rate of that $O(\log_{2} n)$ is will never become faster than $O(1)$ past the point of 10 for at ten $f(n)$ becomes greater and has a faster growth rate.
^1690951200222

What is the derivate of the natural logarithm (i.e., $\ln$)? #card 
Where $f(x)=\ln(x)$, $f'(x) = \frac{1}{x}$
^1690951200228

When we talk about binary search having time complexity of $\mathcal{O}(n)$, do we mean natural log (i.e., $\ln$) or do we mean $\log_{10}$? #card 
Neither, in the context of computer science and algorithm analysis the base is typically 2. 
- This is because in computer science, specifically binary search , we divide the problem siz in half at each step, which corresponds to a logarithm base 2.
^1690951200233

How do you remove a log (i.e., $\log$) from one side of the equation? #card 
- Simply raise both sides of the equation to the same exponent as the base of the logarithm.
- For example… $\log_{10}(x) = y$ becomes $x = 10^y$
^1690951200238

What is the derivative of a constant (e.g., 1)? #card 
It is always zero.
^1690951542539

What is the derivative of $\log_{2}(x)$? #card
If $f(x) = \log_{2}(x)$ then $f'(x) = \frac{1}{x \ln{2}}$
^1690951542548

In mathematics, what is a closed-form expression and what is its relevance? #card 
- A closed-form expression is a mathematical expression that is formed with constants, variables, and a finite number of standard operations and functions, such that +,-,×, ÷, nth root, exponentiation, logarithm, trigonometric functions, and inverse hyperbolic functions.
	- Closed-form expressions are always ideal cause they can serve as closed-form solutions that nearly always more desirable (i.e., efficient).
^1690952946872

What is an example of a closed-form expression vs.  its open-form expression? #card 
- Lets consider the sum of an arithmetic series. An arithmetic series is a sequence of numbers in which each term is obtained by adding a constant difference to the preceding term, such as $1, 4, 7, 10, …$ .
- The formula for the sum of the first $n$ of an arithmetic series is…
	- $S_{n} = \frac{n}{2} * (a_{1} + a_{n})$ 
		- where $S_{n}$ is the sum of the first $n$ terms
		- where $a_{1}$ is the first term
		- where $a_{n}$ is the nth them
^1690952946877

❗ What is the closed-form expression for the Fibonacci sequence? #card 
To be filled.
^1690952946882

Does modern C++ have a built-in way of determining of returning the value of a Fibonacci sequence? #card 
No.
^1690953629712

What is this $φ$ symbol called? #card-reverse 
Phi
^1690953629717

What is this $ψ$ symbol called? #card-reverse 
Psi
^1690953629723

What is **Binet’s formula**? #card-reverse 
Another name for the closed-form expression for the Fibonacci sequence.
^1690953691055

Write out the numbers of the Fibonacci Sequence? #card 
![[Pasted image 20230801224026.png|300]]
^1690954907285

What are the first four numbers of the Fibonacci Sequence? #card 
$0, 1, 1, 2$
^1690954907292

What pattern is the following reminiscent of?
$W(n) = W(n-1) + W(n-2)$
#card 
The Fibonacci pattern!
^1690955762536

Is the following code valid?
```cpp
#include <cmath>
#include <numeric>
class Solution {
public:
    int climbStairs(int n) {
        // Need to choose what fibonacci number we want.
        auto phi = (1 + sqrt(5))/2;
        auto psi = (1 - sqrt(5))/2;
        auto numerator = pow(phi,n) - pow(psi,n);
        auto denominator = sqrt(5);
        return floor(numerator/denominator);
    }
};
```
- While the code is valid, for the purposes of this problem, the logic is wrong.
- Recall that, in the context of the stair climbing problem, the number of ways to blimb `n` stairs corresponds to the `(n+1)`th Fibonacci problem, not the `n`th. 
	- This is because of the base cases…
		- If there is only 1 step, there is only one way. Which works… ✅
		- However, if there are 2 steps, that means there are two ways (1step + 1step and 2step). This does not work if we have it set to just the `n`th Fibonacci value cause that is 1, not the necessary 2 we need.
	- As such, we need to shift our mapping to the Fibonacci Sequence by 1 to the right (i.e., `n+1`)










### [83. Remove Duplicates from Sorted List](https://leetcode.com/problems/remove-duplicates-from-sorted-list/description/)

#### Solution (C++)

What is the optimal approach to this problem? #card 
- **Two Pointer Nodes**
	- **Approach:**
		1. Remember the preliminary **edge cases** for linked list type problems…
			1. If the head is a `nullptr`
			2. If the length of the linked list is 1. 
		2. Simply do the the two pointer approach, and once you get to a new value, set the first pointer’s next to the second pointer.
			1. Remember to only access the value of the second pointer if it is not point to null.
		3. Remember some ending edge cases…
			1. If there are repeating values at the end.
	- **Asymptotic Complexity:**
		- Time: $O(n)$
		- Space: $O(1)$
^1690960629629

##### Attempt #1 (2023-01-08) ⏲️ 00:09:00

What are two very ***important**** **edge cases** to consider when dealing with linked lists? #card 
1. Case where the `head` of the linked list is equal to `nullptr`. The linked list is of length 0.
2. Case where the `head->next` of the linked list is equal to `nullptr`. The linked list is of length 1.
^1690960629679

What is a general end of list **edge case** when dealing with linked lists? #card 
Need to consider the case were we are at the end of the linked list!!!
- Can not dereference a pointer that is equal to `nullptr`
^1690960629684







### [88. Merge Sorted Array](https://leetcode.com/problems/merge-sorted-array/)

#### Solution (C++)

##### Attempt #1 (2023-02-08) ⏲️ 

Is the following code valid? 
```cpp
#include <algorithm>
#include <vector>
class Solution {
public:
    void merge(vector<int>& nums1, int m, vector<int>& nums2, int n) {
        std::vector<int> result;
        result.reserve(n + m);

        std::merge(nums1.begin(), nums1.end(), nums2.begin(), nums2.end(), result.begin());
        nums1 = result;
    }
};
```
#card 
No.
^1690968808506

Can `std::merge()` , from the `<algortihm>` library, merge the input containers, so that the merge happens in place? For example, if I have two containers partially filled with enough space in one to contiain both the first and second container, can `std::merge()` merge both containers in place into the first container? #card 
No, it cannot. To do that, you have to use the two pointer method.
^1690968808512

Is the following code valid?
```cpp
#include <algorithm>
#include <vector>
class Solution {
public:
    void merge(vector<int>& nums1, int m, vector<int>& nums2, int n) {
        std::vector<int> result(m+n);
        std::merge(nums1.begin(), nums1.end(), nums2.begin(), nums2.end(), nums1.begin());
    }
};
```
#card 
No! `std::merge()` is not capable of merging two containers in place! I.e., we can not have the result container *be* the input container.
^1690968808516



### [121. Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/)

#### Solution (C++)

##### Attempt #1 (2023-08-02) ⏲️ 99:99:99

Does `std::numeric_limits<int>` support infinity? #card 
No, it does not. `infinity()` only supports `double` and `float`.
^1690968808521

What are the properties of *Greedy* algorithms? #card 


What are the properties of *Dynamic Programming* algorithms? #card 
1. **Overlapping Subproblems:** The problem can be divided into subproblems which are reused several times. The optimal solution of the original problem can be obtained by combining the solutions of these overlapping subproblems.
2. **Optimal Substructure:** The solution to the problem can be built from the optimal solutions to its subproblems. This property means that we can construct a globally optimal solution from local optima.
3. **Memoization or Tabulation:** Dynamic programming algorithms typically employ memoization or tabulation techniques to store the results of expensive function calls and reuse them when the same inputs occur again. This helps in avoiding recalculations and saves time.
4. **Ordering:** Dynamic programming solutions usually follow some kind of ordering, whether it's left-to-right, bottom-up, top-down, or any other order that makes sense for the problem. The order must be such that the solution to a problem depends only on the problems that have already been solved.
5. **Trade-off between time and space:** Dynamic programming reduces time complexity by increasing space complexity. It trades a higher space usage for faster running times.
6. **Deterministic:** DP problems must have deterministic solutions. The solution for each subproblem remains the same and does not change over time.
7. **Polynomial complexity:** With dynamic programming, many problems that could potentially have exponential complexity can often be solved in polynomial time.
^1690968808526

Must *Dynamic Programming* problems have deterministic solutions? #card 
Yes.
^1690968808530

Must *Dynamic Programming* problems solutions follow some ordering? #card 
- Usually, they follow some kind of ordering, whether it’s left-to-right, bottom-up, top-down, or any other order that makes sense for the problem.
	- The ordering is only valid if, as we traverse, each solution at that current state depends on solutions from the previous iteration.
^1690968808535

Do “Dynamic Programming” algorithms employ memorization or tabulation techniques? #card 
Typically yes, they do. This is so they can store the results of expensive function calls and reuse them when the same inputs occur again. Helps avoid recalculations
^1690968808540

What is the primary trade-off when it comes to *Dynamic Programming* problems? #card 
Increase the space complexity but reduce the time complexity.
^1690968873868

In the context of *Dynamic Programming* algorithms, what does the following property mean?
**Overlapping Subproblems**
#card 
The problem can be divided into subproblems which are reused several times. The optimal solution of the original problem can be obtained by combining the solutions of these overlapping subproblems.
^1690969192951

In the context of *Dynamic Programming* algorithms, what does the following property mean?
**Optimal Substructure** #card 
The solution to the problem can be built from the optimal solutions to its subproblems. This property means that we can construct a globally optimal solution from local optima.
^1690969192959

In the context of *Dynamic Programming* algorithms, what does the following property mean?
**Memorization or Tabulation** #card 
Dynamic programming algorithms typically employ memorization or tabulation techniques to store the results of expensive function calls and reuse them when the same inputs occur again. This helps in avoiding recalculations and saves time.
^1690969192964

In the context of *Dynamic Programming* algorithms, what does the following property mean?
**Ordering** #card
Dynamic programming solutions usually follow some kind of ordering, whether it's left-to-right, bottom-up, top-down, or any other order that makes sense for the problem. The order must be such that the solution to a problem depends only on the problems that have already been solved.
^1690969192968

In the context of *Dynamic Programming* algorithms, what does the following property mean?
**Trade-off between time and space**  #card
Dynamic programming reduces time complexity by increasing space complexity. It trades a higher space usage for faster running times.
^1690969192973

In the context of *Dynamic Programming* algorithms, what does the following property mean?
**Deterministic** #card
DP problems must have deterministic solutions. The solution for each subproblem remains the same and does not change over time.
^1690969192978

In the context of *Dynamic Programming* algorithms, what does the following property mean?
**Polynomial complexity** #card 
With dynamic programming, many problems that could potentially have exponential complexity can often be solved in polynomial time.
^1690969192983

What is a naive recursive solution for the Fibonacci Sequence? #card 
```cpp
int fib(int n) {
	if(n == 0) {
		return 0;
	}
	else if(n == 1) {
		return 1;
	}
	else {
		return fib(n-1) + fib(n-2);
	}
}
```
^1690970881259

What is the time complexity of a naive recursive solution for the Fibonacci Sequence? #card 
Time complexity… $\mathcal{O}(2^n)$
^1690970881264

How is the infamous Fibonacci problem an example of how *Dynamic Programming* can solve this problem? #card
The Fibonacci sequence is defined as:
- `Fib(0) = 0`
- `Fib(1) = 1`
- `Fib(n) = Fib(n-1) + Fib(n-2)` for `n > 1`
- A naive recursive solution to compute `Fib(n)` would be:
```python
def fib(n):    
	if n <= 1:       
		return n    
	else:       
		return fib(n-1) + fib(n-2)`
```
- However, this naive recursive solution has exponential time complexity, as it performs a large amount of repeated computation. For example, `fib(4)` would recursively compute `fib(3)` and `fib(2)`, but then `fib(3)` would again recursively compute `fib(2)`. This is a lot of redundant work.
- This is where dynamic programming can be applied. Let's transform this solution into a dynamic programming solution and analyze how it satisfies the properties listed:
	1. **Overlapping Subproblems:** The naive recursive solution recalculates `Fib(n-2)` even though it was already computed while calculating `Fib(n-1)`. This clearly shows that the subproblems overlap.
	2. **Optimal Substructure:** The Fibonacci number `Fib(n)` is the sum of `Fib(n-1)` and `Fib(n-2)`. Hence, we can obtain the solution to the problem from the solutions to its subproblems.
	3. **Memoization or Tabulation:** We can store the results of the subproblems in an array and reuse them when needed, instead of recalculating them. This technique is known as memoization.
	4. **Ordering:** We can solve the problem in an ordered manner – specifically, bottom-up, starting from the smallest subproblem (`Fib(0)` and `Fib(1)`) and building up to the original problem (`Fib(n)`).
	5. **Trade-off between time and space:** By storing the results of each subproblem, we use more space. However, this also allows us to reduce the time complexity from exponential to linear.
	6. **Deterministic:** For a given input `n`, the output of `Fib(n)` will always be the same.
	7. **Polynomial complexity:** The dynamic programming solution has a time complexity of O(n), which is polynomial.
- Here's the dynamic programming solution to compute `Fib(n)`:
```python
def fib(n):    
# Declare an array to store Fibonacci numbers.
	f = [0, 1] + [0]*(n-1)      # Calculate Fibonacci numbers from 2 to n
	for i in range(2, n+1):         
		f[i] = f[i-1] + f[i-2]     
	
	return f[n]
```
- The above solution initializes an array of size `n+1`, and then iteratively computes each Fibonacci number from 2 to `n`. The result is stored in `f[n]` and returned at the end. This solution has a time complexity of O(n) and a space complexity of O(n), which is much more efficient than the naive recursive solution for large values of `n`.
^1690974873296

❗ What is the *Dynamic Programming* approach to implementing the Fibonacci Sequence? #card 
To be filled.
^1690974873302

❗ When trying to find the maximum subarray (or however we define the maximum based on the elements of a container), what algorithm should we at least attempt to resort to first? #card 
Kadane’s algorithm
^1690974873308

What is the **maximum subarray problem**? #card 
- Also known as the maximum segment sum problem.
- Task of finding a contiguous subarray with the largest sum, within a given 1-dimensional array.
- Can be solved in $\mathcal{O}(n)$ time and $\mathcal{O}(1)$ space.
^1690974873312

In what time and space complexity can, **maximum subarray problems** be solved in? #card
- Time: $\mathcal{O}(n)$
- Space: $\mathcal{O}(1)$
^1690974873317


In the context of the **maximum subarray problem**, what does an **empty subarray** mean? #card 
- Its means literally just an empty array `[ ]`; the sum of an empty subarray is zero.
- For example, consider the array $[-1, -2, -3]$
	- If we could **not** return an empty array, then the “maximum” subarray of this problem would be $[-1]$
	- Now, if we **can** return an empty array, then the maximum subarray would be the empty subarray.
^1690974873322

What is Kadane’s Algorithm where empty subarrays are admitted? #card 
```python
def max_subarray(numbers):
    """Find the largest sum of any contiguous subarray."""
    best_sum = 0
    current_sum = 0
    for x in numbers:
        current_sum = max(0, current_sum + x)
        best_sum = max(best_sum, current_sum)
    return best_sum
```
^1690974873327

What is Kadane’s Algorithm where no empty subarrays are admitted? #card 
```python
def max_subarray(numbers):
    """Find the largest sum of any contiguous subarray."""
    best_sum = -infinity
    current_sum = 0
    for x in numbers:
        current_sum = max(x, current_sum + x)
        best_sum = max(best_sum, current_sum)
    return best_sum
```
^1690974873332

Is Kadane’s Algorithm considered a *Greedy* or *Dynamic Programming* algorithm? #card 
- Kadane’s Algorithm unfortunately does not fit neatly into either camp.
- It has properties of both.
^1690968808545

In Kadane’s algorithm, when do we update the starting index of our subarray? In other words, when do we reset the beginning of our subarray? How would we keep track of the starting index? #card 
- In the original algorithm, the starting index of the subarray is not being tracked. However, if you want to track the starting index of the subarray, you can do so by adding a variable `start_index` and updating it whenever `current_sum` is reset to `x`. Here’s an example:
```python
def max_subarray(numbers):
    """Find the largest sum of any contiguous subarray."""
    best_sum = -infinity
    current_sum = 0
    start_index = 0
    for i, x in enumerate(numbers):
        if x > current_sum + x:
            current_sum = x
            start_index = i
        else:
            current_sum += x
        best_sum = max(best_sum, current_sum)
    return best_sum, start_index
```
- In this example, `start_index` is updated whenever `current_sum` is reset to `x`, which means that a new subarray with a larger sum has been found. This happens when the previous subarray has a negative sum and adding it to the current element `x` would result in a smaller sum than `x` itself. In this case, it’s better to start a new subarray at the current index `i`. So, to answer your question, we update the starting index of our subarray when we reset `current_sum` to `x`.
^1690974873337

In Kadane’s algorithm, when do we update the ending index of our subarray? In other words, how would keep track of the ending index? #card 
You can also track the ending position of the subarray by adding another variable `end_index` and updating it whenever `best_sum` is updated. Here’s an example:
```python
def max_subarray(numbers):
    """Find the largest sum of any contiguous subarray."""
    best_sum = -infinity
    current_sum = 0
    start_index = 0
    end_index = 0
    for i, x in enumerate(numbers):
        if x > current_sum + x:
            current_sum = x
            start_index = i
        else:
            current_sum += x
        if current_sum > best_sum:
            best_sum = current_sum
            end_index = i
    return best_sum, start_index, end_index
```
In this example, `end_index` is updated whenever `best_sum` is updated, which means that the current subarray has a larger sum than the previous best subarray. The ending position of the subarray is the current index `i`. So, to answer your question, we update the ending index of our subarray when we update `best_sum`.
^1690974873342

