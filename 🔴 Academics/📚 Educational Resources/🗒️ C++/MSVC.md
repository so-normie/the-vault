---
title: MSVC
created: 2023-09-03 08:46
updated: 2023-09-28 14:16
authors:
  - Edmund Leibert III
tags:
  - 🔴-academics/📚-educational-resources/name/🗒️-cpp
  - 🔴-academics/📚-educational-resources/source-format/miscellaneous
  - 🔴-academics/📚-educational-resources/discipline/computer-science/programming-language/cpp
  - 🔴-academics/📚-educational-resources/name/🗒️-cpp/🔖-bookmark/🗒️-cpp/msvc
  - study-note
cards-deck: 🔴 Academics::📚 Educational Resources::🗒️ C++::MSVC
---

# MSVC

---

> [!Abstract]+ MSVC
> This is a C++ _scratch note_ that is about the Microsoft Visual Studio C

---

 > [!Info]+ 🕸️ All Mention(s): 
 > d

---

 > [!Info]+ 🔙️ Previous Note(s): 
 > d

---

﹇<br>
Is `cl.exe` the **MSVC** compiler? Like, how should I think of what `cl.exe` is? For instance, I am familiar with `g++.exe` being the compiler for C++ source code. Is cl.exe the Visual Studio equivalent for MSVC?

#card 

Yes, `cl.exe` is the Microsoft C++ (MSVC) compiler<sup>[\[1\]](https://learn.microsoft.com/en-us/cpp/build/reference/compiler-options?view=msvc-170)</sup>. It controls the MSVC C and C++ compilers and linker<sup>[\[1\]](https://learn.microsoft.com/en-us/cpp/build/reference/compiler-options?view=msvc-170)</sup>. Just like `g++.exe` is used to compile C++ source code in GCC, `cl.exe` is used to compile C++ source code in MSVC<sup>[\[1\]](https://learn.microsoft.com/en-us/cpp/build/reference/compiler-options?view=msvc-170)</sup>. It can be run only on operating systems that support Microsoft Visual Studio for Windows<sup>[\[1\]](https://learn.microsoft.com/en-us/cpp/build/reference/compiler-options?view=msvc-170)</sup>. You can think of `cl.exe` as the Visual Studio equivalent for MSVC<sup>[\[1\]](https://learn.microsoft.com/en-us/cpp/build/reference/compiler-options?view=msvc-170)</sup>.

⌂
<br>﹈<br>^1695663796624



﹇<br>
What is `g++.exe` and how is it different from MSVC (i.e., `cl.exe`)?

#card 

**g++** is a GNU C++ compiler invocation command, which is used for preprocessing, compilation, assembly, and linking of source code to generate an executable file<sup>[\[1\]](https://www.geeksforgeeks.org/compiling-with-g-plus-plus/)</sup>. It’s part of the GNU Compiler Collection (GCC), which includes front ends for C, C++, Objective-C, Fortran, Ada, Go, and D<sup>[\[2\]](https://gcc.gnu.org/)</sup>. You can use g++ with various tools like MinGW-w64 to create programs that run on different platforms including Windows<sup>[\[3\]](https://code.visualstudio.com/docs/cpp/config-mingw)</sup>.

On the other hand, **Microsoft Visual C++ (MSVC)** is a compiler for the C, C++, and other programming languages provided by Microsoft<sup>[\[4\]](https://en.wikipedia.org/wiki/Microsoft_Visual_C%2B%2B)</sup>. It’s proprietary software and is part of Visual Studio<sup>[\[4\]](https://en.wikipedia.org/wiki/Microsoft_Visual_C%2B%2B)</sup>. MSVC allows you to build modern C and C++ apps for Windows using tools of your choice, including MSVC, Clang, CMake, and MSBuild<sup>[\[5\]](https://visualstudio.microsoft.com/vs/features/cplusplus/)</sup>. It also provides a first-class debugging experience and supports building apps using modern C++ standards<sup>[\[5\]](https://visualstudio.microsoft.com/vs/features/cplusplus/)</sup>.

The main difference between the two lies in their compatibility and usage. g++ is open-source and can be used across different platforms whereas MSVC is proprietary to Microsoft and is primarily used for Windows development. However, both are powerful tools that offer a wide range of features for C++ development.

⌂
<br>﹈<br>^1695663796631



{1:**g++**} is a {2:GNU C++ compiler invocation command}, which is used for preprocessing, compilation, assembly, and linking of source code to generate an executable file<sup>[\[1\]](https://www.geeksforgeeks.org/compiling-with-g-plus-plus/)</sup>. It’s part of the GNU Compiler Collection (GCC), which includes front ends for C, C++, Objective-C, Fortran, Ada, Go, and D<sup>[\[2\]](https://gcc.gnu.org/)</sup>. You can use {1:`g++.exe`} with various tools like MinGW-w64 to create programs that run on different platforms including Windows<sup>[\[3\]](https://code.visualstudio.com/docs/cpp/config-mingw)</sup>.
^1695663796637


﹇<br>
What does MSVC stand for and is that the same thing as the cl.exe?

#card 

MSVC stands for **M**icro**s**oft **V**isual **C**++, which is a development environment that contains various tools, libraries, and compilers for developing C and C++ applications on Windows. It's a part of Microsoft's broader Visual Studio suite, although it can also be installed separately.

`cl.exe` is the command-line compiler that comes as part of MSVC. It's used to compile C, C++, and C++/CLI (Common Language Infrastructure) source files. While `cl.exe` is a component of MSVC, they are not the same thing. MSVC is the broader development environment that includes not just `cl.exe`, but also other tools like the debugger, linker, and various libraries.

To put it simply:
- MSVC is the suite of tools for C/C++ development on Windows.
- `cl.exe` is the command-line compiler tool that's part of this suite.

⌂
<br>﹈<br>


﹇<br>
What is the role of `cl.exe` in MSVC?

#card 

`cl.exe` is the command-line compiler for C, C++, and C++/CLI source files, and it is a part of the Microsoft Visual C++ development environment. 

⌂
<br>﹈<br>


---

> [!Info] 🔜 Next Note(s):
> - 

---
