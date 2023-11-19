---
tags:
  - 🔴-academic/📚-educational-resource/name/msys2-documentation
  - study-note
cards-deck: Default::Computer Science
created: 2023-09-03 08:46
updated: 2023-11-18T02:44
---

# MSYS2 Documentation

## [What is MSYS2?](https://www.msys2.org/docs/what-is-msys2/)

## [Who Is Using MSYS2?](https://www.msys2.org/docs/who-is-using-msys2/)

## [Environments](https://www.msys2.org/docs/environments/)

## [Updating MSYS2](https://www.msys2.org/docs/updating/)

What is the command to run to update all packages? #card
```bash session
$ pacman -Suy
:: Synchronizing package databases...
 mingw32 is up to date
 mingw64 is up to date
 ucrt64 is up to date
 clang32 is up to date
 clang64 is up to date
 msys is up to date
:: Starting core system upgrade...
 there is nothing to do
:: Starting full system upgrade...
 there is nothing to do
```
^1684769537658


How do you list all installed packages? #card-reverse  
```bash session
pacman -Qqe
```
^1684769537665

How do you list all explicitly installed packages? #card 
```bash session
pacman -Q
```
^1684769537669

What is the difference between explicitly installed and just installed packages? #card 
Explicitly installed packages are those that you manually enter; while just installed packages are all the packages installed (i.e., including dependencies).
^1684769537673

How to search for already installed packages? #card-reverse  
```bash session
pacman -Qs string1
```
^1684769537677

How to search for packages in the database? #card-reverse 
```bash session
pacman -Ss string1
```
^1684769537681

Can you install `make` in MSYS2? #card 
Yes. However, the executable is called `/ucrt64/bin/mingw32-make.exe`.
^1684769537685

How do I install a package in MSYS2? #card
`pacman -S <name-of-package>`
^1684769537688

**Q:** How do you export a list of installed packages in MSYS2? #card 
**A:** You can run your existing MSYS2 installation via `msys2_shell.cmd` and then make a list of installed packages by running the command `pacman -Qqe | xargs echo > /c/packages.txt ; exit`. This will create a text file named `packages.txt` containing the list of installed packages.
^1684769561111

**Q:** How do you install packages using MSYS2? #card 
**A:** To install packages using MSYS2, you can use the `pacman` package manager. First, open the MSYS2 terminal by running `msys2_shell.cmd`. Then, update the package database and synchronize it with the remote repository by running the command `pacman -Syu`. After that, you can install packages by running the command `pacman -S package_name`, replacing `package_name` with the name of the package you want to install.
^1684769561115

**Q:** How do you update packages and synchronize it with the remote repositories? #card 
**A:** `pacman -Syu`
^1688994744883

**Q:** How do you install all the packages listed in a file using MSYS2? #card 
**A:** To install all the packages listed in a file using MSYS2, you can use the `pacman` package manager. First, open the MSYS2 terminal by running `msys2_shell.cmd`. Then, update the package database and synchronize it with the remote repository by running the command `pacman -Syu`. After that, you can install all the packages listed in the file by running the command `pacman -S --needed $(< /path/to/file)`, replacing `/path/to/file` with the path to the file containing the list of packages.
^1684769561118

**Q:** What does `/c/` refer to in MSYS2? #card 
**A:** In MSYS2, `/c/` refers to the `C:\` drive on your Windows machine.
^1684769561122

## [Using MSYS2 in CI](https://www.msys2.org/docs/ci/)

## [Terminals](https://www.msys2.org/docs/terminals/)

## [IDEs and Text Editors](https://www.msys2.org/docs/ides-editors/)

## Package Management

## [Filesystem Paths](https://www.msys2.org/docs/filesystem-paths/)

## Languages & Tools

## [Supported Windows Versions and Hardware](https://www.msys2.org/docs/windows_support/)



