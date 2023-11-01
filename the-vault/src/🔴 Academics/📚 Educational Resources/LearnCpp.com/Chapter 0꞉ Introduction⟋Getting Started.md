---
tags:
  - 🔴-academics/📚-educational-resources/name/learncpp-com
  - 🔴-academics/📚-educational-resources/discipline/computer-science/programming-language/cpp
  - study-note
cards-deck: Default::Computer Science
created: 2023-09-03 08:46
updated: 2023-10-31T14:51
---

# LearnCpp.com

## Chapter 0꞉ Introduction⟋Getting Started

### 0.1: [Introduction to these tutorials](https://www.learncpp.com/cpp-tutorial/introduction-to-these-tutorials/)

How do I get the most out of these tutorials? #card-reverse 
- Type in the examples *by hand* and compile them yourself
- As you make mistakes or find bugs in your programs, fix them. Don't neglect learning how to use a debugger (we'll explain how in a future chapter) – its a key tool in figuring out where your programs are going wrong.
- Experiment with the examples
- Plan to spend time on the quizzes
- Write your own short programs using the concepts you have learned.
^1682810812683


### 0.2: [Introduction to programming languages](https://www.learncpp.com/cpp-tutorial/introduction-to-programming-languages/)

What is a **computer program** (also commonly called an **application**)? #card-reverse 
A set of instructions that the computer can perform in order to perform some task.
^1682810812689


What is the process of creating a program called? #card-reverse 
It is called **programming**.
^1682810812692


What do programmers typically produce? #card-reverse 
source code (commonly shortened to **code**)
^1682810812695


What is source code? #card-reverse 
(Commonly shorted to **code**), is a list of commands typed into one or more text files.
^1682810812699


What is the collection of physical computer parts that make up a computer and execute programs called? #card-reverse 
**hardware**
^1682810812703


What is **running** or **executing** the program? #card-reverse 
When a computer program is loaded into memory and the hardware sequentially executes each instruction, this is called **running** or **executing** the program.
^1682810812707


---
#### Machine Language

What is the limited set of instructions that a CPU can understand directly called? #card-reverse 
**machine code** (or **machine language** or an **instruction set**).
^1682810812710


In regard to instructions, what is each individual 0 or 1 called? #card-reverse 
A **binary digit**, or **bit** for short.
^1682810812714


For instructions, can the number of bits vary? #card 
Yes, some CPUs process instructions that are always 32 bits long, whereas some other CPUs (such as the x86 family) have instructions that can be a variable length.
^1682810812717


---
#### Assembly Language

Why was assembly language invented? #card-reverse 
Because machine language is so hard for humans to read and understand.
^1682810812720


Can the CPU understand assembly language directly? #card 
No.
^1682810812724


What must be done before an assembly program can be executed by the computer? #card-reverse 
It must be translated into machine language.
^1682810812727


What translates an assembly program into machine language? #card-reverse 
A program called an **assembler**.
^1682810812730


Is the assembly language portable? #card 
No. A program written in <span class="spoiler">assembly</span> for one CPU will likely *not* work on hardware that uses a different instruction set.
^1682810812733


---
#### High-level Languages

What is a key feature of high level languages? #card-reverse 
These programming languages are designed to allow the programmer to write programs without having to be as concerned about what kind of computer the program will be run on.
^1682810812737


What is a **compiler**? #card-reverse 
A program that reads source code and produces a stand-alone executable program that can be run.
^1682810812740


Once your code has been turned into an executable, do you need a compiler to run the program? #card 
No, you do not.
^1682810812743


What is an executable? #card-reverse 
- An executable file contains binary machine code that has been compiled from source code.
- This low-level code instructs a computer’s central processing unit on how to run a program.
^1682810812747


Do executable files just contain machine code? #card 
No, they also have headers and other information that describes how to load the rest of the file into memory and where to start executing it.
^1682810812750


How should one visualize a simplified representation of the compiling process? #card-reverse 
![[the-vault/assets/images/learncpp-com-compiling-min.webp|450]]
^1682810812753


What is an **interpreter**? #card 
A program that directly executes the instructions in the source code without requiring them to be compiled into an executable first.
^1682810812756


What do interpreters tend to be? #card-reverse 
- More flexible than compilers
- Less efficient when running programs because the interpreting process needs to be done every time the program is run.
	- This means the interpreter is needed every time the programs is run.
^1682810812760


How should one visualize the interpretation process? #card-reverse  
![[the-vault/assets/images/learncpp-com-interpreting-min.webp|450]]
^1682810812763


What is the difference between compiled and interpreted languages? #card 
*Generally* speaking, compilers offer the following advantages…
1. Because they can see all the code up-front, they can perform a number of analyses and optimizations when generating code that makes the final version of the code executed faster than just interpreting each line individually.
2. Compilers can often generate low-level code that performs the equivalent of high-level ideas like “dynamic dispatch” or “inheritance” in terms of memory lookups inside tables.
3. Resulting programs need to remember less information about the original code, which lowers memory usage.
4. Compiled code generally faster because the instructions executed are usually just for the program itself, rather than the program itself *plus* the overhead from an interpreter.
> [!failure] Need to go back and read…
^1682810812767


What are the general exceptions to portability? #card-reverse 
- Many operating systems, such as Microsoft Windows, contain platform-specific capabilities that you can use in your code.
	- These tutorials will avoid any platform specific code.
- Some compilers also support compiler-specific extensions.
	- If used, programs won’t be able to be compiled by other compilers that don’t support the same extensions with modification.
^1682810812770


Q: What is a programming language? #card 
A: A programming language is a set of rules that provides a way of instructing a computer what operations to perform.
^1682810812774


Q: What are some examples of programming languages? #card
A: Some examples of programming languages are C++, Java, Python, Ruby, etc.
^1682810812777


Q: What is a compiler? #card
A: A compiler is a program that reads source code and produces a stand-alone executable program that can then be run.
^1682810812781


Q: What are some advantages of using C++ over other languages? #card 
A: Some advantages of using C++ over other languages are:
-   It is fast and efficient
-   It supports multiple programming paradigms (object-oriented, procedural, functional, generic)
-   It has direct access to hardware resources
-   It has a large and active community
^1682810812784


Q: What are some disadvantages of using C++ over other languages? #card
A: Some disadvantages of using C++ over other languages are:
-   It has a steep learning curve
-   It has complex syntax and semantics
-   It has undefined or platform-dependent behavior in some cases
-   It has manual memory management
^1682810812787

Does C++ have manual memory management? #card 
Yes.
^1683681336554

What is the definition of semantics? #card-reverse 
Semantics refers to the meaning of a sentence. Without proper semantics—and a thoughtful, grammatically correct ordering of words—the meaning of a sentence would be completely different [1](https://www.masterclass.com/articles/syntax-vs-semantics).
^1683681252509

What is the definition of syntax? #card-reverse 
<span class="spoiler">Syntax</span> refers to the rules of grammar in sentence structure—the way that words are ordered to form sentences. [1](https://www.masterclass.com/articles/syntax-vs-semantics).
^1683681252513

What is an example of semantics vs syntax? #card 
- Consider the sentence “She ate a saw.” The syntax of this sentence is correct because it follows the subject-verb-object form. 
	- However, the semantics of this sentence is incorrect because the word “saw” doesn’t match according to the meaning of the sentence. A saw is a tool used for cutting and is not something that can be eaten. So the sentence doesn’t have a logical meaning.
^1683681252517

What is the difference between semantics and pragmatics? #card-reverse 
- Semantics is the study of meaning in language, while pragmatics is the study of meaning in context. 
- Semantics looks at words, phrases, and sentences in their literal sense, while pragmatics takes this a step further by considering the intended meaning of language[1](https://www.tckpublishing.com/pragmatic-and-semantics/). 
- In other words, semantics is context-independent while pragmatics is context-dependent.
^1683681252521

What is an example of semantics vs pragmatics? #card 
- Consider the sentence “I’m starving.” Semantically, this sentence means that the speaker is extremely hungry. 
	- However, pragmatically, the meaning of this sentence can change depending on the context in which it is used. For example, if the speaker has just finished a large meal and says “I’m starving” to their friends, the pragmatic meaning of this sentence could be that the speaker is joking or being sarcastic.
^1683681252525

### 0.3: [Introduction to C/C++](https://www.learncpp.com/cpp-tutorial/introduction-to-cplusplus/)

#### Before C++, there was C
> [!failure]+ Need to go back and read…

---
#### C++

What is C++ best thought of as? #card 
A superset of C, though this is not strictly true (as C99 introduced a few features that do not exist in C++).
^1682810812790


What is C++ primary claim to fame? #card-reverse 
It is an object-oriented language.
^1682810812793


What is a **language standard** (or **language specification**)? #card-reverse 
Each new formal release of the language.
^1682810812797


----
#### C and C++’s philosophy

What is the underlying design philosophy of C? #card 
“trust the programmer”
^1682810812800


Question: What is C++? #card-reverse 
Answer: <span class="spoiler">C++</span> is a high-level programming language that is used to develop applications for a wide variety of platforms, including desktop computers, mobile devices, and game consoles.
^1682810812803


Question: What is a compiler? #card-reverse 
Answer: A <span class="spoiler">compiler</span> is a program that translates source code written in a programming language into machine code that can be executed by a computer's processor.
^1682810812806


Question: What is the difference between a compiler and an interpreter? #card-reverse 
Answer: A <span class="spoiler">compiler</span> translates an entire program into machine code at once, whereas an <span class="spoiler">interpreter</span> translates code line-by-line as it is executed.
^1682810812809


Question: What is object-oriented programming? #card-reverse 
Answer: <span class="spoiler">Object-oriented programming</span> is a programming paradigm in which programs are structured around objects, which encapsulate data and behavior.
^1682810812811


Question: What are the benefits of using C++? #card-reverse 
Answer: Some benefits of using <span class="spoiler">C++</span> include its efficiency, flexibility, and its ability to create high-performance applications.
^1682810812814


Question: What is a header file? #card-reverse 
Answer: A <span class="spoiler">header file</span> is a file that contains declarations for functions and variables that are used in a C++ program.
^1682810812818


Question: What is a namespace? #card-reverse
Answer: A <span class="spoiler">namespace</span> is a way of grouping related identifiers together to avoid naming conflicts and to improve code readability.
^1682810812820


Question: What is a class? #card-reverse 
Answer: A <span class="spoiler">class</span> is a user-defined data type that contains data members and member functions, which define the behavior of the class.
^1682810812823


Question: What is an object? #card-reverse 
Answer: An <span class="spoiler">object</span> is an instance of a class, created using the "new" operator, that contains its own set of data members and member functions.
^1682810812826


Question: What is inheritance in C++? #card-reverse 
Answer: <span class="spoiler">Inheritance</span> is a mechanism in which one class can inherit the properties and behavior of another class. This allows for code reuse and promotes modularity.
^1682810812829


### 0.4: [Introduction to C++ development](https://www.learncpp.com/cpp-tutorial/introduction-to-cpp-development/)

How should one visualize a simplistic approach to C++? #card-reverse  
![[the-vault/assets/images/learncpp-com-development-min.webp|300]]
^1682810812832


What are the general steps to how C++ programs get developed? #card-reverse 
1. Step 1: Define the problem that you would like to solve
2. Step 2: Determine how you are going to solve the problem
3. Step 3: Write the program
^1682810812835


---
#### Step 1: Define the problem that you would like to solve

---
#### Step 2: Determine how you are going to solve the problem

What is the issue of immediately coding a solution? #card-reverse 
Although generates a solution quickly, this usually leads to programs that are fragile, hard to change or extend later, or have lots of **bugs** (technical defects).
^1682810812838


Typically, good solutions have what characteristics? #card-reverse 
- They are straightforward (not overly complicated or confusing).
- They are well documented (especially around any assumptions being made or limitations).
- They are built modularly, so parts can be reused or changed later without impacting other parts of the program.
- They are robust, and can recover or give useful error messages when something unexpected happens.
^1682810812841


What is **debugging**? #card-reverse 
Removing bugs.
^1682810812844


Where does the term *bug* come from? #card 
The term _bug_ was first used by Thomas Edison back in the 1870s! However, the term was popularized in the 1940s when engineers found an actual moth stuck in the hardware of an early computer, causing a short circuit. Both the log book in which the error was reported and the moth are now part of the Smithsonian Museum of American History. It can be viewed [here](https://americanhistory.si.edu/collections/search/object/nmah_334663).
^1682810812847


Studies have shown what about how much of a programmer’s time is actually spent writing the initial program? #card 
20%. The other 80% is spent on maintenance.
What does maintenance usually consist of for a programmer? #card-reverse 
- **debugging**
- updates to cope with changes in the environment (e.g. to run on a new OS version)
- enhancements (minor changes to improve usability or capability)
- internal improvements (to increase reliability or maintainability).
^1682810812850


---
#### Step 3: Write the program

What typical features does a editor have? #card-reverse 
- Line numbering
- Syntax highlighting and coloring
- Unambiguous font 
^1682810812854



### 0.5: [Introduction to the compiler, linker, and libraries](https://www.learncpp.com/cpp-tutorial/introduction-to-the-compiler-linker-and-libraries/)

---
#### Step 4: Compiling your source code

What is needed to compile C++ programs? #card-reverse 
A C++ compiler.
^1682810812856


What does the C++ compiler do? How many tasks are there for it? #card-reverse 
It sequentially goes through each source code (.cpp) file and does the following *two* important tasks…
- Checks code to make sure it follows the rules of the C++ language
	- If it does not, compiler will give you an error (And the corresponding line number) to help pinpoint what needs fixing
- Translates your C++ source code into a machine language file called an **object file**
^1682810812859


What are object files typically named? #card-reverse 
*named.o* or *name.obj*, where name is the same name as the .cpp file it was produced from.
^1682810812862


If my program had 3 .cpp files, how many object files would I generate? #card 
You would generate 3 object files.
![[the-vault/assets/images/learncpp-com-compilesource-min.webp|400]]
^1682810812866


---
#### Step 5: Linking object files and libraries

What happens after a compiler creates one or more object files? #card 
Another program called the **linker** kicks in.
^1682810812869


What is the job of the linker? How many tasks does the linker do? #card-reverse 
1. Take all the object files generated by the compiler and combine them into a single executable program.
2. Link additional **library files** as necessary.
3. Makes sure all cross-file dependencies are resolved properly.
	1. If you define something in one .cpp file, and then use it another .cpp file, the linker connects the two together. If the linker is unable to connect a reference to something with its definition, you’ll geta linker error, and the linking process will abort.
^1682810812872


How should one visualize a linker? #card-reverse 
![[the-vault/assets/images/learncpp-com-linkingobjects-min.webp|400]]
^1682810812876


---
#### Step 6 & 7: Testing and Debugging

---
#### Integrated Development environments (IDEs)

### 0.6: [Installing an Integrated Development Environment (IDE)](https://www.learncpp.com/cpp-tutorial/installing-an-integrated-development-environment-ide/)

What is an **Integrated Development Environment (IDE)**? #card-reverse 
A piece  of software that contains all of the things you need to develop, compile, link, and debug your programs.
^1682810812880


--- 
#### Visual Studio (for Windows)

---
#### Code::Blocks (for Linux or Windows)

---
#### Visual Studio Code (for experienced Linux, macOS, or Windows users)

---
#### Other macOS IDEs

---
#### Other compilers or platforms

---
#### IDEs to avoid

---
#### When things go wrong (a.k.a. when IDE stands for “I don’t even…”)

---
#### Moving on

---

**What is an IDE?**
**Question**: What does IDE stand for in the context of programming? #card-reverse 
**Answer**: IDE stands for Integrated Development Environment.
^1682810812884


**Why use an IDE for C++ programming?**
**Question**: What are some benefits of using an IDE for C++ programming? #card-reverse
**Answer**: Using an IDE can help simplify the process of writing, testing, and debugging code. IDEs often provide tools and features to help manage large codebases, optimize code, and improve productivity.
^1682810812887


**What are some popular IDEs for C++?**
**Question**: Can you name a few popular IDEs for C++ programming? #card-reverse
**Answer**: Some popular IDEs for C++ include Visual Studio, Code::Blocks, Eclipse, Xcode, and Visual Studio Code.  
^1682810812891



**How do I install an IDE for C++?**
**Question**: What steps do I need to follow to install an IDE for C++ programming? #card-reverse
**Answer**: The installation process can vary depending on the specific IDE you choose, but generally involves downloading the installer from the IDE's website, running the installer, and following the on-screen instructions.
^1682810812894


**How do I set up an IDE for C++ development?**
**Question**: What steps do I need to follow to set up an IDE for C++ development? #card-reverse
**Answer**: Setting up an IDE for C++ development typically involves configuring the compiler and build settings, creating a new project, and adding source files to the project. The specifics can vary depending on the IDE you are using. The tutorial provides detailed instructions for setting up Code::Blocks and Visual Studio.
^1682810812898


**What is a compiler?**
**Question**: What is a compiler and what does it do in C++ programming? #card-reverse
**Answer**: A compiler is a software tool that takes your C++ code and translates it into machine-readable code that can be executed by your computer. The compiler checks your code for errors and optimizes it for performance.
^1682810812901


**What is a debugger?**
**Question**: What is a debugger and how can it help in C++ programming? #card-reverse
**Answer**: A debugger is a tool that allows you to step through your code and inspect variables and program state in order to identify and fix errors. Debuggers can help make the process of fixing errors faster and more efficient.
^1682810812905


**What is a linker?**
**Question**: What is a linker and what does it do in C++ programming? #card-reverse 
**Answer**: A linker is a software tool that takes the compiled object code and links it with the necessary libraries and resources to create an executable program that can be run on your computer. The linker resolves external symbols and generates the final output file that you can execute.
^1682810812909


### 0.7: [Compiling your first program](https://www.learncpp.com/cpp-tutorial/compiling-your-first-program/)

--- 
#### Projects

What is a **project**? #card-reverse 
A <span class="spoiler">**project**</span> is a container that holds all of your source code files, images, data folders, etc.
^1682810812912


When should you create a new project? #card-reverse 
> [!tip]+ Best practice
> Create a new project for each new program you write.
^1682810812916


---
#### Console projects

What is a **console project**? #card-reverse 
A program that can be run from the Windows, Linux, or Mac console.
^1682810812920


By default, do console applications have no graphical user interface (GUI)? #card 
Yes, this is true.
^1682810812923


--- 
#### Workspaces / solutions

What is a **workspace**? #card-reverse 
- A <span class=“spoiler”>workspace</span>, or a solution (the term varies by IDE), is a container that can hold one or more related projects.
	- For example, if you were writing a game, and you needed two separate projects (one for the game’s client executable and one for the game’s server executable)
^1682810812926


Should I add multiple projects to a single solution? #card
>[!tip]+ How many projects per solution or workspace?
>Generally recommended for beginners to have a new workspace or solution for each program
^1682810812930


---
#### Writing your first program

What is traditionally the first program programmers write in a new language? #card-reverse 
[hello world program](https://en.wikipedia.org/wiki/Hello_world)
^1682810812933


---
#### Creating a project in Visual Studio 2019 

When creating a project in Visual Studio, what is important to remember when setting up? Think about the solution and project location… #card 
It’s recommended that you also check the _Place solution and project in the same directory_, as this reduces the number of subdirectories that get created with each project.
^1682812336743


What are precompiled headers? #card 
- Precompiled headers can improve compilation times by avoiding redundant compilation that tends to occur.
- Not of necessary concern in smaller projects
- Recommend turning off precompiled headers initially
^1682810812937


---
#### Creating a project in Visual Studio 2017 or older

---
#### Visual Studio Solution Explorer 

---
#### Creating a project in Code::Blocks

---
#### Creating a project in VS Code

---
#### If you’re using g++ on the command line

---
#### If you’re using other IDEs or a web-based compiler

---
#### If compiling fails

---
#### If your program runs but the console window flashes and closes immediately

---
#### What is the difference between the compile, build, rebuild, clean, and run/start options in my IDE?

How is an executable produced? #card-reverse 
1. Each code file in a program is compiled into an object file
2. Object files are then linked into an executable by the linker
^1682810812940


When code file is compiled, your IDE *may* cache the resulting object file. What is the trade off? #card 
Speeds up compilation times significantly (At the cost of a little bit of disk space)
^1682810812944


What is **build**? #card-reverse 
Compiles all *modified* code files in a project or workspace/solution, and then links the object files into an executable.
^1682810812947


What is **clean**? #card-reverse 
Removes all cached objects and executables so the next time the project is built, all files will be recompiled and a new executable produced.
^1682810812950


What is **rebuild**? #card-reverse 
Does a “clean”, followed by a “build”.
^1682810812954


What is **compile**? #card-reverse 
Recompiles a single code file (regardless of whether it has been cached previously).
- Does *not* invoke the linker or produce an executable
^1682810812957


What is **run/start**? #card-reverse 
- Executes the executable from the prior build.
- Many IDEs (e.g. Visual Studio) will invoke a “build” before doing a “run” to ensure you are running the latest version of your code.
^1682810812960


---
#### Conclusion

### 0.8: [A few common C++ problems](https://www.learncpp.com/cpp-tutorial/a-few-common-cpp-problems/)

---
#### General run-time issues

What do if when executing a program, the console window blinks and then closes immediately. #card 
First, add or ensure the following lines are near the top of your program (Visual Studio users, make sure these lines appear after `#include "stdafx.h"` or `#include "pch.h"`, if those exist):
```cpp
#include <iostream>
#include <limits>
```
Second, add the following code at the end of your main() function (right before the return statement):
```cpp
std::cin.clear(); // reset any error flags
std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n'); // ignore any characters in the input buffer until we find an enter character
std::cin.get(); // get one more char from the user
```
^1682810812964


--- 
#### General compile-time issues

--- 
#### Visual Studio issues

What libraries allows using precompiled headers in Visual Studio? #card 
- `#include "stdafx.h"` ← Older library
- `#include "pch.h"` ← Best to use this library
^1682810812967


When I compile my program, I get a warning about “Cannot find or open the PDB file” #card 
- This is a warning, not an error, so it shouldn’t impact your program.
- However, it is annoying…
	- To fix it, go into the Debug menu → Options and Settings → Symbols, and check “Microsoft Symbol Server”.
^1682810812970


---
#### Something else

### 0.9: [Configuring your compiler: Build configurations](https://www.learncpp.com/cpp-tutorial/configuring-your-compiler-build-configurations/)
What is a **build configuration** (also called a **build target**)? #card-reverse 
- A collection of project settings that determines how your IDE will build our project.
^1682810812973


What does a build configuration typically include? #card-reverse 
- What the executable will be named
- What directories the IDE will look in for other code and library files
- Whether to keep or strip out debugging information
- How much to have the compiler to optimize your program
^1682810812979


How many build configurations do most IDEs set up? #card-reverse 
Will usually set up two configurations…
- release configuration
- debug configuration
^1682810812983


What is the **debug configuration**? #card-reverse 
- Designed to help you debug
- Generally one you will use when writing your programs
- Turns off all optimizations, and includes debugging information, which makes programs larger and slower, but easier to debug
^1682810812986


What is the **release configuration**? #card-reverse 
- Designed to be used when releasing your program to the public
- Version typically optimized for size and performance
- Doesn’t contain extra debugging information
- Includes all optimizations, so typically useful for testing the performance of your code
^1682810812989


---
#### Switching between build configurations

For GCC/G++ users, how do you set the GNU C++ compiler? #card 
- Add `-ggdb` to the command line when **debugging** 
- `-O2 -DNDEBUG` for **release** builds
^1682810812993


### 0.10: [Configuring your compiler: Compiler extensions](https://www.learncpp.com/cpp-tutorial/configuring-your-compiler-compiler-extensions/)

What defines the rules about how programs should behave in specific circumstances? #card-reverse 
programming language standards
^1682810812996


What are **compiler extensions**? #card-reverse 
Many compilers implement their own changes to the language, often to enhance compatibility with other version of the language (e.g. C99), or for historical reasons
^1682810813000


What is the best practice regarding **compiler extensions**? #card 
> [!tip]+ Best practice
> Disable compiler extensions to ensure your programs (and coding practices) remain compliant with C++ standards and will work on any system.
^1682810813003


--- 

#### Disabling compiler extensions

For GCC/G++ users, how do you set the GNU C++ compiler to disable compiler extensions? #card-reverse  
Add the `-pedantic-errors` flag to the compile command line
^1682810813007

What is important to remember regarding compiler extension settings? #card 
> [!info]
> A reminder
> These settings are applied on a per-project basis. You need to set them every time you create a new project, or create a template project with those settings once and use that to create new projects.
^1682812336748

### 0.11: [Configuring your compiler: Warning and error levels](https://www.learncpp.com/cpp-tutorial/configuring-your-compiler-warning-and-error-levels/)

Is there a way to explicitly tell the compiler to not generate a particular warning for the line of code in question? #card 
- Yes, individual compilers (including Visual Studio and GCC) offer solutions (via non-portable `#pragma` directives) to temporarily disable warnings
	- This is **not** portable!
- C++ does *not* support an official way to do this
^1682810813011


---

#### Increasing your warning levels

How do most compilers generally generate warnings? #card 
Only generate warnings about the most obvious issues.
^1682810813014


What is the best practice regarding setting the compiler’s warning levels? #card 
> [!tip]+ Best practice
> Turn your warning levels up to the maximum, especially while you are learning. It will help you identify possible issues.
^1682810813017


For GCC/G++ users, how do you set the GNU C++ compiler to increase warning levels up to the maximum? #card-reverse 
Add the following flags to your comand line: `-Wall -Weffc++ -Wextra -Wsign-conversion`
^1682810813021


---
#### Treat warnings as errors

What should you tell your compiler in regards to how it should handle warnings? #card-reverse 
> [!tip]+ Best practice
> Enable “Treat warnings as errors”. This will force you to resolve all issues causing warnings.
^1682810813024


For GCC/G++ users, how do you set the GNU C++ compiler to treat warnings as errors? #card 
Add the following flag to your command line: `-Werror`
^1682810813028


### 0.12: [Configuring your compiler: Choosing a language standard](https://www.learncpp.com/cpp-tutorial/configuring-your-compiler-choosing-a-language-standard/)

---
#### Code names for in-progress language standards

How are finalized C++ language standards named? #card
They are named after the years in which they are finalized (e.g. C++17 was finalized in 2017).
^1682810813031


--- 
#### Which language standard should you choose?

How do professional environments choose a language standard? #card 
They choose one or two versions back from the latest version.
^1682810813034


--- 
#### Setting a language standard in Visual Studio

--- 
#### Setting a language standard in Code::Blocks

--- 
#### Setting a language standard in g++

How do you tell the GNU C++ compiler to use a specific C++ standard? #card-reverse 
You can pass compiler flags `-std=c++11`, `-std=c++14`, `-std=c++17`, or `-std=c++20` to enable C++11/14/17/20 support respectively.
^1682810813038


--- 
#### Setting a language standard for VS Code

--- 
#### Testing your compiler for C++17 compatibility

---
#### Testing your compiler for C++20 compatibility

--- 
#### Exporting your configuration

--- 
#### Where can I view the C++ standards document?
