---
tags:
  - 🔴-academic/📚-educational-resource/name/the-modern-javascript-tutorial
  - 🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/javascript
  - study-note
cards-deck: Default::Computer Science
created: 2023-10-13T01:57
updated: 2023-11-18T02:44
---

# The Modern JavaScript Tutorial

## [PART 1 “The JavaScript language”](https://javascript.info/#tab-1)

### 1.  [**An introduction**](https://javascript.info/getting-started)

#### 1.1 [**An Introduction to JavaScript**](https://javascript.info/intro)

What will this section cover? #card-reverse 
- What’s so special about JavaScript
- What we can achieve with it
- Other technologies that play well with it
^1683149678242


##### [**What is JavaScript?**](https://javascript.info/intro#what-is-javascript)

Why was JavaScript initially created? #card 
A language that was created to “make web pages alive.”
^1683149678260


What are programs in the <span class="spoiler">JavaScript</span> language called? #card-reverse 
The programs in this language are called *scripts*.
^1683149678263


What are some features of *scripts*? #card-reverse 
- Can be written right in a web page’s HTML.
- Can be ran automatically as the page loads.
^1683149678267

Can JavaScript scripts be written right into a web page’s HTML? #card 
Yes.
^1684424307655

Can JavaScript be ran automatically as the page loads? #card 
Yes.
^1684424307664

How are scripts provided and executed? #card 
As plain text.
^1683149678270


Scripts need special preparation or compilation to run. True or False? #card 
False. Scripts don’t need special preparation or compilation to run.
^1683149678273


Why is JavaScript called JavaScript? #card 
> [!info] Why is it called JavaScript?
> - The language initially had another name: “LiveScript”
> 	- However, Java was very popular at that time, so it was decided that positioning a new language as a “younger brother” of Java would help.
> - As it evolved, JavaScript became a fully independent language with its own specification called ECMAScript, and now it has no relation to Java at all.
^1683149678276


Does JavaScript only execute in the browser? #card 
No, today <span class="spoiler">JavaScript</span> can execute…
- In the browser
- On the server
- On any device that has a special program called [the JavaScript engine](https://en.wikipedia.org/wiki/JavaScript_engine).
^1683149678280


What is the “JavaScript virtual machine”? #card-reverse 
What the browser’s embedded engine is sometimes called.
^1683149678284


What are some JavaScript engines? #card 
- <span class="spoiler">[V8](https://en.wikipedia.org/wiki/V8_(JavaScript_engine))</span> – in Chrome, Opera and Edge.
- <span class="spoiler">[SpiderMonkey](https://en.wikipedia.org/wiki/SpiderMonkey)</span> – in Firefox.
- …There are other codenames like “Chakra” for IE, “JavaScriptCore”, “Nitro” and “SquirrelFish” for Safari, etc.
^1683149678287


How do JavaScript engines work? #card 
> [!info] How do engines work?
> Engines are complicated. But the basics are easy..
> 1. <span class="spoiler">The engine (embedded if it’s a browser) reads (“parses”) the script.</span>
> 2. <span class="spoiler">Then it converts (“compiles”) the script to machine code.</span>
> 3. <span class="spoiler">And then the machine code runs, pretty fast.</span>
> 
> <span class="spoiler">The engine applies optimizations at each step of the process. It even watches the compiled script as it runs, analyzes the data that flows through it, and further optimizes the machine code based on that knowledge.</span>
^1683149678290

---

##### [**What can in-browser JavaScript do?**](https://javascript.info/intro#what-can-in-browser-javascript-do)

Is modern JavaScript considered a “safe” programming language? #card 
Yes.
^1683149678293


Why is modern JavaScript considered a “safe” programming language? #card 
- It does *not* provide low-level access to memory or the CPU
- It was initially created for browsers which do not require it.
^1683149678296


What do JavaScript’s capabilities greatly depend on? #card 
The environment it’s running in.
^1683149678299


<span class="spoiler">[Node.js](https://wikipedia.org/wiki/Node.js)</span> supports functions that allow JavaScript to read/write arbitrary files, perform network requests, etc. #card 
Node.js
^1683149678301


What does [Node.js](https://wikipedia.org/wiki/Node.js) allow for? #card-reverse 
Support functions that allow JavaScript to…
- read/write arbitrary files
- perform network requests
- etc.
^1683149678304


What is in-browser JavaScript able to do? #card 
- Add new HTML to the page, change the existing content, modify styles.
- React to user actions, run on mouse clicks, pointer movements, key presses.
- Send requests over the network to remote servers, download and upload files (so-called [AJAX](https://en.wikipedia.org/wiki/Ajax_(programming)) and [COMET](https://en.wikipedia.org/wiki/Comet_(programming)) technologies).
- Get and set cookies, ask questions to the visitor, show messages.
- Remember the data on the client-side (“local storage”).
^1683149678307


What are cookies in JavaScript? #card 
<span class="spoiler">Cookies</span> in JavaScript are a **set of data stored in the browser that is fetched whenever a web page is loaded**, and the content of this <span class="spoiler">cookie</span> will be used to reload the web page whenever there is a connectivity issue or the server is not reachable.
^1683149678311


##### [**What CAN’T in-browser JavaScript do?**](https://javascript.info/intro#what-can-t-in-browser-javascript-do)

Why are JavaScript’s abilities in the browser limited? #card 
To protect the user’s safety. For instance, imagine…
- <span class="spoiler">An evil webpage accessing private information.</span>
- <span class="spoiler">An evil webpage harming the user’s data.</span>
^1683149678314


What are examples of such restrictions to JavaScript? #card-reverse 
- <span class="spoiler">JavaScript on a webpage may not read/write arbitrary files on the hard disk, copy them or execute programs. It has no direct access to OS functions.
  Modern browsers allow it to work with files, but the access is limited and only provided if the user does certain actions, like “dropping” a file into a browser window or selecting it via an `<input>` tag. 
  There are ways to interact with the camera/microphone and other devices, but they require a user’s explicit permission. So a JavaScript-enabled page may not sneakily enable a web-camera, observe the surroundings and send the information to the [NSA](https://en.wikipedia.org/wiki/National_Security_Agency).</span>
    
- <span class="spoiler">Different tabs/windows generally do not know about each other. Sometimes they do, for example when one window uses JavaScript to open the other one. But even in this case, JavaScript from one page may not access the other page if they come from different sites (from a different domain, protocol or port).
  This is called the “Same Origin Policy”. To work around that, _both pages_ must agree for data exchange and must contain special JavaScript code that handles it. We’ll cover that in the tutorial.
  This limitation is, again, for the user’s safety. A page from `http://anysite.com` which a user has opened must not be able to access another browser tab with the URL `http://gmail.com`, for example, and steal information from there.</span> 
- <span class="spoiler">JavaScript can easily communicate over the net to the server where the current page came from. But its ability to receive data from other sites/domains is crippled. Though possible, it requires explicit agreement (expressed in HTTP headers) from the remote side. Once again, that’s a safety limitation.</span>
^1683149678318


Does in-browser JavaScript have direct access to the OS? #card 
No.
^1683149678321


Generally, regarding in-browser JavaScript, do different tabs/windows know each other? #card 
- No.
- Sometimes they do, for example when one window uses JavaScript to open the other one.
	- But even in this case, JavaScript from one page may not access the other page if they come from different sites (from a different domain, protocol or port).
		- This is called the <span class="spoiler">“Same Origin Policy”</span>.
		- To work around that, _both pages_ must agree for data exchange and must contain special JavaScript code that handles it. We’ll cover that in the tutorial.
^1683149678324


What are domains?

What are protocols?

What are ports?

![[the-vault/assets/images/an-introduction-to-modern-javascript.jpg|350]] #card 
How should one visualize the limitations of in-browser JavaScript?
^1683149678328


##### [**What makes JavaScript unique?**](https://javascript.info/intro#what-makes-javascript-unique)

What are the _three_ primary great things about JavaScript? #card-reverse 
- Full integration with HTML/CSS
- Simple things are done simply
- Supported by all major browsers and enabled by default
^1683149678331


Is JavaScript the only browser technology that combines full integration with HTML/CSS, simple things are done simply, and supported by all major browsers and enabled by default? #card 
Yes.
^1683149678334


Can JavaScript be used to create servers, mobile applications, etc.? #card 
Yes.
^1683149678337


##### [**Languages “over” JavaScript**](https://javascript.info/intro#languages-over-javascript)

What does _transpiled_ mean in the context of JavaScript? #card 
Converted to JavaScript.
^1683149678340


What are some examples of languages that _transpile_ to JavaScript? #card 
Examples of such languages:
- <span class="spoiler">[CoffeeScript](https://coffeescript.org/)</span> is “syntactic sugar” for JavaScript. It introduces shorter syntax, allowing us to write clearer and more precise code. Usually, Ruby devs like it.
- <span class="spoiler">[TypeScript](https://www.typescriptlang.org/)</span> is concentrated on adding “strict data typing” to simplify the development and support of complex systems. It is developed by Microsoft.
- <span class="spoiler">[Flow](https://flow.org/)</span> also adds data typing, but in a different way. Developed by Facebook.
- <span class="spoiler">[Dart](https://www.dartlang.org/)</span> is a standalone language that has its own engine that runs in non-browser environments (like mobile apps), but also can be transpiled to JavaScript. Developed by Google.
- <span class="spoiler">[Brython](https://brython.info/)</span> is a Python transpiler to JavaScript that enables the writing of applications in pure Python without JavaScript.
- <span class="spoiler">[Kotlin](https://kotlinlang.org/docs/reference/js-overview.html)</span> is a modern, concise and safe programming language that can target the browser or Node.
^1683149678344

#### 1.2 [**Manuals and specifications**](https://javascript.info/manuals-specifications)

##### **Specification**

Where is is the “formal specification” of the JavaScript? #card-reverse 
- The ECMA-262 specification contains the most in-depth, detailed and formalized information about JavaScript. It defines the language.
- Not for everyday use since it is so detailed.
^1686453115120

Where to read about new bleeding-edge features, including those that are “almost standard”? #card-reverse 
See proposals at https://github.com/tc39/proposals.
^1686453115127

##### **Manuals**

{**MDN (Mozilla) JavaScript Reference**} is the main manual with examples and other information. It’s great to get in-depth information about individual language functions, methods etc.
^1686453115132

How to best use MDN JavaScript reference? #card 
Although, it’s often best to use an internet search instead. Just use “MDN [term]” in the query, e.g. [https://google.com/search?q=MDN+parseInt](https://google.com/search?q=MDN+parseInt) to search for the `parseInt` function.
^1686453115136

##### **Compatibility tables**

Where to see features currently supported by browsers? #card 
- [https://caniuse.com](https://caniuse.com/) – per-feature tables of support, e.g. to see which engines support modern cryptography functions: [https://caniuse.com/#feat=cryptography](https://caniuse.com/#feat=cryptography).
- [https://kangax.github.io/compat-table](https://kangax.github.io/compat-table) – a table with language features and engines that support those or don’t support.
^1686453115140

#### 1.3 [**Code editors**](https://javascript.info/code-editors)

##### **IDE**

##### **Lightweight Editors**

##### **Let’s not argue**

#### 1.4 [**Developer console**](https://javascript.info/devtools)


##### [**Google Chrome**](https://javascript.info/devtools#google-chrome)

##### [**Firefox, Edge, and others**](https://javascript.info/devtools#firefox-edge-and-others)

##### [**Firefox, Edge, and others**](https://javascript.info/devtools#firefox-edge-and-others)

##### [**Safari**](https://javascript.info/devtools#safari)

##### [**Summary**](https://javascript.info/devtools#summary)


### 2.  [**JavaScript Fundamentals**](https://javascript.info/first-steps)

#### 2.1 [Hello, world!](https://javascript.info/hello-world)

Is alert a browser-specific command? #card 
Yes.
^1686453115143

##### **The “script” tag**

What is a browser-specific command? #card 
- A browser-specific command in JavaScript is a command that only works in a specific browser. [For example, you can use the `navigator.userAgent` property to detect the browser and write browser-specific code](https://stackoverflow.com/questions/14721237/how-do-i-write-browser-specific-javascript-code)
- [However, it’s usually better to detect features rather than browsers, as you shouldn’t care what browser the end user is using as long as it supports your features](https://stackoverflow.com/questions/14721237/how-do-i-write-browser-specific-javascript-code)
^1686453115147

How do you detect the current browser being used? #card-reverse  
Can use the `navigator.userAgent`
^1686453115150

Is better to detect the browser or just the features? #card 
Better to detect just the features.
^1686453115154

What is the concept of feature detection and why is it important? #card
- [Feature detection is the practice of determining whether a browser supports a certain block of code and running different code depending on whether it does or doesn’t, so that the browser can always provide a working experience rather than crashing or erroring in some browsers](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Cross_browser_testing/Feature_detection)[1](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Cross_browser_testing/Feature_detection).
- [The idea behind feature detection is that you can run a test to determine whether a feature is supported in the current browser, and then conditionally run code to provide an acceptable experience both in browsers that do support the feature and browsers that don’t](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Cross_browser_testing/JavaScript)[2](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Cross_browser_testing/JavaScript).
^1686453115157

How can one incorporate feature detection into their web application? #card 
- [For example, you can detect whether the browser supports geolocation by using something like `if ("geolocation" in navigator) { ... }`](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Cross_browser_testing/Feature_detection)[1](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Cross_browser_testing/Feature_detection).
^1686453115161
- [For complex applications, consider using an established feature detection library such as Modernizr rather than writing your own](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Cross_browser_testing/Feature_detection)[1](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Cross_browser_testing/Feature_detection).
^1686453115165

JavaScript programs can be inserted almost anywhere into an HTML document using the {`<script>`} tag.
^1686453115169

The `<script>` tag contains JavaScript code which is {automatically executed} when the browser {processes the tag}.
^1686466953697

##### **Modern markup**

What are some attributes of the `<script>` that are no longer used in modern JavaScript? #card 
- The `type` attribute: `<script type=…>`
- The `language` attribute: `script language=…>`
- Comments before and after scripts.
^1686466953701

##### **External scripts**

How are script files attached to HTML?
Via the `src` attribute…
`<script src="/path/to/script.js"></script>`

What rule should one follow regarding JavaScript and putting them in HTML files?
> [!info]+ Please note:
> As a rule, only the simplest scripts are put into HTML. More complex ones reside in separate files.
> The benefit of a separate file is that the browser will download it and store it in its cache.
> Other pages that reference the same script will take it from the cache instead of downloading it, so the file is actually downloaded only once.
> That reduces traffic and makes pages faster.

If the `src` is set, is the script content ignored? #card 
> [!warning]+ If `src` is set, the script content ignored.
> A single `<script>` tag can’t have both the `src` attribute and code inside.
^1686466953705

##### **Summary**

##### ✅ **Tasks**

-----

###### **Show and alert**

-------

###### **Show an alert with an external script**

#### 2.2 [Code structure](https://javascript.info/structure)

##### **Statements**

##### **Semicolons**

JavaScript can sometimes {interprets} a “line break” as a semi colon.
^1686467171998

It is recommended putting {semicolons} at the end of each statement.
^1686467172002

##### **Comments**

#### 2.3 [The modern mode, "use strict"](https://javascript.info/strict-mode)

##### **“use strict”**

What is the purpose of “use strict”? #card 
To make a script strictly adhere to modern JavaScript practices.
```js
"use strict"; 
// this code works the modern way ...
```

The directive looks like a string: {"use strict"} or 'use strict'. When it is located at the {top} of a script, the whole script works the “modern” way.

How to to make a function `"use strict"`? #card 
Place `"use strict"` a the top of the function.

What is
> [!warning]+ Ensure that “use strict” is at the top
> Please make sure that `"use strict"` is at the top of your scripts, otherwise strict mode may not be enabled.
> Strict mode isn’t enabled here:
> Code below...
```js
alert("some code"); // "use strict" below is ignored--it must be at the top  

"use strict";  

// strict mode is not activated`
```
> Only comments may appear above `"use strict"`.

> [!warning]+ There’s no way to cancel `use strict`
> There is no directive like `"no use strict"` that reverts the engine to old behavior.
> Once we enter strict mode, there’s no going back.


#### 2.4 [Variables](https://javascript.info/variables)
   
#### 2.5 [Data types](https://javascript.info/types)
   
#### 2.6 [Interaction: alert, prompt, confirm](https://javascript.info/alert-prompt-confirm)
   
#### 2.7 [Type Conversions](https://javascript.info/type-conversions)
   
#### 2.8 [Basic operators, maths](https://javascript.info/operators)
   
#### 2.9 [Comparisons](https://javascript.info/comparison)
   
#### 2.10 [Conditional branching: if, '?'](https://javascript.info/ifelse)
   
#### 2.11 [Logical operators](https://javascript.info/logical-operators)
   
#### 2.12 [Nullish coalescing operator '??'](https://javascript.info/nullish-coalescing-operator)
   
#### 2.13 [Loops: while and for](https://javascript.info/while-for)
   
#### 2.14 [The "switch" statement](https://javascript.info/switch)
   
#### 2.15 [Functions](https://javascript.info/function-basics)
   
#### 2.16 [Function expressions](https://javascript.info/function-expressions)
   
#### 2.17 [Arrow functions, the basics](https://javascript.info/arrow-functions-basics)
   
#### 2.18 [JavaScript specials](https://javascript.info/javascript-specials)


### 3.  [Code quality](https://javascript.info/code-quality)

### 4.  [Objects: the basics](https://javascript.info/object-basics)

### 5.  [Data types](https://javascript.info/data-types)

### 6.  [Advanced working with functions](https://javascript.info/advanced-functions)

### 7.  [Object properties configuration](https://javascript.info/object-properties)

### 8.  [Prototypes, inheritance](https://javascript.info/prototypes)

### 9.  [Classes](https://javascript.info/classes)

### 10.  [Error handling](https://javascript.info/error-handling)

### 11.  [Promises, async/await](https://javascript.info/async)

### 12.  [Generators, advanced iteration](https://javascript.info/generators-iterators)

### 13.  [Modules](https://javascript.info/modules)

### 14.  [Miscellaneous](https://javascript.info/js-misc)




