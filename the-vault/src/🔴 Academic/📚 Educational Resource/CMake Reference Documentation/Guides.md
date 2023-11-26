---
tags:
  - 🔴-academic/📚-educational-resource/name/cmake-documentation
  - 🔴-academic/📚-educational-resource/discipline/computer-science/technology/cmake
  - study-note
cards-deck: Default::Computer Science
created: 2023-10-13T01:57
updated: 2023-11-18T02:44
---

# CMake Documentation

## Guides

### CMake Tutorial

#### [Step 1: A Basic Starting Point](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#)

##### [Exercise 1 - Building a Basic Project](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#exercise-1-building-a-basic-project)

The most basic CMake project is an {c1::executable} built from a {c2::single source code file}. 
^1687644802396

What is the convention for naming commands? #card 
**Note:** Although upper, lower and mixed case commands are supported by CMake, lower case commands are preferred and will be used throughout the tutorial.
^1687644693312

What must every project’s CMakeLists.txt start with? #card-reverse  
Specifying a minimum CMake version using `cmake_minimum_required()` command.
^1687644693318

What does `cmake_minimum_required()` do? #card-reverse  
Establishes policy settings and ensures that the following CMake functions are run with a compatible version of CMake.
^1687644693324

How to name a project? #card-reverse  
Use the `project()` command.
^1687644693329

When should we call `project()` #card 
Should be called soon after `cmake_minimum_required()`.
^1687645628645

Is `project()` required with every project? #card 
Yes.
^1687645628651

Is `project()` only used to set the project name? #card 
No, as we will see later, this command can also be used to specify other project level information such as the language or version number.
^1687645628656

The {[`add_executable()`](https://cmake.org/cmake/help/latest/command/add_executable.html#command:add_executable "add_executable")} command tells CMake to create an executable using the specified source code files.
^1687645628663

###### [Goal](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#goal)

###### [Helpful Resources](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#helpful-resources)

What does the function `add_executable()` do? #card-reverse 
```cmake
add_executable(<name> [WIN32] [MACOSX_BUNDLE]
               [EXCLUDE_FROM_ALL]
               [source1] [source2 ...])
```
Adds an executable target called `<name>` to be built from the source files listed in the command invocation. The `<name>` corresponds to the logical target name and must be globally unique within a project. The actual file name of the executable built is constructed based on conventions of the native platform (such as `<name>.exe` or just `<name>`).
^1687644693335


###### [Files to Edit](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#files-to-edit)

###### [Getting Started](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#getting-started)

###### [Build and Run](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#build-and-run)

What is the first step to building and running my project? #card-reverse 
Run the [`cmake`](https://cmake.org/cmake/help/latest/manual/cmake.1.html#manual:cmake(1) "cmake(1)") executable or the [`cmake-gui`](https://cmake.org/cmake/help/latest/manual/cmake-gui.1.html#manual:cmake-gui(1) "cmake-gui(1)") to configure the project and then build it with your chosen build tool.
^1687644693340

What is the simplified process, via the `cmake` executable, to build and run a project. #card 
1. Create a build directory:
	`mkdir Step1_build`
2. Next, navigate to that build directory and run [`cmake`](https://cmake.org/cmake/help/latest/manual/cmake.1.html#manual:cmake(1) "cmake(1)") to configure the project and generate a native build system:
	```
	cd Step1_build
	cmake ../Step1
	```
3. Then call that build system to actually compile/link the project:
	`cmake --build .`
4. Finally, try to use the newly built `Tutorial` with these commands:
	```
	Tutorial 4294967296
	Tutorial 10
	Tutorial
	```
^1687644693345

###### [Solution](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#solution)

What are the basic steps to building a **CMake** project? #card-reverse 
1. Create the “build” folder
2. `cd` into the “build” folder
3. Run `cmake` with the argument pointing to the directory which contains the `CMakeLists.txt`
4. Finally, build the project itself by running `cmake --build .`
^1687644693352

##### [Exercise 2 - Specifying the C++ Standard](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#exercise-2-specifying-the-c-standard)

Should I start my variables in CMake with `CMAKE_`? #card 
No.
^1687644693357

Why should I *not* name my variables to start with `CMAKE_`? #card 
- CMake has some special variables that are either created behind the scenes or have meaning to CMake when set by project code.
	- Two of these special user settable variables are [`CMAKE_CXX_STANDARD`](https://cmake.org/cmake/help/latest/variable/CMAKE_CXX_STANDARD.html#variable:CMAKE_CXX_STANDARD "CMAKE_CXX_STANDARD") and [`CMAKE_CXX_STANDARD_REQUIRED`](https://cmake.org/cmake/help/latest/variable/CMAKE_CXX_STANDARD_REQUIRED.html#variable:CMAKE_CXX_STANDARD_REQUIRED "CMAKE_CXX_STANDARD_REQUIRED").
^1687644693363

###### [Goal](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#id1)

###### [Helpful Resources](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#id2)

###### [Files to Edit](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#id3)

###### [Getting Started](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#id4)

In C++, what does the function `std::stod()` stand for? #card
- In C++, `stod` stands for **string to double**. It is a function that converts a string to a double-precision floating-point number. The function is defined in the `<string>` header and takes a string as its first argument.
- It can also take an optional second argument, which is a pointer to a `size_t` object that will be set to the position of the first character in the string after the number¹.
^1687649756589

What is the `cstdlib` library in C++ and what is it used for? #card 
- The `cstdlib` library is a C++ library that provides a collection of functions for performing general-purpose operations. It is also known as the **C Standard General Utilities Library**.
- This library includes functions for dynamic memory management, random number generation, communication with the environment, integer arithmetic, searching, sorting, and converting. Some of the functions provided by this library include `abs`, `div`, `rand`, `srand`, `malloc`, `calloc`, `realloc`, `free`, `atof`, `atoi`, `atol`, `strtod`, `strtol`, and many others¹.
- **Source**: Conversation with Bing, 6/24/2023
		- (1) `<cstdlib>` (stdlib.h) - C++ Users. https://cplusplus.com/reference/cstdlib/.
		- (2) `<cstdlib>` | Microsoft Learn. https://learn.microsoft.com/en-us/cpp/standard-library/cstdlib?view=msvc-170.
		- (3) cstdlib in C++ - Explained - Incredibuild. https://www.incredibuild.com/blog/cstdlib-in-c-explained.
		- (4) cstdlib — Standard library. https://www.ibm.com/docs/en/zos/2.4.0?topic=files-cstdlib-standard-library.
^1687652971507

How do I update a `CMakeLists.txt` to require C++11? #card 
```cmake
set(CMAKE_CXX_STANDARD 11)
```
^1687653530481

How do I update `CMakeLists.txt` to specify that the value of `CXX_STANDARD` is required? #card
Ensure the following is in the file…
```cmake
set(CMAKE_CXX_STANDARD_REQUIRED True)
```
^1687653530487

What should I always remember regarding the placement of `CMAKE_CXX_STANDARD` in the `CMakeLists.txt` file? #card 
Make sure to add the [`CMAKE_CXX_STANDARD`](https://cmake.org/cmake/help/latest/variable/CMAKE_CXX_STANDARD.html#variable:CMAKE_CXX_STANDARD "CMAKE_CXX_STANDARD") declarations above the call to [`add_executable()`](https://cmake.org/cmake/help/latest/command/add_executable.html#command:add_executable "add_executable").
^1687653530493

###### [Build and Run](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#id5)

###### [Solution](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#id6)

In the `CMakeLists.txt` file, how do I set the minimum required version to 3.10?
```cmake
cmake_minimum_required(VERSION 3.10)
```

How to enable support for a specific C++ standard in CMake? #card-reverse 
Using the [`CMAKE_CXX_STANDARD`](https://cmake.org/cmake/help/latest/variable/CMAKE_CXX_STANDARD.html#variable:CMAKE_CXX_STANDARD "CMAKE_CXX_STANDARD") variable.
- For this tutorial, set the [`CMAKE_CXX_STANDARD`](https://cmake.org/cmake/help/latest/variable/CMAKE_CXX_STANDARD.html#variable:CMAKE_CXX_STANDARD "CMAKE_CXX_STANDARD") variable in the `CMakeLists.txt` file to `11` and [`CMAKE_CXX_STANDARD_REQUIRED`](https://cmake.org/cmake/help/latest/variable/CMAKE_CXX_STANDARD_REQUIRED.html#variable:CMAKE_CXX_STANDARD_REQUIRED "CMAKE_CXX_STANDARD_REQUIRED") to `True`.
^1687644693370

Where should I always place [`CMAKE_CXX_STANDARD`](https://cmake.org/cmake/help/latest/variable/CMAKE_CXX_STANDARD.html#variable:CMAKE_CXX_STANDARD "CMAKE_CXX_STANDARD") declarations? #card 
Above the call to [`add_executable()`](https://cmake.org/cmake/help/latest/command/add_executable.html#command:add_executable "add_executable").
^1687644693376

##### [Exercise 3 - Adding a Version Number and Configured Header File](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#exercise-3-adding-a-version-number-and-configured-header-file)

Is it possible to have a variable defined in your `CMakelists.txt` file also be available in your source code? #card 
Yes. One way to accomplish this is by using a configured header file.
^1687644693383

How do you make a configured header file? #card 
1. We create an input file with one or more variables to replace.
2. These variables have a special syntax which looks like `@VAR@`.
3. Then, we use the [`configure_file()`](https://cmake.org/cmake/help/latest/command/configure_file.html#command:configure_file "configure_file") command to copy the input file to a given output file and replace these variables with the current value of `VAR` in the `CMakelists.txt` file.
	- While we could edit the version directly in the source code, using this feature is preferred since it creates a single source of truth and avoids duplication.
^1687644693390

###### [Goal](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#id7)

###### [Helpful Resources](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#id8)

###### [Files to Edit](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#id9)

###### [Getting Started](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#id10)

How should we go about printing the project version number in our executable? #card 
While we could do this exclusively in the source code, using `CMakeLists.txt` lets us maintain a single source of data for the version number.
^1687654730380

How do you define the project version in CMake? #card 
- You can set the version of your project in CMake by using the `project` command and specifying the `VERSION` option. For example, to set the version of your project to `1.2.3`, you can use the following command in your top-level `CMakeLists.txt` file:
	```cmake
	project(MyProject VERSION 1.2.3)
	```
- This will set the `PROJECT_VERSION` variable to `1.2.3`, as well as other version-related variables such as `PROJECT_VERSION_MAJOR`, `PROJECT_VERSION_MINOR`, and `PROJECT_VERSION_PATCH`³.
- **Source**: Conversation with Bing, 6/24/2023
	(1) project — CMake 3.27.0-rc3 Documentation. https://cmake.org/cmake/help/latest/command/project.html.
	(2) Why is version not being set by Cmake? - Stack Overflow. https://stackoverflow.com/questions/54220503/why-is-version-not-being-set-by-cmake.
	(3) CMAKE_PROJECT_VERSION — CMake 3.27.0-rc3 Documentation. https://cmake.org/cmake/help/latest/variable/CMAKE_PROJECT_VERSION.html.
	(4) cmake_minimum_required — CMake 3.27.0-rc3 Documentation. https://cmake.org/cmake/help/latest/command/cmake_minimum_required.html.
	(5) Step 1: A Basic Starting Point — CMake 3.26.2 Documentation. https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html.
^1687654448909

From the example CMake code below, what is the `PROJECT_VERSION_MAJOR`, `PROJECT_VERSION_MINOR`, and `PROJECT_VERSION_PATCH`? #card 
```cmake
project(MyProject VERSION 1.2.3)
```
#card 
The `VERSION` option is set to `1.2.3`, which means that the major version number is `1`, the minor version number is `2`, and the patch version number is `3`. As a result, the `PROJECT_VERSION_MAJOR` variable will be set to `1`, the `PROJECT_VERSION_MINOR` variable will be set to `2`, and the `PROJECT_VERSION_PATCH` variable will be set to `3`.
^1687654448915

What does `configure_file()` do in CMake and what is its purpose? #card-reverse  
- The <span class="spoiler">`configure_file`</span> command in CMake is used to copy a file from one location to another and modify its contents during the copying process. This command is often used to generate configuration files from templates. The input file can contain variable references in the form of `@VAR@` or `${VAR}`, which will be replaced with the current value of the variable during the copying process. The input file can also contain lines of the form `#cmakedefine
^1687657392603 VAR`, which will be replaced with either `#define VAR` or `/* #undef VAR */` depending on whether the variable `VAR` is set in CMake¹².
- **Source**: Conversation with Bing, 6/24/2023
	(1) cmake Tutorial - Configure file - SO Documentation. https://sodocumentation.net/cmake/topic/8304/configure-file.
	(2) configure_file — CMake 3.27.0-rc3 Documentation. https://cmake.org/cmake/help/latest/command/configure_file.html.
	(3) file — CMake 3.27.0-rc3 Documentation. https://cmake.org/cmake/help/latest/command/file.html.
	(4) Using Dependencies Guide — CMake 3.27.0-rc3 Documentation. https://cmake.org/cmake/help/latest/guide/using-dependencies/index.html.
	(5) Cmake命令之configure_file介绍 - 简书. https://www.jianshu.com/p/2946eeec2489.
^1687657392611

How do you specify where the executable target should look for include files? #card 
- We use [`target_include_directories()`](https://cmake.org/cmake/help/latest/command/target_include_directories.html#command:target_include_directories "target_include_directories") to specify where the executable target should look for include files.
- For example…
```cmake
target_include_directories(Tutorial PUBLIC
                           "${PROJECT_BINARY_DIR}"
                           )
```
^1687657392616

In the following CMake code, what does the `PUBLIC` keyword mean? #card 
- In CMake, the `target_include_directories` function is used to specify the include directories that are needed to compile a target. The `PUBLIC` keyword is used to specify that the include directories should be used both when compiling the target itself and when compiling other targets that depend on it.
- When you use the `PUBLIC` keyword with `target_include_directories`, the specified include directories will be added to the `INCLUDE_DIRECTORIES` property of the target, as well as to the `INTERFACE_INCLUDE_DIRECTORIES` property. This means that the include directories will be used when compiling the target itself, and will also be propagated to other targets that depend on it through the `target_link_libraries` command¹².
- **Source**: Conversation with Bing, 6/24/2023
	(1) target_include_directories — CMake 3.27.0-rc3 Documentation. https://cmake.org/cmake/help/latest/command/target_include_directories.html.
	(2) CMake target_include_directories meaning of scope. https://stackoverflow.com/questions/26243169/cmake-target-include-directories-meaning-of-scope.
^1687670069533

What is the significance of the code below in the context of CMake?  Bear in mind that the code is in a file called `TutorialConfig.h`.
```
// the configured options and settings for Tutorial
// DONE 10: Define Tutorial_VERSION_MAJOR and Tutorial_VERSION_MINOR
#define Tutorial_VERSION_MAJOR @Tutorial_VERSION_MAJOR@
#define Tutorial_VERSION_MINOR @Tutorial_VERSION_MINOR@
```
#card 
- This code essentially is a placeholder to migrating the current values from our `CMakelists.txt` to a header file as defined by the CMake function `configure_file()`.
^1687670069539

In C++, what is `argv[0]`? #card 
In C++, `argv` stands for **argument vector**. It is an array of pointers to `char` that represents the command-line arguments passed to the program. The first element of `argv`, `argv[0]`, is typically the name of the program itself, and the remaining elements contain the arguments passed to the program.
^1687670069545

###### [Build and Run](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#id11)

###### [Solution](https://cmake.org/cmake/help/latest/guide/tutorial/A%20Basic%20Starting%20Point.html#id12)

#### [Step 2: Adding a Library](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20a%20Library.html)

##### [Exercise 1 - Creating a Library](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20a%20Library.html#exercise-1-creating-a-library)

How do you go about adding a library in CMake? #card-reverse 
Use the [`add_library()`](https://cmake.org/cmake/help/latest/command/add_library.html#command:add_library "add_library") command and specify which source files should make up the library.
^1687670069550

###### Goal

**Go Back and Fix**

###### Helpful Resources

###### Files to Edit

###### Getting Started

In general, should I put my `CMakelists.txt` in my `src/` directory? #card 
No. In summary, it is recommended to place the top-level `CMakeLists.txt` file in the root directory of your project and create additional `CMakeLists.txt` files in subdirectories as needed to define the build configuration for specific parts of your project.
^1687670069556

###### Build and Run


###### Solution

In a hypothetical CMake project, lets consider that we are editing a `CMakeLists.txt` file in the `MathFunctions` directory. How can I create a library target called `MathFunctions`? #card 
```cmake
add_library(MathFunctions MathFunctions.cxx mysqrt.cxx)
```
^1687670069561

When adding a library via the `add_library()` function in CMake, do you need to specify if it is PRIVATE, PUBLIC, etc. in the argument? #card 
No. Besides, that isn’t a valid argument for the function.
^1687673283842

In a hypothetical CMake project, lets consider that I was editing a `CMakeLists.txt` file outside the `src/` folder. How could I go about using a library I created called `MathFunctions` that was in the `src/` folder? #card 
Add an [`add_subdirectory()`](https://cmake.org/cmake/help/latest/command/add_subdirectory.html#command:add_subdirectory "add_subdirectory") call in the top-level `CMakeLists.txt` file so that the library will get built.
^1687670069566


What is the general process in creating a library in CMake and actually targeting/using it in my overall CMake project? #card 
1. Create a `CMakeLists.txt` in the subdirectory of the `src/` directory containing all the libraries’ relevant source files. (i.e. hxx, cxx files).
2. In this “sub” `CMakeLists.txt` file, use the `add_library()` function to create a library. For example…
	```cmake
	add_library(MathFunctions MathFunctions.cxx mysqrt.cxx)
	```
3. From the top `CMakeLists.txt` file, outside the `src/` folder, make sure to use the `add_subdirectory()` to call in the library so we have access to it. For example… 
	```cmake
	add_subdirectory(MathFunctions)
	```
4. Next, the new library target must be linked to the executable target using [`target_link_libraries()`](https://cmake.org/cmake/help/latest/command/target_link_libraries.html#command:target_link_libraries "target_link_libraries"). For example… 
	```cmake
	target_link_libraries(Tutorial PUBLIC MathFunctions)
	```
5. Finally we need to specify the library's header file location. Modify [`target_include_directories()`](https://cmake.org/cmake/help/latest/command/target_include_directories.html#command:target_include_directories "target_include_directories") to add the `MathFunctions` subdirectory as an include directory so that the `MathFunctions.h` header file can be found.
	```cmake
	target_include_directories(Tutorial PUBLIC
	                          "${PROJECT_BINARY_DIR}"
	                          "${PROJECT_SOURCE_DIR}/MathFunctions"
	                          )
	```
6. Now we can call this library from our source code. For example, in C++...
	```cpp
	#include "MathFunctions.h"
	```
^1687670069571

##### [Exercise 2 - Making Our Library Optional](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20a%20Library.html#exercise-2-making-our-library-optional)

###### Goal

Now let us add an option in the MathFunctions library to allow developers to {select either the custom square root implementation or the built in standard implementation}. While for the tutorial there really isn't any need to do so, for larger projects this is a common occurrence.
^1687670069577

In CMake, how to give users a variable which they can change when configuring their cmake build to use a different implementation? #card 
CMake can do this using the [`option()`](https://cmake.org/cmake/help/latest/command/option.html#command:option "option") command. This gives users a variable which they can change when configuring their cmake build. This setting will be stored in the cache so that the user does not need to set the value each time they run CMake on a build directory.
^1687670164355

###### Helpful

###### Files to Edit

###### Getting Started

What is the general approach/optimal solution to adding an option in a library (i.e. MathFunctions) to allow developers the flexibility to select implementations? #card 
1. First create a variable `USE_MYMATH` using the [`option()`](https://cmake.org/cmake/help/latest/command/option.html#command:option "option") command in `MathFunctions/CMakeLists.txt`. In that same file, use that option to pass a compile definition to the `MathFunctions` library.
2. Then, update `MathFunctions.cxx` to redirect compilation based on `USE_MYMATH`.
3. Lastly, prevent `mysqrt.cxx` from being compiled when `USE_MYMATH` is on by making it its own library inside of the `USE_MYMATH` block of `MathFunctions/CMakeLists.txt`.
^1687675665844

In the context of CMake, what does static mean? #card 
- In the context of CMake, the term `static` typically refers to static libraries. A static library is a collection of object files that are combined into a single file and can be linked with other object files to create an executable or another library. Static libraries are created using the `add_library` command in CMake with the `STATIC` keyword, like this:
	```cmake
	add_library(mylib STATIC mylib.cpp)
	```
- When you link an executable with a static library, the object code for the library is copied into the executable, so the executable does not need to dynamically load the library at runtime. This can make the executable more self-contained and easier to distribute, but it can also make it larger and slower to load.
- **Source**: Conversation with Bing, 6/24/2023
	(1) c++ - Compiling a static executable with CMake - Stack Overflow. https://stackoverflow.com/questions/24648357/compiling-a-static-executable-with-cmake.
	(2) Step 10: Selecting Static or Shared Libraries - CMake. https://cmake.org/cmake/help/latest/guide/tutorial/Selecting%20Static%20or%20Shared%20Libraries.html.
	(3) Building a Dual Shared and Static Library with CMake. https://alexreinking.com/blog/building-a-dual-shared-and-static-library-with-cmake.html.
	(4) CMAKE_STATIC_LINKER_FLAGS_INIT. https://cmake.org/cmake/help/latest/variable/CMAKE_STATIC_LINKER_FLAGS_INIT.html.
^1687675962797

###### Build and Run

###### Solution



#### [Step 3: Adding Usage Requirements for a Library](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Usage%20Requirements%20for%20a%20Library.html)

##### [Exercise 1 - Adding Usage Requirements for a Library](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Usage%20Requirements%20for%20a%20Library.html#exercise-1-adding-usage-requirements-for-a-library)

{[Usage requirements](https://cmake.org/cmake/help/latest/manual/cmake-buildsystem.7.html#target-usage-requirements)} of a target parameters allow for far better control over a library or executable's link and include line while also giving more control over the transitive property of targets inside CMake.
^1687673283848

What are the primary commands that leverage usage requirements? #card  
- [`target_compile_definitions()`](https://cmake.org/cmake/help/latest/command/target_compile_definitions.html#command:target_compile_definitions "target_compile_definitions")
- [`target_compile_options()`](https://cmake.org/cmake/help/latest/command/target_compile_options.html#command:target_compile_options "target_compile_options")
- [`target_include_directories()`](https://cmake.org/cmake/help/latest/command/target_include_directories.html#command:target_include_directories "target_include_directories")
- [`target_link_directories()`](https://cmake.org/cmake/help/latest/command/target_link_directories.html#command:target_link_directories "target_link_directories")
- [`target_link_options()`](https://cmake.org/cmake/help/latest/command/target_link_options.html#command:target_link_options "target_link_options")
- [`target_precompile_headers()`](https://cmake.org/cmake/help/latest/command/target_precompile_headers.html#command:target_precompile_headers "target_precompile_headers")
- [`target_sources()`](https://cmake.org/cmake/help/latest/command/target_sources.html#command:target_sources "target_sources")
^1687673283854

###### Goal

###### Helpful Materials

###### Files to Edit

###### Getting Started

How should I go about in CMake to let a library let a library define its own usage requirements so they are passed transitively to other targets as necessary. For example, `MathFunctions` will specify any needed include directories itself. Then, the consuming target `Tutorial` simply would need to link to `MathFunctions` and not worry about any additional include directories. How to go about this? #card 
1. First, add a call to [`target_include_directories()`](https://cmake.org/cmake/help/latest/command/target_include_directories.html#command:target_include_directories "target_include_directories") in `MathFunctions/CMakeLists`. Remember that [`CMAKE_CURRENT_SOURCE_DIR`](https://cmake.org/cmake/help/latest/variable/CMAKE_CURRENT_SOURCE_DIR.html#variable:CMAKE_CURRENT_SOURCE_DIR "CMAKE_CURRENT_SOURCE_DIR") is the path to the source directory currently being processed.
2. Then, update (and simplify!) the call to [`target_include_directories()`](https://cmake.org/cmake/help/latest/command/target_include_directories.html#command:target_include_directories "target_include_directories") in the top-level `CMakeLists.txt`.
^1687741829082

###### Build and Run

###### Solution

**Front**: What is the correct way to link libraries in CMake using `target_link_libraries()`? #card 
- **Back**: The `target_link_libraries()` function is used to specify which libraries an executable depends on. The format is `target_link_libraries(<target> <PRIVATE|PUBLIC|INTERFACE> <lib1> <lib2>...)`. The `<target>` is the name of the target that depends on the libraries. `<PRIVATE|PUBLIC|INTERFACE>` specifies the scope of the linking. `<lib1> <lib2>...` are the libraries that the target depends on. You should specify the library targets and not the paths to them.
- Example:
	```cmake
	target_link_libraries(Tutorial PUBLIC MathFunctions)
	```
^1687741829086

##### Exercise 2 - Setting the C++ Standard with Interface Libraries

###### Goal

###### Helpful Resources

###### Getting Started

How can we refactor our code, in the context of CMake, to use an `INTERFACE` library to specify the C++ standard? #card 
1. Start by editing the top level `CMakeLists.txt` file. Construct an `INTERFACE` library target called `tutorial_compiler_flags` and specify `cxx_std_11` as a target compiler feature.
2. Modify `CMakeLists.txt` and `MathFunctions/CMakeLists.txt` so that all targets have a [`target_link_libraries()`](https://cmake.org/cmake/help/latest/command/target_link_libraries.html#command:target_link_libraries "target_link_libraries") call to `tutorial_compiler_flags`.
^1687741829090

###### Build and Run

###### Solution

#### [Step 4: Adding Generator Expressions](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Generator%20Expressions.html)

What are [`Generator expressions`](https://cmake.org/cmake/help/latest/manual/cmake-generator-expressions.7.html#manual:cmake-generator-expressions(7) "cmake-generator-expressions(7)")? #card-reverse 
Expressions that are evaluated during build system generation to produce information specific to each build configuration.
^1687741829094

Where can generator expressions be used? #card 
- [`Generator expressions`](https://cmake.org/cmake/help/latest/manual/cmake-generator-expressions.7.html#manual:cmake-generator-expressions(7) "cmake-generator-expressions(7)") are allowed in the context of many target properties, such as [`LINK_LIBRARIES`](https://cmake.org/cmake/help/latest/prop_tgt/LINK_LIBRARIES.html#prop_tgt:LINK_LIBRARIES "LINK_LIBRARIES"), [`INCLUDE_DIRECTORIES`](https://cmake.org/cmake/help/latest/prop_tgt/INCLUDE_DIRECTORIES.html#prop_tgt:INCLUDE_DIRECTORIES "INCLUDE_DIRECTORIES"), [`COMPILE_DEFINITIONS`](https://cmake.org/cmake/help/latest/prop_tgt/COMPILE_DEFINITIONS.html#prop_tgt:COMPILE_DEFINITIONS "COMPILE_DEFINITIONS") and others. They may also be used when using commands to populate those properties, such as [`target_link_libraries()`](https://cmake.org/cmake/help/latest/command/target_link_libraries.html#command:target_link_libraries "target_link_libraries"), [`target_include_directories()`](https://cmake.org/cmake/help/latest/command/target_include_directories.html#command:target_include_directories "target_include_directories"), [`target_compile_definitions()`](https://cmake.org/cmake/help/latest/command/target_compile_definitions.html#command:target_compile_definitions "target_compile_definitions") and others.
- [`Generator expressions`](https://cmake.org/cmake/help/latest/manual/cmake-generator-expressions.7.html#manual:cmake-generator-expressions(7) "cmake-generator-expressions(7)") may be used to enable conditional linking, conditional definitions used when compiling, conditional include directories and more. The conditions may be based on the build configuration, target properties, platform information or any other queryable information.
^1687741829098

What are the different types of [`generator expressions`](https://cmake.org/cmake/help/latest/manual/cmake-generator-expressions.7.html#manual:cmake-generator-expressions(7) "cmake-generator-expressions(7)")? #card 
- Logical
- Informational
- Output
^1687741829102

In the context of CMake, what are logical expressions used for? #card 
Logical expressions are used to create conditional output. The basic expressions are the `0` and `1` expressions. A `$<0:...>` results in the empty string, and `<1:...>` results in the content of `...`. They can also be nested.
^1687741829106

##### [Exercise 1 - Adding Compiler Warning Flags with Generator expressions]

###### Goal

Name one common usage of generator expressions? #card-reverse 
Used to conditionally add compiler flags, such as those for language levels or warnings. A nice pattern is to associate this information to an `INTERFACE` target allowing this information to propagate.
^1687741829111

###### Helpful Resources

###### Files to Edit

###### Getting Started

What is the most optimal to go about adding compiler warning flags when building but not for installed versions? #card 
1. First, in the top level `CMakeLists.txt` file, we need to set the [`cmake_minimum_required()`](https://cmake.org/cmake/help/latest/command/cmake_minimum_required.html#command:cmake_minimum_required "cmake_minimum_required") to `3.15`. In this exercise we are going to use a generator expression which was introduced in CMake 3.15.
2. Next we add the desired compiler warning flags that we want for our project. As warning flags vary based on the compiler, we use the `COMPILE_LANG_AND_ID` generator expression to control which flags to apply given a language and a set of compiler ids.
^1687741829115

###### Build and Run


###### Solution


#### [Step 5: Installing and Testing](https://cmake.org/cmake/help/latest/guide/tutorial/Installing%20and%20Testing.html)

Often, it is not enough to only build an executable, it should also be {installable}.
^1687741829119

In CMake, how can you specify install rules? #card 
- With CMake, we can specify install rules using the [`install()`](https://cmake.org/cmake/help/latest/command/install.html#command:install "install") command.
- Supporting local installations for your builds in CMake is often as simple as specifying an install location and the targets and files to be installed.
^1687741829123

##### Exercise 1 - Install Rules

###### Goal

###### Helpful Materials

###### Files to Edit

###### Getting Started

What is the most optimal way of going about install a `Tutorial` executable and the `MathFunctions` library? #card 
1. First, update `MathFunctions/CMakeLists.txt` to install the `MathFunctions` and `tutorial_compiler_flags` libraries to the `lib` directory. In that same file, specify the install rules needed to install `MathFunctions.h` to the `include` directory.
2. Then, update the top level `CMakeLists.txt` to install the `Tutorial` executable to the `bin` directory. Lastly, any header files should be installed to the `include` directory. Remember that `TutorialConfig.h` is in the [`PROJECT_BINARY_DIR`](https://cmake.org/cmake/help/latest/variable/PROJECT_BINARY_DIR.html#variable:PROJECT_BINARY_DIR "PROJECT_BINARY_DIR").
^1687741829128

What should I do if I am on a Windows machine and, although the executable in my build folder is working, the executable built form the `install()` function of CMake is not working when I test it? #card 
- Make sure to use **Visual Studio** as the toolchain *and* the generator.
- For example, look below…
  ![[the-vault/assets/images/Pasted image 20230625181008.png|500]]
^1687741829132

###### Build and Run

###### Solution

##### [Exercise 2 - Testing Support](https://cmake.org/cmake/help/latest/guide/tutorial/Installing%20and%20Testing.html#exercise-2-testing-support)

Does CMake have testing support? #card 
- Yes, CTest offers a way to easily manage tests for your project. Tests can be added through the [`add_test()`](https://cmake.org/cmake/help/latest/command/add_test.html#command:add_test "add_test") command. Although it is not explicitly covered in this tutorial, there is a lot of compatibility between CTest and other testing frameworks such as [`GoogleTest`](https://cmake.org/cmake/help/latest/module/GoogleTest.html#module:GoogleTest "GoogleTest").
^1687741978333

###### Goal

###### Helpful Materials

###### Files to Edit

###### Getting Started

What is the most optimal way to go about creating unite tests for an executable in a CMake project using CTest? #card 
1. First, we need to enable testing.
2. Next, begin adding tests to our project using add_test(). We will work through adding 3 simple tests and then you can add additional testing as you see fit.
^1687742087320

###### Build and Run


###### Solution

What does the following code, in the context of CMake, do?
```cmake
add_test(NAME StandardUse COMMAND Tutorial 4)
set_tests_properties(StandardUse PROPERTIES PASS_REGULAR_EXPRESSION "4.*2")
```
#card 
- Creates a test called **StandardUse** with the command being running the application `Tutorial` with the argument `4`.
- The **PASS_REGULAR_EXPRESION** means that the output must match this regular expression for the test to pass. The process exit code is ignored. If set, the test output will be checked against the specified regular expressions and at least one of the regular expressions has to match, otherwise the test will fail.
^1687743409708

What exactly is **CTest** and what is it used for? #card 
CTest is a testing tool distributed as a part of CMake. It is used to manage and perform tests in a portable and scalable manner for software projects. Here's a more detailed overview:
1. **Test Management**: CTest allows developers to organize and manage their software tests. It can perform tests on different levels like unit tests, integration tests, and system tests. 
2. **Cross-Platform**: Like CMake, CTest is cross-platform, which means it can run on a variety of operating systems like Windows, macOS, and various distributions of Linux.
3. **Support for Different Testing Protocols**: CTest supports a range of testing protocols such as Dart, which is a client-server testing infrastructure, allowing for the upload of test results to a Dart server. It also has support for popular testing frameworks such as Google Test, Boost.Test, and PyTest.
4. **Parallel Testing**: CTest supports the execution of tests in parallel, which can significantly speed up the testing process, especially in large projects with many tests.
5. **Integration with CMake and CDash**: CTest integrates seamlessly with CMake, a popular build system. It also integrates with CDash, a web-based software testing server. CDash aggregates, analyzes and displays the results of software testing processes submitted from clients located around the world.
So, in summary, CTest is a powerful and flexible tool for managing and performing tests in software projects, with a strong emphasis on portability and scalability.
^1687743409713

#### [Step 6: Adding Support for a Testing Dashboard](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Support%20for%20a%20Testing%20Dashboard.html)

In the context of CMake, what is one cool thing we can do to add to how we do testing with CTest? #card 
Add support for a Testing Dashboard[](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Support%20for%20a%20Testing%20Dashboard.html#step-6-adding-support-for-a-testing-dashboard "Permalink to this heading") Adding support for submitting our test results to a dashboard is simple. We already defined a number of tests for our project in [Testing Support](https://cmake.org/cmake/help/latest/guide/tutorial/Installing%20and%20Testing.html#tutorial-testing-support). Now we just have to run those tests and submit them to CDash.
^1687743794725

##### [Exercise 1 - Send Results to a Testing Dashboard](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Support%20for%20a%20Testing%20Dashboard.html#exercise-1-send-results-to-a-testing-dashboard)

###### Goal

###### Helpful Resources

###### Files to Edit

###### Getting started

In the context of CMake, how should I go about displaying CTest results with CDash? #card 
- In the top-level `CMakeLists.txt` by include the [`CTest`](https://cmake.org/cmake/help/latest/module/CTest.html#module:CTest "CTest") module. This will enable testing with CTest as well as dashboard submissions to CDash, so we can safely remove the call to [`enable_testing()`](https://cmake.org/cmake/help/latest/command/enable_testing.html#command:enable_testing "enable_testing").
- We will also need to acquire a `CTestConfig.cmake` file to be placed in the top-level directory. When run, the [`ctest`](https://cmake.org/cmake/help/latest/manual/ctest.1.html#manual:ctest(1) "ctest(1)") executable will read this file to gather information about the testing dashboard. It contains:
	- The project name
	- The project "Nightly" start time
	    - The time when a 24 hour "day" starts for this project.
	- The URL of the CDash instance where the submission's generated documents will be sent
- For this tutorial, a public dashboard server is used and its corresponding `CTestConfig.cmake` file is provided for you in this step's root directory. In practice, this file would be downloaded from a project's `Settings` page on the CDash instance intended to host the test results. Once downloaded from CDash, the file should not be modified locally.
- **CTestConfig.cmake**[](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Support%20for%20a%20Testing%20Dashboard.html#ctestconfig-cmake "Permalink to this code")
	```cmake
	set(CTEST_PROJECT_NAME "CMakeTutorial")
	set(CTEST_NIGHTLY_START_TIME "00:00:00 EST")
	set(CTEST_DROP_METHOD "http")
	set(CTEST_DROP_SITE "my.cdash.org")
	set(CTEST_DROP_LOCATION "/submit.php?project=CMakeTutorial")
	set(CTEST_DROP_SITE_CDASH TRUE)
	```
- Done!
^1687743794729



###### Build and Run

###### Solution

#### [Step 7: Adding System Introspection](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20System%20Introspection.html)

##### [Exercise 1 - Assessing Dependency Availability](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20System%20Introspection.html#exercise-1-assessing-dependency-availability)

I am currently going through the CMake Official guide, and I stumbled upon this paragraph...
> Let us consider adding some code to our project that depends on features the target platform may not have. For this example, we will add some code that depends on whether or not the target platform has the log and exp functions. Of course almost every platform has these functions but for this tutorial assume that they are not common.

What does “target platform” mean in this context? #card 
- In this context, "the target platform" refers to the operating system where the software will be executed, such as Windows, macOS, Linux, and so on. When developing software, especially in C++, it's common to utilize features and libraries that may not be supported on all operating systems.
- The log (natural logarithm) and exp (exponential) functions are part of the C and C++ standard libraries, which means that they should be available on any platform that supports C or C++. However, the tutorial is using these functions as an example and asks you to imagine a scenario where they might not be universally available.
- The goal here is to illustrate how you might use CMake to handle optional features or dependencies that aren't universally available. You can use CMake to detect whether certain functions or features are available on the target platform, and then conditionally compile different parts of your code based on that.
- Let's say you have some special code that only works if the `log` and `exp` functions are available. You could write a CMake script that checks for these functions, and then only compiles that special code if it finds them. This way, you can still compile and run your program on platforms that don't have these functions - they just won't have access to the special features that depend on them.
- This is a common approach for dealing with platform-specific code in a way that's clean and easy to manage. It's especially important for open-source projects or any other software that's meant to be compiled and run on many different types of systems.
^1687843110606

###### Goal


###### Helpful Resources


###### Files to Edit


###### Getting Started


###### Build and Run


###### Solution


#### [Step 8: Adding a Custom Command and Generated File](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20a%20Custom%20Command%20and%20Generated%20File.html)

#### [Step 9: Packaging an Installer](https://cmake.org/cmake/help/latest/guide/tutorial/Packaging%20an%20Installer.html)

#### [Step 10: Selecting Static or Shared Libraries](https://cmake.org/cmake/help/latest/guide/tutorial/Selecting%20Static%20or%20Shared%20Libraries.html)

#### [Step 11: Adding Export Configuration](https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20Export%20Configuration.html)

#### [Step 12: Packaging Debug and Release](https://cmake.org/cmake/help/latest/guide/tutorial/Packaging%20Debug%20and%20Release.html)



