---
title: Misc. Notes
created: 2023-10-31T16:39
updated: 2023-12-03T15:31
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/🗒️-bazel/🔖/misc-notes
  - 🔴-academic/📚-educational-resource/format/website
  - 🔴-academic/📚-educational-resource/discipline/computer-science/technology/bazel
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::🗒️ Bazel::Misc. Notes
---

# Misc. Notes

---

> [!ABSTRACT]+ 
> Scratch notes pertaining to [Bazel](https://bazel.build/). [@Bazel]
> 
> These notes are primarily structured in a Q&A format, making it easy to follow and learn. Corresponding Anki flashcards are available, enabling efficient revision and reinforcement of the concepts.

---

> [!INFO]+ 
> **Previous Note(s):**
> 

---

﹇<br>
Take a look at the following code of my `.bazelrc` file...

```text
build --copt="/std:c++latest" # Enables the latest C++ standard
build --copt="/MD" # Use the multi-threaded, static version of the run-time library
build --action_env=BAZEL_VC="C:\Program Files\Microsoft Visual Studio\2022\Preview\VC\Tools\MSVC\14.39.33218" # Set path to VC Tools

build --copt="/W4"  # Enable level 4 warnings
build --copt="/WX"  # Treat warnings as errors
```

In the `.bazelrc` file, is each `--copt` line appended to the list of `copt`s or are they overwritten during the build?

#card 

In the `.bazelrc` file, each `--copt` line is appended to the list of copts that are applied during the build. They are not overwritten.
So, in your case, the build command will be something akin to:

```console
cl /std:c++latest /MD /W4 /WX file.cpp
```

The arguments for the compiler are cumulative and all `--copt` flags from the `.bazelrc` file are passed to the actual compiler (`cl` in case of MSVC).

So you're specifying the options `/std:c++latest`, `/MD`, `/W4`, and `/WX` for the MSVC C++ compiler.

It means you're:
- using the latest available C++ standard (`/std:c++latest`),
- dynamically linking to the multithreaded version of the runtime library (`/MD`),
- enabling all level 4 warnings (`/W4`),
- treating all compiler warnings as errors (`/WX`).

It's a good practice to review and clean up your `.bazelrc` file regularly to ensure it contains only the desired flags.

⌂
<br>﹈<br>^1701646299237


---

## :EiZoteroItem: Bibliography

---

> [!INFO]+
> **Next Note(s):**

---
