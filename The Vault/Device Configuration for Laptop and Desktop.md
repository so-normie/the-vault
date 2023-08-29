# New
- [ ] **(1.)** Install in Windows, and in Ubuntu on WSL, the latest version of CMake.
	- To do so, in Windows, run the following command in PowerShell: `winget install -e --id "Kitware.CMake"` 
- [ ] **(2.)** Install in Windows via MSYS2, the package [mingw-w64-ucrt-x86_64-ninja](https://packages.msys2.org/package/mingw-w64-ucrt-x86_64-ninja?repo=ucrt64).
	- To do so, in Windows, run the command `pacman -Sy mingw-w64-ucrt-x86_64-ninja` in MSYS2’s UCRT64.
- [ ] **(3.)** Install in Windows via MSYS2, the packages…
	- [mingw-w64-ucrt-x86_64-clang](https://packages.msys2.org/package/mingw-w64-ucrt-x86_64-clang?repo=ucrt64)
	- [mingw-w64-ucrt-x86_64-clang-analyzer](https://packages.msys2.org/package/mingw-w64-ucrt-x86_64-clang-analyzer?repo=ucrt64)
	- [mingw-w64-ucrt-x86_64-clang-tools-extra](https://packages.msys2.org/package/mingw-w64-ucrt-x86_64-clang-tools-extra?repo=ucrt64)
	- [mingw-w64-ucrt-x86_64-compiler-rt](https://packages.msys2.org/package/mingw-w64-ucrt-x86_64-compiler-rt?repo=ucrt64)
	- [mingw-w64-ucrt-x86_64-lld](https://packages.msys2.org/package/mingw-w64-ucrt-x86_64-lld?repo=ucrt64)
	- [mingw-w64-ucrt-x86_64-llvm](https://packages.msys2.org/package/mingw-w64-ucrt-x86_64-llvm?repo=ucrt64) 

- [ ] **(4.)** Install [Clang-Format - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=xaver.clang-format) in Visual Studio Code
- [ ] **(5.)** Install the latest version of [CPython](https://www.python.org/) (the original implementation of the Python programming language) in Windows via the [Windows Package Manager Client](https://github.com/microsoft/winget-cli).
	- To do so, run the following command in PowerShell… 
	  ```bash session
	  winget install --e --id "Python.Python.X.XX" # Replace X.XX with version number
	  ```
	- [ ] Ensure that the author of the package is the **Python Software Foundation**.
	- [ ] Ensure that the Python executables are added to both the <mark style="background: red;">System and User Path</mark> environment variables. To do so, add the following paths to each…
		- `C:\Users\edmun\AppData\Local\Programs\Python\Python311\Scripts\`
		- `C:\Users\edmun\AppData\Local\Programs\Python\Python311\`
- [ ] **(6.)** Install the latest version of [wheel](https://pypi.org/project/wheel/) globally in Python on Windows via pip.
	- [ ] To do so, run the following command in PowerShell… `python3 -m pip install wheel`
- [ ] **(7.)** Install the latest version of [Poetry - Python dependency management and packaging made easy (python-poetry.org)](https://python-poetry.org/) globally in Python on Windows via pip.
	- [ ] To do so, run the following command in PowerShell… `python3 -m pip install poetry`
- [ ] **(8.)** Install the latest version of [gsudo - a sudo for Windows](https://github.com/gerardog/gsudo))
	- [ ] To do so, run the following command in PowerShell… `winget install -e --id "gerardog.gsudo"`
- [ ] **(10.)** Install [Bob](https://github.com/MordechaiHadad/bob), a cross-platform and easy-to-use Neovim version manager, via cargo.io.
	- [ ] To do so, run `cargo install bob-nvim`
- [ ] Install the nightly version of [Neovim](https://github.com/neovim/neovim) via [Bob](https://github.com/MordechaiHadad/bob), a cross-platform and easy-to-use Neovim version manager.
	- [ ] To do so, run `bob use nightly`
- [ ] **(11.)** Install Rust MSVC via winget and install Rust Toolchain
- [ ] **(12.)** Install Perl .exe via ActiveState
- [ ] **(13.)** Install Ruby via the Windows installer


! Download and install globally Python files
! Download and install globally MSYS2 packages



