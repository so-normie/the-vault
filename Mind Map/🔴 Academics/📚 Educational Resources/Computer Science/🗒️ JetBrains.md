---
author: 
publisher: 
published: 
tags: [computer-science/technology/jetbrains, educational-resource/jetbrains, study-note] 
cards-deck: Default::Computer Science
---

# JetBrains

What is the shortcut to update the project? #card 
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>W</kbd>
^1683770591150

When working with **CLion**, how should I got about setting a project’s C++ standard? #card 
Edit directly the **CMakeLists.txt** file, by adding the following line of code…
`set(CMAKE_CXX_STANDARD 23)` *Note, for this example, we are setting the standard to use C++ 23
^1683770591155

When using **Rider** to create a .NET project, how should I structure my project regarding the placement of the project itself and the solution? #card 
Have the solution and project be in the same directory.
^1684960712388

What is the shortcut to create a new branch in a JetBrains IDE? #card 
<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>N</kbd>
^1684960712398

What is the shortcut to run a configuration in a JetBrains IDE? #card 
<kbd>Shift</kbd> + <kbd>F10</kbd>
^1687644099244

What is the shortcut to create new tab in the terminal window of a JetBrains IDE? #card 
<kbd>Ctrl</kbd> + <kbd>Shift</kbd>+<kbd>T</kbd>
^1687644099249

What is the shortcut to make a new branch in a JetBrains IDE? #card 
<kbd>Ctrl</kbd> + <kbd>Alt</kbd>+<kbd>N</kbd>
^1687644099252

When working in CLion, what CMake installation should I default to using? #card
Should default to using the one installed via MSYS2.
^1687648012653

When working in CLion, what generator should I use? #card 
Should default to using the **ninja** installed via MSYS2. 
^1687648012660


What is the difference between a toolchain and a generator in the context of CMake? #card 
- In the context of CMake, a **generator** is responsible for writing the input files for a native build system. For example, the `Visual Studio` generator will create `.sln` and `.vcxproj` files for building with Microsoft Visual Studio¹.
- On the other hand, a **toolchain** file is used to specify information about the compiler and utility paths when cross-compiling. It can be specified with the `-DCMAKE_TOOLCHAIN_FILE=<path>/conan_toolchain.cmake` command line option when invoking CMake⁴.
- Source: Conversation with Bing, 6/24/2023
  **(1)** [feature] cmake toolchains should be generator agnostic #7908 - GitHub. https://github.com/conan-io/conan/issues/7908.
  **(2)** CMakeToolchain — conan 1.60.1 documentation. https://docs.conan.io/1/reference/conanfile/tools/cmake/cmaketoolchain.html.
  **(3)** cmake-toolchains(7) — CMake 3.27.0-rc3 Documentation. https://cmake.org/cmake/help/latest/manual/cmake-toolchains.7.html.
  **(4)** [question] What's the difference between using generators cmake and .... https://github.com/conan-io/conan/issues/12040.
^1687648151210
