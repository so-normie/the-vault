---
tags: [🔴-academics/📚-educational-resources/name/cmake, 🔴-academics/📚-educational-resources/discipline/computer-science/technology/cmake, study-note] 
cards-deck: Default::Computer Science
---

# CMake

What languages does CMake support? #card 
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

What are some potential ['cmake clean' commands to clear up CMake output](https://stackoverflow.com/questions/9680420/looking-for-a-cmake-clean-command-to-clear-up-cmake-output)?
For CMake 3.X
- CMake 3.X offers a 'clean' target:
```cmake
cmake --build C:/foo/build/ --target clean
```
- From the CMake docs for 3.0.2:
```cmake
--clean-first  = Build target 'clean' first, then build.
                 (To clean only, use --target 'clean'.)
```
