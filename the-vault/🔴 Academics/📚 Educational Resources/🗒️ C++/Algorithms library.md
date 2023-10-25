---
title: Algorithms library
created: 2023-09-28 14:16
updated: 2023-10-24T01:49
authors:
  - Edmund Leibert III
tags:
  - 🔴-academics/📚-educational-resources/name/🗒️-cpp-reference
  - 🔴-academics/📚-educational-resources/source-format/miscellaneous
  - 🔴-academics/📚-educational-resources/discipline/computer-science/programming-language/cpp
  - 🔴-academics/📚-educational-resources/name/🗒️-cpp-reference/🔖-bookmark/algorithms-library
  - study-note
cards-deck: 🔴 Academics::📚 Educational Resources::🗒️ C++::Algorithms library
---

# Algorithms  library

---

> [!Abstract]+ Abstract
> Scratch notes pertaining to the **algorithms** library in C++.

---

 > [!Info]+ 🕸️ All Mention(s): 
 > 

---

 > [!Info]+ 🔙️ Previous Note(s): 
 > 
 
---


﹇<br>
In C++, what exactly is a **constrained algorithm**?

#card 

In C++, constrained algorithms are a feature introduced in C++20. They provide constrained versions of most algorithms in the namespace `std::ranges`¹. In these algorithms, a range can be specified as either an iterator-sentinel pair or as a single range argument¹. They also support projections and pointer-to-member callables¹. This means that you can use these algorithms with a wider variety of data types and structures, making your code more flexible and reusable.

**References:**

\[1\]
![ConstrainedAlgorithms202023](the-vault/zotero/ConstrainedAlgorithms202023.md) ^ConstrainedAlgorithms202023

\[2\]
![AlgorithmsLibrary2023](the-vault/zotero/AlgorithmsLibrary2023.md)

\[3\]
![StdRangesFor_each_n2023](the-vault/zotero/StdRangesFor_each_n2023.md)

⌂
<br>﹈<br>^1696159957179



﹇<br>
What are the characteristics of constrained algorithm? Specifically, what makes an algorithm constrained vs. not constrained?

#card 

Constrained algorithms in C++20 are a new feature that provide more flexibility and functionality compared to the traditional algorithms in the Standard Template Library (STL). Here are some characteristics that make an algorithm constrained:

1. **Range Specification**: In constrained algorithms, a range can be specified as either an iterator-sentinel pair or as a single range argument \[[[#^ConstrainedAlgorithms202023-1|1]]\]. This allows for more flexibility when working with different data structures.
2. **Support for Projections and Pointer-to-Member Callables**: Constrained algorithms support projections and pointer-to-member callables \[[[#^ConstrainedAlgorithms202023-1|1]]\]. This means you can use these algorithms with a wider variety of data types and structures, making your code more flexible and reusable.
3. **Informative Return Types**: The return types of most constrained algorithms have been changed to return all potentially useful information computed during the execution of the algorithm \[[[#^ConstrainedAlgorithms202023-1|1]]\]. This can make it easier to understand the result of an algorithm.

In contrast, non-constrained (traditional) algorithms in the STL do not have these features. They typically operate on a pair of iterators specifying a range, do not support projections or pointer-to-member callable, and often have return types that do not provide as much information about the result of the algorithm.

**References:**

\[1\]
![ConstrainedAlgorithms202023](the-vault/zotero/ConstrainedAlgorithms202023.md) ^ConstrainedAlgorithms202023-1

⌂
<br>﹈<br>^1696159957244




---

> [!Info]+ 🔜 Next Note(s):
> 

---
