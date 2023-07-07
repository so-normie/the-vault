---
author: 
publisher: 
published: 
tags: [computer-science/technology/neovim, educational-resource/neovim, study-note] 
cards-deck: Default::Computer Science
---

What is the command that runs a series of diagnostic tests to check the health of your **Neovim** installation? #card-reverse 
`:checkhealth`
^1683605588574

What is the command to save and then close all open tabs? #card 
`:wqa`
^1683605588578

![[🤖 ChatGPT, Bing Chat, etc. Warning]]

What does the keymap <S-Tab> mean? #card-reverse 
The keymap `<S-Tab>` stands for the Shift key combined with the Tab key. In key mapping notation, `<S-Tab>` represents pressing the Shift key (denoted by the `S` inside the angle brackets) and the Tab key simultaneously. This is a common key combination used in various applications and programming environments, including Neovim and Vim, for tasks like navigating between fields, cycling through autocompletion suggestions in reverse order, or unindenting lines of code.
^1683605588583

What is the keymap to toggle a breakpoint via **nvim-dap**? #card-reverse
`<Space>B`
^1683605588586

What does `<CR>` mean in mappings for Neovim? #card 
In Vim, `<CR>` stands for “Carriage Return” and is used to represent the `Enter` key. It is often used in Vim mappings to execute a command. [For example, `:map <F10> <Esc>:tabnew<CR>` maps the `F10` key to open a new tab](https://www.linux.com/news/vim-tips-using-vim-mappings-and-abbreviations/)
^1683605588589

**Front:** What is the Vim key to open a new line below the cursor? #card 
**Back:** In normal mode, you can use the <kbd>o</kbd> key to open a new line below the cursor and enter insert mode.
^1683605588593

**Front:** What is the Vim key to open a new line above the cursor? #card 
**Back:** In normal mode, you can use the <kbd>O</kbd> (capital O) key to open a new line above the cursor and enter insert mode.
^1683605588596

**Front:** In Vim’s normal mode, how do you move the cursor to the beginning of the current word or the previous word if the cursor is already at the beginning of a word? #card 
**Back:** In Vim’s normal mode, you can use the <kbd>b</kbd> key to move the cursor to the beginning of the current word or the previous word if the cursor is already at the beginning of a word.
^1683605588600

**Front:** In Vim’s insert mode, how do you move backward a word? #card 
**Back:** In Vim’s insert mode, you can use <kbd>Alt</kbd> + <kbd>b</kbd> to move backward a word.
^1683605588603

**Front:** In Vim’s normal mode, how do you move the cursor to the end of the current word? #card 
**Back:** In Vim’s normal mode, you can use the <kbd>e</kbd> key to move the cursor to the end of the current word.
^1683605588606


How do I find and replace everything in vim? In other words, what is the general form of the substitute command? #card 
- In Vim, you can find and replace text using the `꞉substitute` (`꞉s`) command. To run commands in Vim, you must be in normal mode, the default mode when starting the editor. To go back to normal mode from any other mode, just press the `Esc` key. The general form of the substitute command is as follows꞉ 
  ```
  ꞉[range]s/{pattern}/{string}/[flags] [count]
  ```
^1683608281394

How to search and replace across the entire file? #card
- If you want to search and replace the pattern in the entire file, use the percentage character `%` as a range. This character indicates a range from the first to the last line of the file꞉ `꞉%s/foo/bar/g`
^1683608281400

**Front:** What is the difference between the `:s` and `:g` commands in Vim? #card 
**Back:** The `:s` command is used for substitution within a line or range of lines, while the `:g` command is used for global actions on all lines that match a certain pattern.
^1686475017066


**Front:** How do you escape special characters in Vim regex? #card 
**Back:** To escape special characters in Vim regex, you need to use a backslash (`\`) before the character. For example, to match the literal characters `[` and `]`, you would use `\[` and `\]`
^1686475008179

Using vim regex, how do I delete all lines that contain the word flashcard? #card 
In Vim, you can use the `:g` command to delete all lines that contain the word “flashcard”. Here’s an example command:
```
:g/flashcard/d
```
This command will search for all lines containing the word “flashcard” and delete them. Is there anything else you’d like to know?
^1686475065800
