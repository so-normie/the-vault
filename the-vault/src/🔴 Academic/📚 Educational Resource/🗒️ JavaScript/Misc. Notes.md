---
title: Misc. Notes
created: 2023-11-17T00:08
updated: 2023-11-22T12:15
author(s):
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/🗒️-javascript/🔖/misc-notes
  - 🔴-academic/📚-educational-resource/format/course
  - 🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/javascript
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::🗒️ JavaScript::Misc. Notes
---

---

 > [!Abstract]+ 
 > Miscellaneous notes pertaining to JavaScript.

---

 > [!Info]+ 
 > **Previous Note(s):** 
 > 


---

#  Misc. Notes

﹇<br>
What command returns the current window/tab/document’s url? 

#card-reverse 

```js
window.location.href
```

⌂
<br>﹈<br>

﹇<br>
Consider the scenario where an _array_ of objects is represented as…

```js
dv.pages(`"${current_folder}"`).values`)
```

Is the following code a valid approach in order to iterate and access each elements underlying object structure?

```js
for(let value in dv.pages(`"${current_folder}"`).values) { 
	console.log(value.title);
}
```

#card 

In JavaScript, iterating over an object or array has specific semantics that you need to be aware of. The `for...in` loop is generally used to iterate over the enumerable properties of an object. When you use `for...in` on an array, the loop variable (`value` in your case) will hold the index of the array element, **_not_** the element itself. 

In your code snippet:

```javascript
for(let value in dv.pages(`"${current_folder}"`).values) {
	console.log(value.title);
}
```

The variable `value` will hold the index (or key, in case of objects) instead of the actual object stored at that index.

To iterate over an array and get each object directly, you can use `for...of` instead:

```javascript
for(let value of dv.pages(`"${current_folder}"`).values) {
	console.log(value.title);
}
```

Note: I'm assuming `dv.pages().values` returns an array. If it doesn't, you may need to adapt this example to fit the actual data structure.

Another option is to use the `.forEach()` method if your data structure is an array:

```javascript
dv.pages(`"${current_folder}"`).values.forEach((value) => {
	console.log(value.title);
});
```

Lastly, make sure that…
```js
dv.pages(`"${current_folder}"`).values
```
…actually returns what you expect it to return. Debugging that might provide more insight into the issue.

⌂
<br>﹈<br>

﹇<br>
In the following snippet, what is the value of `value`?

```javascript
for(let value in dv.pages(`"${current_folder}"`).values) {
	console.log(value.title);
}
```

#card 

In JavaScript, iterating over an object or array has specific semantics that you need to be aware of. The `for...in` loop is generally used to iterate over the enumerable properties of an object. When you use `for...in` on an array, the loop variable (`value` in your case) will hold the index of the array element, **_not_** the element itself. 

As such, the variable `value` will hold the index (or key, in case of objects) instead of the actual object stored at that index.

⌂
<br>﹈<br>

﹇<br>
In JavaScript, how can one iterate over an array and get each object directly?

#card 

To iterate over an array and get each object directly, you can use `for...of`:

```javascript
for(let value of dv.pages(`"${current_folder}"`).values) {
	console.log(value.title);
}
```

Note: I'm assuming `dv.pages().values` returns an array. If it doesn't, you may need to adapt this example to fit the actual data structure.

Another option is to use the `.forEach()` method if your data structure is an array:

```javascript
dv.pages(`"${current_folder}"`).values.forEach((value) => {
	console.log(value.title);
});
```

Lastly, make sure that…
```js
dv.pages(`"${current_folder}"`).values
```
…actually returns what you expect it to return. Debugging that might provide more insight into the issue.

⌂
<br>﹈<br>

﹇<br>
What is the same origin policy? 

#card-reverse 

This policy dictates that JavaScript from one page may not access the other page if they come from different sites (from a different domain, protocol or port).
⌂
<br>﹈<br>

﹇<br>
What is a client-side dynamic webpage? 

#card-reverse  

If the JavaScript code manipulates the DOM like a SPA does.

\[**Source**\]: https://stackoverflow.com/a/44458845/8088657

⌂
<br>﹈<br>

﹇<br>
Can a website with JavaScript still be considered a “static” website?

#card 


As far as the required server infrastructure is concerned, a website with JavaScript can still be considered static because it can be hosted by static hosting services (no server code involved).

\[**Source**\]: https://stackoverflow.com/a/44458845/8088657

⌂
<br>﹈<br>

﹇<br>
What is a dynamic site? 

#card 

A dynamic site is a site with a server side language (php, python etc.) You could therefore have a dynamic site without JavaScript.

\[**Source**\]: https://stackoverflow.com/a/44458845/8088657

⌂
<br>﹈<br>

﹇<br>
What is a function in JavaScript? 

#card 

A function in JavaScript is a block of code designed to perform a particular task. It is defined with the `function` keyword, followed by a name and parentheses `()`.

⌂
<br>﹈<br>


﹇<br>
How do you create a `main` function in JavaScript? 

#card 

In JavaScript, there is no concept of a `main` function like in other languages such as C or C++. However, you can create a function called `main` and call it at the beginning of your script to mimic the behavior of a `main` function in other languages.

⌂
<br>﹈<br>

﹇<br>
How do you specify the entry point of a JavaScript project? 

#card 

If you’re using a bundler or module system, you can specify the entry point of your project in its configuration. For example, if you’re using webpack, you can specify the entry point in the `webpack.config.js` file.

⌂
<br>﹈<br>


﹇<br>
In JavaScript, what is the difference between using single quotation marks (e.g., `'Hello'`) or double quotation marks (e.g., `"Hello"`)? 

#card 

There is no difference in JavaScript, they are both treated the same.

Only thing that matters is that you start, and end, with the same symbol.

⌂
<br>﹈<br>

﹇<br>
What are template literals? 

#card 

In the context of JavaScript, they allow you to put a variable directly into a string.

Declared by using \` (backticks) as opposed to single or double quotes.

Consider the following example…

```js
let name == "John Doe";
let greeting = `Hello ${name}`
console.log(greeting); // Outputs: Hello, John Doe!
```

The variable inside the placeholder can be any valid JavaScript expression. Notably, they can do much more…
- Evaluate JavaScript expressions
- Include line breaks as they are

⌂
<br>﹈<br>


﹇<br>
Other than variable substitution, what else can template literals do? 

#card 

- Evaluate JavaScript expressions
- Include line breaks as they are

⌂
<br>﹈<br>


﹇<br>
When dealing with inline boolean expression, is the left, or right side, of the colon the value returned if the expression evaluated is true? 

#card 

The value to the left of the colon is true.

⌂
<br>﹈<br>

﹇<br>
Is `int` a data type in JavaScript?

#card 

No, `int` is not a data type in JavaScript. [JavaScript has the following data types](https://www.w3schools.com/js/js_datatypes.asp) :

1. String
2. Number
3. Bigint
4. Boolean
5. Undefined
6. Null
7. Symbol
8. Object

[The `Number` data type in JavaScript represents both integers and floating-point numbers](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)[2](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number). [There is no separate integer type for everyday use](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)[2](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number). [However, JavaScript does have a `BigInt` type for representing integers with arbitrary magnitude](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures)[3](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures). [But it’s not designed to replace `Number` for everyday uses](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)[2](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number).

In most programming languages, numbers are often represented as different types like integers (`int`), short, long, floating-point, etc. [But in JavaScript, numbers are always stored as double precision floating point numbers, following the international IEEE 754 standard](https://www.w3schools.com/js/js_numbers.asp)[4](https://www.w3schools.com/js/js_numbers.asp).

So, if you’re looking to use integers in JavaScript, you would use the `Number` or `BigInt` data type.

⌂
<br>﹈<br>

---

> [!Info] 
> **Next Note(s):**
> 

---
