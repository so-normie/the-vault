---
title: Misc. Notes
created: 2023-08-04 01:58
updated: 2023-12-10T03:47
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/powershell/🔖/misc-notes
  - 🔴-academic/📚-educational-resource/format/website
  - 🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/powershell
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::🗒️ PowerShell::Misc. Notes
---

# Misc. Notes

---

> [!ABSTRACT]+ 
> Miscellaneous scratch notes pertaining to [PowerShell](https://github.com/PowerShell/PowerShell). [@powershellteamPowerShellPowerShellPowerShell]
> 
> These notes are primarily structured in a Q&A format, making it easy to follow and learn. Corresponding Anki flashcards are available, enabling efficient revision and reinforcement of the concepts.

---

> [!INFO]+ 
> **Previous Note(s):**
> 

---

﹇<br>
What happens when you create a symbolic link? 

#card 

You are creating a shortcut to an other file or directory.

⌂
<br>﹈<br>^1701596649953


﹇<br>
Does the symbolic link take up a lot of space in your hard drive? 

#card 

No, this is why it can save you space by allowing you to have multiple copies of the same file in different locations without actually taking up the space for each copy.

⌂
<br>﹈<br>^1701596649959


﹇<br>
How do you create  symbolic link in PowerShell? 

#card-reverse  

You can use the `New-Item` cmdlet with the `ItemType` `SymbolicLink` parameter.

⌂
<br>﹈<br>^1701596649963


﹇<br>
What does the following code do? `New-Item -ItemType SymbolicLink -Path "Link" -Target "Target"` 

#card 

Creates a symbolic link called "Link" that points to the *file* "Target".

⌂
<br>﹈<br>^1701596649968


﹇<br>
Can you create symbolic links to *directories* with PowerShell on Windows? 

#card 

Yes. For example, to create a symbolic link called "Link" that points to the *directory* "Target", you can use the following command: `New-Item -ItemType Junction -Path "Link" -Target "Target"`

⌂
<br>﹈<br>^1701596649973


﹇<br>
What are some of the upsides of symbolic links in PowerShell? 

#card-reverse  

If you have multiple copies of the same file in different locations, you can use <span class="spoiler">symbolic links</span> to create shortcuts to the file instead of actually copying the file to each location. This can save you a lot of space, especially if the file is large.

If you have a lot of files in different locations, you can use <span class="spoiler">symbolic links</span> to create a central location for all of your files. This can make it easier to find the files you need and to keep track of what files you have.

⌂
<br>﹈<br>^1701596649977


﹇<br>
What are some of the downsides of symbolic links in PowerShell? 

#card-reverse  

If you create a <span class="spoiler">symbolic link</span> and it does not work, it can be difficult to figure out why.

When you access a <span class="spoiler">symbolic links</span>, the operating system has to first find the original file before it can access the file you are trying to access. This can add a few milliseconds to the time it takes to access a file.

⌂
<br>﹈<br>^1701596649981


﹇<br>
What is a cmdlet in PowerShell? 

#card-reverse  

A cmdlet is a lightweight command that is used in the PowerShell environment.

The PowerShell runtime invokes these cmdlets within the context of automation scripts that are provided at the command line.

The PowerShell runtime also invokes them programmatically through PowerShell APIs.

Cmdlets perform an action and typically return a Microsoft .NET object to the next command in the pipeline.

A cmdlet is a single command that participates in the pipeline semantics of PowerShell.

This includes binary (C#) cmdlets, advanced script functions, CDXML, and Workflows.

⌂
<br>﹈<br>^1701596873830


A {1:cmdlet} is a lightweight command that is used in the PowerShell environment. 
^1701596649991
 

The {1:PowerShell runtime} invokes these cmdlets within the context of automation scripts that are provided at the command line. 
^1701596649996
 

﹇<br>
What do cmdlets typically return? 

#card 

A Microsoft .NET object to the next pipeline.

⌂
<br>﹈<br>^1701596650000


﹇<br>
In PowerShell, what are [cmdlets](https://learn.microsoft.com/en-us/powershell/scripting/developer/cmdlet/cmdlet-overview?view=powershell-7.3#cmdlets)? 

#card-reverse 

<span class="spoiler">Cmdlets</span> perform an action and typically return a Microsoft .NET object to the next command in the pipeline.

A <span class="spoiler">cmdlet</span> is a single command that participates in the pipeline semantics of PowerShell. This includes…
- <span class="spoiler">binary (C#)</span>
- <span class="spoiler">cmdlets</span>
- <span class="spoiler">advanced script functions</span>
- <span class="spoiler">CDXML</span>
- <span class="spoiler">Workflows</span>

⌂
<br>﹈<br>^1701596650005


﹇<br>
What does `$PWD` mean in PowerShell? 

#card-reverse 

<span class="spoiler">`$PWD`</span> is an automatic variable in PowerShell that contains the full path of the current directory.

It is a shortcut for <span class="spoiler">`Get-Location`</span>. To get the current directory, you can use either <span class="spoiler">`$PWD`</span> or <span class="spoiler">`Get-Location`</span>.

⌂
<br>﹈<br>^1701596650008


﹇<br>
How do I open the current directory in File Explorer? 

#card-reverse  

```powershell
explorer.exe .
```

⌂
<br>﹈<br>^1701596650012


﹇<br>
How to test if a file or path exists in PowerShell? 

#card-reverse 

Use the cmdlet `Test-Path`.

<u>Example</u>:

```powershell
Test-Path -Path "C:\Documents and Settings\DavidC"
True
```

This command checks whether all elements in the path exist, that is, the `C:` directory, the `Documents and Settings` directory, and the `DavidC` directory. If any are missing, the cmdlet returns `$False`. Otherwise, it returns `$True`.

⌂
<br>﹈<br>^1701596650016

﹇<br>
How can you enforce the type of a variable in PowerShell? 

#card 

In PowerShell, you can enforce the type of a variable by using type accelerators or by casting the value to the desired type when you assign it to the variable. 

For example: 

```cpp
[int] $myInt = 10
```

or

```cpp
$myInt = [int] 10
```

⌂
<br>﹈<br>^1701596650019

﹇<br>
What are type accelerators in PowerShell? 

#card-reverse  

<span class="spoiler">Type accelerators</span> are aliases for .NET framework classes. They allow you to access specific .NET framework classes without having to explicitly type the entire class name.
- For example, you can shorten the **AliasAttribute** class from `[System.Management.Automation.AliasAttribute]` to `[Alias]`.

⌂
<br>﹈<br>^1701596650023

﹇<br>
What are some common types in PowerShell? 

#card 

Some common types in PowerShell include `System.String`, `System.Int32`, `System.Boolean`, `System.DateTime`, `System.Array`, `System.Collections.ArrayList`, and `System.Collections.Hashtable`. PowerShell also has its own set of types that are specific to the language, such as `PSCustomObject`, `PSObject`, and `SwitchParameter`.

⌂
<br>﹈<br>^1701596650027

﹇<br>
 What is the definition of a symbolic link? 

#card 

A <span class="spoiler">symbolic link</span>, also known as a symlink or soft link, is a special type of file that points to another file or directory.

<span class="spoiler">Symbolic links</span> are a useful tool for managing your files. However, it is important to be aware of the downsides before you start using them.

⌂
<br>﹈<br>^1701596650030

﹇<br>
What is the basic syntax of a PowerShell cmdlet? 

#card-reverse  

The <span class="spoiler">basic syntax</span> of a PowerShell <span class="spoiler">cmdlet</span> is "Verb-Noun", where "Verb" represents the action and "Noun" represents the target object.

⌂
<br>﹈<br>^1701596650035

﹇<br>
How do you get help for a specific cmdlet in PowerShell? 

#card 

Use the <span class="spoiler">`Get-Help`</span> cmdlet followed by the cmdlet name, e.g., `Get-Help Get-Process`.

⌂
<br>﹈<br>^1701596650038

﹇<br>
What is the purpose of the `Get-ChildItem` cmdlet? 

#card-reverse  

 The <span class="spoiler">`Get-ChildItem`</span> cmdlet is used to retrieve a list of child items, such as files and folders, in a specified location.

⌂
<br>﹈<br>^1701596650041

﹇<br>
How do you create a new folder using a cmdlet in PowerShell? 

#card-reverse  

Use the <span class="spoiler">`New-Item`</span> cmdlet followed by the `-ItemType` and `-Path` parameters, e.g., `New-Item -ItemType Directory -Path "C:\NewFolder"`.

⌂
<br>﹈<br>^1701596650044

﹇<br>
How do you delete a file using a cmdlet in PowerShell? 

#card-reverse  

Use the <span class="spoiler">`Remove-Item`</span> cmdlet followed by the `-Path` or `-LiteralPath` parameter, e.g., `Remove-Item -Path "C:\File.txt"`.

⌂
<br>﹈<br>^1701596650047

﹇<br>
What is the purpose of the `Get-Process` cmdlet? 

#card-reverse  

The <span class="spoiler">`Get-Process`</span> cmdlet retrieves a list of currently running processes on the local or remote computer.

⌂
<br>﹈<br>^1701596650050

﹇<br>
How do you stop a specific process using a cmdlet in PowerShell? 

#card-reverse  

Use the <span class="spoiler">`Stop-Process`</span> cmdlet followed by the `-Name` or `-Id` parameter, e.g., `Stop-Process -Name "ProcessName"`.

⌂
<br>﹈<br>^1701596650053

﹇<br>
How do you execute a PowerShell script using a cmdlet? 

#card-reverse  

Use the <span class="spoiler">`Invoke-Expression`</span> cmdlet or the “&” operator followed by the script path, e.g., `Invoke-Expression "C:\Script.ps1"` or `& "C:\Script.ps1"`.

⌂
<br>﹈<br>^1701596650056

﹇<br>
How do you export a list of running processes to a CSV file using cmdlets in PowerShell? 

#card-reverse  

Use the <span class="spoiler">Get-Process</span> cmdlet and pipe the output to the <span class="spoiler">Export-Csv</span> cmdlet, e.g., G`et-Process | Export-Csv -Path "C:\Processes.csv" -NoTypeInformation`.

⌂
<br>﹈<br>^1701596650064

﹇<br>
How to view the full history of commands across all shells and sessions? 

#card-reverse  

Use the <span class="spoiler">`Get-PSReadlineOption`</span> cmdlet.
- This cmdlet has a <span class="spoiler">`HistorySavePath`</span> property that gives you the path where all of the history is saved.
- [You can then open this path in a text editor or use the `cat` command to list the history in PowerShell](https://stackoverflow.com/questions/44104043/how-can-i-see-the-command-history-across-all-powershell-sessions-in-windows-serv)

<u>Example</u>:

<span class="spoiler">
```
cat (Get-PSReadlineOption).HistorySavePath
```
</span>

⌂
<br>﹈<br>^1701596650067

﹇<br>
How to print only the last 100 lines of the output of a command in PowerShell? 

#card-reverse  

Use the <span class="spoiler">`Select-Object`</span> cmdlet with the <span class="spoiler">`-Last`</span> parameter.

For example, to print only the last 100 lines of your command history, you can use the following command:

<span class="spoiler">
```
cat (Get-PSReadlineOption).HistorySavePath | Select-Object -Last 100
```
</span>

⌂
<br>﹈<br>^1701596650071

﹇<br>
How do I open PowerShell with administrative privileges in Windows? 

#card 

Press the <kbd>Windows</kbd> key, type "PowerShell," right-click on "Windows PowerShell" and select "Run as administrator."

⌂
<br>﹈<br>^1701596650074

﹇<br>
In PowerShell, how do I list all installed Linux distributions with their WSL versions? 

#card 

Run the command: `wsl --list --verbose`

⌂
<br>﹈<br>^1701596650077

﹇<br>
How do I remove a specific Ubuntu distribution from WSL in PowerShell?

#card 

Use the command: `wsl --unregister <DistroName>`, replacing `<DistroName>` with the exact name of the Ubuntu distribution you want to remove.

⌂
<br>﹈<br>^1701596650080

﹇<br>
How do I uninstall WSL and remove all installed Linux distributions in PowerShell?

#card 

Run the command: `wsl --uninstall`

⌂
<br>﹈<br>^1701596650083

﹇<br>
How do I remove the Windows Subsystem for Linux feature entirely from my Windows system using PowerShell? 

#card 

Run the following commands in PowerShell (as an administrator):
1. `wsl --uninstall`
2. `dism.exe /online /disable-feature /featurename:Microsoft-Windows-Subsystem-Linux`

⌂
<br>﹈<br>^1701596650087

﹇<br>
Can you create an alias for a `cmdlet` or other command in Powershell? 

#card 

Yes, you can create an alias for a cmdlet or other command in PowerShell using the `Set-Alias` cmdlet.
	- The `Name` parameter specifies the alias’s name and the `Value` parameter specifies the cmdlet that the alias runs.

For example, to create an alias named `list` for the `Get-ChildItem` cmdlet, you would enter `Set-Alias -Name list -Value Get-ChildItem`<sup>[[1](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/set-alias?view=powershell-7.3)]</sup>.

⌂
<br>﹈<br>^1701596650091

﹇<br>
Can you assign an alias to a command with parameters in PowerShell? 

#card 

You **cannot** assign an alias to a command with parameters using `Set-Alias` or `New-Alias`.

Instead, you can create a function that contains the command with parameters and then assign an alias to that function.

For example, if you wanted to create an alias named `list` for the `Get-ChildItem` cmdlet with the `-Force` parameter, you could create a function like this:
```PowerShell
function Get-ChildItem-Force { Get-ChildItem -Force }
```
Then, you could create an alias for the function using `Set-Alias` or `New-Alias`:
```PowerShell
Set-Alias -Name list -Value Get-ChildItem-Force
```

⌂
<br>﹈<br>^1701596650094

﹇<br>
How to move multiple files, for instance a file named `A.txt` and `B.txt` in one command? 

#card 

```powershell
Get-Item -Path .\A.txt, .\B.txt | Move-Item -Destination .\neovim-configurations\ -Force
```

⌂
<br>﹈<br>^1701596650097

﹇<br>
How do you pass arguments to a PowerShell script? 

#card 

You can pass arguments to a PowerShell script by defining them using the `param` statement at the beginning of your script.

⌂
<br>﹈<br>^1701596650100

﹇<br>
How do you define arguments in a PowerShell script? 

#card 

You can define arguments in a PowerShell script using the `param` statement. For example: `param(＄name, ＄address = "USA", ＄age)`.

⌂
<br>﹈<br>^1701596650103

﹇<br>
How do you call a PowerShell script with arguments?

#card 

You can call a PowerShell script with arguments like this: `powershell.exe -file myscript.ps1 -name "John" -address "Canada" -age 25`.
⌂
<br>﹈<br>^1701596650107

﹇<br>
How do you define a default value for a parameter in PowerShell?

#card 

You can define a script `myscript.ps1` that takes in arguments for `name`, `address`, and `age` like this:

```PowerShell
param($name, $address = "USA", $age)
Write-Host "Name: $name"
Write-Host "Address: $address"
Write-Host "Age: $age"
```

Here, the variable `$address` has a default value of `"USA"`. You can then call this script with arguments like this:

```PowerShell
powershell.exe -file myscript.ps1 -name "John" -address "Canada" -age 25
```

[This will pass the values `"John"`, `"Canada"`, and `25` to the `$name`, `$address`, and `$age` variables respectively](https://www.delftstack.com/howto/powershell/pass-an-argument-to-a-powershell-script/)

⌂
<br>﹈<br>^1701596650111

﹇<br>
How can you combine a path and child-path? 

#card 

`Join-Path` is a cmdlet in PowerShell that combines a path and child-path into a single path. The provider supplies the path delimiters[1](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/join-path?view=powershell-7.3). 

For example, if you want to combine a path with a child path, you can use `Join-Path -Path "path" -ChildPath "childpath"` which will return `path\childpath`[1](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/join-path?view=powershell-7.3)

⌂
<br>﹈<br>^1701596650114

﹇<br>
What is the target of a symbolic link? 

#card 

A symbolic link is a file whose purpose is to point to another file or directory (called the “target”) by specifying a path thereto. The object being pointed to is called the target.

⌂
<br>﹈<br>^1701596650118

SSH stands for {2:<b>S</b>ecure <b>S</b><b>h</b>ell}. 
^1701596650121

﹇<br>
What is SSH? 

#card 

A network protocol that provides a secure way to access a remote computer.

SSH encrypts all traffic between the client and the server, which protects the user's data from being intercepted.

⌂
<br>﹈<br>^1701596650125

﹇<br>
Lets say I am supposed to `ssh` into the account `lleibert@hills.ccsf.edu`. 

What would be my host? 

#card 

Your host would be `hills.ccsf.edu`.

⌂
<br>﹈<br>^1701596650128

In PowerShell, to print the current host you can use the cmdlet {1:`Get-Host`}.
^1701596650132

﹇<br>
What is the command to install all font type extension in Windows? 

#card 

Trick question!
Currently, there is <b>not</b> a singular cmdlet in PowerShell to install fonts. In order to install fonts in PowerShell, you need to move all the appropriate files to the  `C:\Windows\fonts\` folder.

⌂
<br>﹈<br>^1701596650135

The alias for the {1:`Get-Location`} cmdlet is {2:`pwd`}.
^1701596650139

﹇<br>
What is wrong with following PowerShell command?

```powershell
Get-Command node | $_.Source
```

#card 

The problem with the command is the use of… 

```powershell
$_
``` 

…outside of a script block… 

```powershell
{}
```

The `$_` variable represents the current object in the pipeline, but it's only accessible within a script block.

Here's the corrected command:

```powershell
Get-Command node | ForEach-Object { $_.Source }
```

⌂
<br>﹈<br>^1701596799697

﹇<br>
How do you find a process with task id `4200` via PowerShell? 

#card-reverse 

```powershell
netstat -ano | findstr :4200
```

⌂
<br>﹈<br>^1701596650145

﹇<br>
How does one kill a process with task id `4200` via PowerShell ?

#card-reverse  

```powershell
taskkill /PID 15940 /F
```

⌂
<br>﹈<br>^1701596650148

﹇<br>
What is the difference between `Get-ChildItem` and `Get-Item` in PowerShell? 

#card 

`Get-Item` gets the item at the specified location, while `Get-ChildItem` gets the items and child items in one or more specified locations. In other words, `Get-Item` returns information about the targeted item itself, whereas `Get-ChildItem` returns information about the targeted item's children, if the given item happens to be a container ¹.

Source: Conversation with Bing, 6/14/2023

  (1) Powershell: Get-Item vs Get-ChildItem - Stack Overflow. https://stackoverflow.com/questions/38663391/powershell-get-item-vs-get-childitem.
  
  (2) Get-ChildItem (Microsoft.PowerShell.Management) - PowerShell. https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-childitem?view=powershell-7.3.
  
  (3) PowerShell Get-Item - Computer Performance. https://www.computerperformance.co.uk/powershell/get-item/.
  
  (4) powershell - Is there a difference between Get-Item ending with a .... https://stackoverflow.com/questions/70390400/is-there-a-difference-between-get-item-ending-with-a-trailing-wildcard-and-get-c.

⌂
<br>﹈<br>^1701596650151

﹇<br>
What is wrong with the following PowerShell scripting code?

```powershell
$currentDirectory = $Get-Location
```

#card 

When using the `Get-Location` cmdlet in PowerShell, it does *not* require the `$` symbol.

⌂
<br>﹈<br>^1701596799701

﹇<br>
What is the problem with the following code? 

```powershell
Write-Host $currentDirectory > tmp.txt
```

#card 

`Write-Host` sends information directly to the console, <i>not</i> to a file. If you want to write the value of `$currentDirectory` to a file, you should use either `Out-File` or `Set-Content`. For example…
- `$currentDirectory | Out-File "tmp.txt"`
- `Set-Content -Path "tmp.txt" -Value $currentDirectory`

⌂
<br>﹈<br>^1701596650158

﹇<br>
How can I use `Set-Content` to write the value of `$currentDirectory` to the file `tmp.txt`? 

#card-reverse  

```powershell
Set-Content -Path "tmp.txt" -Value $currentDirectory
```

⌂
<br>﹈<br>^1701596650161

﹇<br>
How can I use `Out-File` to write the value of `$currentDirectory` to the file `tmp.txt` 

#card-reverse  

```powershell
$currentDirectory | Out-File "tmp.txt"
```

⌂
<br>﹈<br>^1701596650164

If you want to append new content to a file, you can use {`Out-File`}. If you want to replace the existing content with new content, you can use {`Set-Content`}. [You should also consider the encoding of the data when choosing which cmdlet to use](https://stackoverflow.com/questions/10655788/powershell-set-content-and-out-file-what-is-the-difference). 
^1701596650168

﹇<br>
By default, `Out-File` saves data to a file in what encoding? 

#card 

Unicode (UTF-16LE) *This can be specified

⌂
<br>﹈<br>^1701596650171

﹇<br>
By default, `Set-Content` defaults to what encoding? 

#card 

ASCII (US-ASCII)

⌂
<br>﹈<br>^1701596650174

﹇<br>
What is a major difference between `Set-Content` and `Out-File`? 

#card 

`Out-File` allows you append new content to a file using the `-Append` parameter

`Set-Content` will replace existing content with new content

⌂
<br>﹈<br>^1701596650178

﹇<br>
What is the difference between `Write-Host` and `Write-Information`? 

#card 

`Write-Host` sends information directly to the console. As such, you can *not* pipe/transfer the output of Write-Host
The output of `Write-Information` can be redirected using either the `>` redirection operator or using cmdlets such as `Out-File`

⌂
<br>﹈<br>^1701596650180

﹇<br>
Can you use `Out-File` or `>` to redirect the output of `Write-Host`? 

#card 

No!

⌂
<br>﹈<br>^1701596650184

﹇<br>
Can you use `Out-File` or `>` to redirect the output of `Write-Information`? 

#card 

Yes!

⌂
<br>﹈<br>^1701596650187

﹇<br>
Starting in PowerShell 5.0, is `Write-Host` a wrapper for `Write-Information`? 

#card 

Yes, although only explicitly calling the cmdlet `Write-Information` can you the output be redirected or reused.

⌂
<br>﹈<br>^1701596650190

﹇<br>
What command should I run if I want to get a list of all files in the current folder that contain the word “quartz” in their name?

#card 

```powershell
Get-ChildItem -Filter "*quartz*" -Name
```

⌂
<br>﹈<br>^1701596650193

﹇<br>
What command should I run if I want to get a list of all files in the current folder, and all subsequent subfolders, that contain the word “quartz” in their name? 

#card 

```powershell
Get-ChildItem -Filter "*quartz*" -Recurse -Name
```

⌂
<br>﹈<br>^1701596650196

﹇<br>
What does the following PowerShell command do?

```powershell
$Env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
```

#card 

[This command retrieves the `Path` environment variable for both the `Machine` and `User` scopes, concatenates them with a semicolon separator, and assigns the result to the `$Env:Path` variable in the current PowerShell session](https://shellgeek.com/powershell-refresh-environment-variables/)[1](https://shellgeek.com/powershell-refresh-environment-variables/). 

This will update the `Path` environment variable in the current session without needing to restart PowerShell.

⌂
<br>﹈<br>^1701596650200

﹇<br>
Without closing a shell session, how can I make a new one/do a hard “refresh” so that it reloads all environment variables?

#card 

You can’t, at least easily.

If you need to refresh environment variables, you may need to restart the PowerShell session (easiest way to have your new environment variables is to simply create a new session).

⌂
<br>﹈<br>^1702208877706


---

## :EiZoteroItem: Bibliography

\[1\]
“PowerShell/PowerShell: PowerShell for every system!,” _GitHub_. Available: [https://github.com/PowerShell/PowerShell](https://github.com/PowerShell/PowerShell). [Accessed: Dec. 10, 2023]

---

> [!INFO]+
> **Next Note(s):**

---
