
---
author: 
publisher: 
published: 
tags: [computer-science/programming-language/javascript, educational-resource/javascript, study-note] 
cards-deck: Default::Computer Science
---

# JavaScript

What command returns the current window/tab/document’s url? #card-reverse 
```js
window.location.href
```
^1683153231978

What is the same origin policy? #card-reverse 
This policy dictates that JavaScript from one page may not access the other page if they come from different sites (from a different domain, protocol or port).
^1683711337264

What is a client-side dynamic webpage? #card-reverse  
- If the JavaScript code manipulates the DOM like a SPA does.
- Source: https://stackoverflow.com/a/44458845/8088657

Can a website with JavaScript still be considered a “static” website? #card 
- As far as the required server infrastructure is concerned, a website with JavaScript can still be considered static because it can be hosted by static hosting services (no server code involved).
- Source: https://stackoverflow.com/a/44458845/8088657

What is a dynamic site? #card 
- A dynamic site is a site with a server side language (php, python etc.) You could therefore have a dynamic site without JavaScript.
- [Source]: https://stackoverflow.com/a/44458845/8088657

![[🤖 ChatGPT, Bing Chat, etc. Warning]]

**Front:** What is a function in JavaScript? #card 
**Back:** A function in JavaScript is a block of code designed to perform a particular task. It is defined with the `function` keyword, followed by a name and parentheses `()`.
^1683153231986

**Front:** How do you create a `main` function in JavaScript? #card 
**Back:** In JavaScript, there is no concept of a `main` function like in other languages such as C or C++. However, you can create a function called `main` and call it at the beginning of your script to mimic the behavior of a `main` function in other languages.
^1683153231992

**Front:** How do you specify the entry point of a JavaScript project? #card 
**Back:** If you’re using a bundler or module system, you can specify the entry point of your project in its configuration. For example, if you’re using webpack, you can specify the entry point in the `webpack.config.js` file.
^1683153231998

In JavaScript, what is the difference between using single quotation marks (e.g., `'Hello'`) or double quotation marks (e.g., `"Hello"`)? #card 
- There is no difference in JavaScript, they are both treated the same.
- Only thing that matters is that you start, and end, with the same symbol.

What are template literals? #card 
- In the context of JavaScript, they allow you to put a variable directly into a string.
- Declared by using \` (backticks) as opposed to single or double quotes.
- Consider the following example…
  ```js
  let name == "John Doe";
  let greeting = `Hello ${name}`
  console.log(greeting); // Outputs: Hello, John Doe!
  ```
- The variable inside the placeholder can be any valid JavaScript expression. Notably, they can do much more…
	- Evaluate JavaScript expressions
	- Include line breaks as they are

Other than variable substitution, what else can template literals do? #card 
- Evaluate JavaScript expressions
- Include line breaks as they are

When dealing with inline boolean expression, is the left, or right side, of the colon the value returned if the expression evaluated is true? #card 
The value to the left of the colon is true.

