---
title: Misc. Notes
created: 2023-09-12 03:27
updated: 2023-11-02T12:51
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/🗒️-cmake/misc-notes
  - 🔴-academic/📚-educational-resource/source-format/miscellaneous
  - 🔴-academic/📚-educational-resource/discipline/computer-science/technology/cmake
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::🗒️ CMake::Misc. Notes
---

#  Misc. Notes

---

> [!Abstract]- 
> CMake is a cross-platform, open-source build system generator. For large scale software projects, managing the build process can be quite complex. CMake simplifies this process by automating the generation of build scripts1.

---

 > [!Info]- 
 > **Previous Note(s)**: 
 > 

---

﹇<br>
What languages does CMake support? 

#card 

Supported languages are:
- C, CXX (i.e. C++)
- CSharp (i.e. C#)
- CUDA
- OBJC (i.e. Objective-C)
- OBJCXX (i.e. Objective-C++)
- Fortran
- HIP
- ISPC
- Swift
- ASM
- ASM_NASM
- ASM_MARMASM
- ASM_MASM
- ASM-ATT

⌂
<br>﹈<br>


﹇<br>
What are some potential ['cmake clean' commands to clear up CMake output](https://stackoverflow.com/questions/9680420/looking-for-a-cmake-clean-command-to-clear-up-cmake-output)?

#card

CMake 3.X offers a 'clean' target:
```cmake
cmake --build C:/foo/build/ --target clean
```

From the CMake docs for 3.0.2:
```cmake
--clean-first  = Build target 'clean' first, then build.
                 (To clean only, use --target 'clean'.)
```

⌂
<br>﹈<br>


﹇<br>
In CMake, how can you configure the compiler flags?

#card 

In CMake, you can configure the compiler flags in several ways:

1. **Appending to CMake Variables**: You can append flags to the corresponding CMake variables. [For example, if you want to add a flag for C++ compilation, you can do so by appending it to `CMAKE_CXX_FLAGS`](https://stackoverflow.com/questions/11783932/how-do-i-add-a-linker-or-compile-flag-in-a-cmake-file)[1](https://stackoverflow.com/questions/11783932/how-do-i-add-a-linker-or-compile-flag-in-a-cmake-file). Here’s an example:
    
```cmake
SET (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${MYCOMPILE_FLAGS}")
```
    
2. **Using `add_definitions`**: This method is not clean but easy and convenient. [It works for both compiler flags, C & C++ at once](https://stackoverflow.com/questions/11783932/how-do-i-add-a-linker-or-compile-flag-in-a-cmake-file)[1](https://stackoverflow.com/questions/11783932/how-do-i-add-a-linker-or-compile-flag-in-a-cmake-file). Here’s an example:
    
```cmake
add_definitions (${MYCOMPILE_FLAGS})
```
    
3. [**Using Target Properties**: You can use target properties if you know the target name](https://stackoverflow.com/questions/11783932/how-do-i-add-a-linker-or-compile-flag-in-a-cmake-file)[1](https://stackoverflow.com/questions/11783932/how-do-i-add-a-linker-or-compile-flag-in-a-cmake-file). Here’s an example:
    
```cmake
get_target_property (TEMP ${THE_TARGET} COMPILE_FLAGS)
if (TEMP STREQUAL "TEMP-NOTFOUND")  
  SET (TEMP "") # Set to empty string
else ()  
  SET (TEMP "${TEMP} ") # A space to cleanly separate from existing content
endif ()
SET (TEMP "${TEMP}${MYCOMPILE_FLAGS}" )
set_target_properties (${THE_TARGET} PROPERTIES COMPILE_FLAGS ${TEMP})
```
    

[Please note that it’s generally recommended to use `set_compile_options`, `target_compile_options`, `add_compile_definitions`, and `target_compile_definitions` instead of manually setting `CMAKE_*_FLAGS`](https://stackoverflow.com/questions/59107988/correct-way-to-handle-compiler-flags-when-using-cmake)[2](https://stackoverflow.com/questions/59107988/correct-way-to-handle-compiler-flags-when-using-cmake).

⌂
<br>﹈<br>


---

> [!Info]- 
> **Next Note(s)**:
> - 

---


