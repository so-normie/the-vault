---
author: 
publisher: 
published: 
tags: [educational-resource/leetcode, study-note] 
cards-deck: Default::Computer Science
---

# LeetCode

## Problems (Easy)

### 1768. Merge Strings Alternately

#### Solution (C++)

How long should I take for each type of coding problem? #card 
- **Easy**: 6m 30s
- **Medium**: 18m
- **Hard**: 35m
^1684976174703

When doing $O$-notation analysis, how should I account for the space complexity of the final result? #card 
- You shouldn’t. Generally when dealing with space complexity we should only consider extra temporary space that is allocated in the algorithm.
- For example, consider an algorithm with two input strings $m$ and $n$ that produces a new output strong by merging each of the input strings together. In this case, the the space time complexity would be $O(1)$ because we are not creating anymore space outside of the space needed for the final result.

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

What does “amortized constant” mean in C++? #card 
To be filled.

Does the C++ class `std::string` rely on the **null character**? #card 
No, it stores it size as an integer and does not rely on it.

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