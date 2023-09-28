---
tags:
  - 🔴-academics/📚-educational-resources/name/typst-documentation
  - 🔴-academics/📚-educational-resources/discipline/computer-science/technology/typst
  - study-note
cards-deck: Default::Computer Science
created: 2023-09-03 08:46
updated: 2023-09-28 14:16
---

# Typst Documentation

## Overview

What is Typst? #card-reverse  
Typst is a markup-based typesetting system for the sciences.


What is Typst designed to be? #card-reverse 
An alternative to both advanced tools like LaTeX and simpler tools like Microsoft Word and Google Docs.


What is the goal with Typst? #card
Build a typesetting tool that is highly capable *and* a pleasure to use.


## Tutorial

### When to use Typst

### What you will learn

### Writing in Typst

How do you mark a text as a heading in Typst? #card-reverse 
To add a heading, enter the `=` character
```
= Introduction
```

How do you emphasize some text with italics? #card-reverse 
To emphasize some text with italics, enclose it in <b><i>\_underscores\_</i></b>

What determines the nesting level of a heading? #card-reverse 
The number of `=` characters determines the nesting level of the heading.

How to create a numbered list in Typst? #card-reverse 
- For each item of the list, we type a `+` character at the beginning of the line.

How to create a bulleted list in Typst? #card-reverse 
If we wanted to add a bulleted list, we would use the `-` character instead of the `+` character.

What does Typst reserve markup symbols for? Why so? #card 
- `=`, `-`, `+`, and `_` to create headings, lists and emphasized text, respectively. 
	- However, having a special symbol for everything we want to insert into our document would soon become cryptic and unwieldy.
	- For this reason, Typst reserves markup symbols only for the most common things. Everything else is inserted with _functions._

How to insert an image in Typst? #card 
Use Typst's [`image`](https://typst.app/docs/reference/visualize/image/) function

How to call a function in markup? #card 
First need to type the `#` character, immediately followed by the name of the function.

How to change the `width` of an image? #card 
- Pass the `width` argument to the `image` function.
- For example:
	```js
	#image("glacier.jpg", width: 70%)
	``` 

What is a *named* argument? #card 
- An argument to a function that must be specified.
- For example… `name: value` would be passed to the function instead of just `value`


 
## Reference

## Changelog

## Community


