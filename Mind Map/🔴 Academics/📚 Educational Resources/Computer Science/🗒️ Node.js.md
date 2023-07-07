---
author: 
publisher: 
published: 
tags: [computer-science/technology/node-js, educational-resource/node-js, study-note] 
cards-deck: Default::Computer Science
---

Is Node.js a framework or library? #card 
No. <span class="spoiler">Node.js®</span> is an open-source, cross-platform JavaScript runtime environment.
^1684687268218

What does `npm fund` mean? #card-reverse 
- This command retrieves information on how to fund the dependencies of a given project.
	- If no package name is provided, it will list all dependencies that are looking for funding in a tree structure, listing the type of funding and the url to visit.
	- If a package name is provided then it tries to open its funding url using the `--browser` config param; if there are multiple funding sources for the package, the user will be instructed to pass the `--which` option to disambiguate.
- The list will avoid duplicated entries and will stack all packages that share the same url as a single entry. Thus, the list does not have the same shape of the output from `npm ls`.
^1684687268223

What is the general process to creating a simple request/response “Hello, World!” application in Node.js? #card 
1. Start with creating the `main.js`
2. Import the http module
3. Create a server that can listen and do a response
^1686462138348

What is the difference between `res.send()` and `res.end()`? #card-reverse 
 _ `res.send()` will check the structure of your output and set header information accordingly.
```javascript
app.get('/',(req,res)=>{
	res.send('<b>hello</b>');
});
```
[![enter image description here](https://i.stack.imgur.com/fLXhj.png)](https://i.stack.imgur.com/fLXhj.png)
```javascript
app.get('/',(req,res)=>{
	res.send({msg:'hello'});
});
```
[![enter image description here](https://i.stack.imgur.com/gZXYm.png)](https://i.stack.imgur.com/gZXYm.png)
- Where with `res.end()` you can only respond with text and it will not set "_Content-Type_"
```javascript
app.get('/',(req,res)=>{
	res.end('<b>hello</b>');
}); 
```
[![enter image description here](https://i.stack.imgur.com/g5gDv.png)](https://i.stack.imgur.com/g5gDv.png)
- `res.send()` will set "ETag" attribute in the response header**_
```javascript
app.get('/',(req,res)=>{
	res.send('<b>hello</b>');
});
```
[![enter image description here](https://i.stack.imgur.com/IhX7j.png)](https://i.stack.imgur.com/IhX7j.png)
^1686462138354

Why is this “ETag” tag important? #card 
The ETag HTTP response header is an identifier for a specific version of a resource. It allows caches to be more efficient, and saves bandwidth, as a web server does not need to send a full response if the content has not changed.
^1686462138358

When using `npm` to run `node` to run an application, where is the current process located? #card 
In the root directory where the file `package-lock.json`
^1686466340048

Does JSON allow comments? #card 
No.
^1686466340052


![[🤖 ChatGPT, Bing Chat, etc. Warning]]

**Front:** What is `npm-run-all`? #card 
**Back:** `npm-run-all` is a CLI tool that allows you to run multiple npm scripts in parallel or sequentially.
^1684687518506


**Front:** What are the 3 CLI commands provided by `npm-run-all`? #card 
**Back:** The 3 CLI commands provided by `npm-run-all` are `npm-run-all`, `run-s`, and `run-p`.
^1684687518510


**Front:** What is the difference between `run-s` and `run-p`? #card 
**Back:** `run-s` is a shorthand command for running scripts sequentially, while `run-p` is a shorthand command for running scripts in parallel.
^1684687518515


In Node, can you run scripts in sequential *and* parallel order? #card 
- In plain Node.js, you can run multiple scripts sequentially by chaining them with `&&`.
	- For example: `node script1.js && node script2.js`.
- However, to run scripts in parallel, you would need to use a tool like `npm-run-all` or `concurrently`.
^1684687268232

Can JavaScript directly execute PowerShell scripts? #card 
No.
^1684687268236

What is a child process? #card 
- In computing, a child process is a process that is created by another process (the parent process). 
^1684687268240

How is a child process made? #card 
- This creation is done through a mechanism known as "forking," where the parent process makes a copy of itself.
- This copy, the child process, can then be changed to run a different program.
	- The parent process may continue executing concurrently with the child, or may wait for the child process to complete execution.
^1684687268244

Each process runs in its own protected memory space, so… #card-reverse 
One process can't directly affect another one (unless explicit inter-process communication is set up), because…
^1684687268248

In Node.js, what module provides the ability to spawn child processes? #card 
The `child_process` module.
^1684687268252

In Node.js, can child processes communicate with their parents? #card 
- The spawned child processes have three main communication channels with the parent: `stdin`, `stdout`, and `stderr`.
- These allow the parent and child processes to send and receive data from each other, if necessary. This module is often used to execute shell commands from within JavaScript code.
^1684687268255

Child processes can be either {synchronous (blocking)} or {asynchronous (non-blocking)}, depending on the method used to create them (`execSync`, `exec,` `spawn`, `fork`, etc.).
^1684687268259

**Front:** What is the main difference between `exec` and `execSync` in Node.js? #card
**Back:** `exec` is asynchronous and doesn't block the Node.js event loop, allowing the application to continue doing other work while the command is executing. `execSync` is synchronous and blocks the Node.js event loop until the spawned shell command has completed.
^1684687268263

**Front:** What happens when a command fails in `execSync`? #card
**Back:** When a command fails (returns a non-zero status) in `execSync`, it throws an error.
^1684687268267

**Front:** In Node.js, how does `exec` handle the output from the shell command? #card
**Back:** `exec` provides the output to a callback function when the command has completed execution. The `stdout` and `stderr` from the command are passed to this callback function.
^1684687268271

**Front:** What is the output of the `execSync` function in Node.js? #card
**Back:** `execSync` returns the stdout from the command as a Buffer object (or a string, if an encoding is specified).
^1684687268274

**Front:** What type of function (blocking or non-blocking) is `execSync` in Node.js? #card
**Back:** `execSync` is a blocking (synchronous) function.
^1684687268278

**Front:** What type of function (blocking or non-blocking) is `exec` in Node.js? #card
**Back:** `exec` is a non-blocking (asynchronous) function.
^1684687268282

What is a callback function in JavaScript? #card 
Also known as a “higher-order function”, a callback function is a function that is passed to another function as an argument, which is then invoked inside the outer function to complete some kind of routine or action. Callback functions are often used in asynchronous operations, where the timing of the response cannot be predicted.
^1684687268285

Explain the below code in the context of callback functions and Node.js’s `child_process` library. 
```js
import { exec } from 'child_process'; 

exec('ls -la', (error, stdout, stderr) => {
	if (error) {
		console.error(`exec error: ${error}`);
		return;
	}
	console.log(`stdout: ${stdout}`); 
	
	console.error(`stderr: ${stderr}`);
});
```
#card 
- In this script, `ls -la` is a shell command that lists the files in the current directory in long format, including hidden files. This command is passed to `exec` along with a callback function. This function will be invoked when the `ls -la` command has completed.
- If there's an error executing the command, the error argument will contain an Error object describing what went wrong. If the command executed successfully, then stdout will contain the command's output, and stderr will contain any error messages the command produced. The callback function then logs these values to the console.
^1684687268289

What is the point of the braces in the statement?
```js
import { exec } from ‘child_process’`
```
#card 
- In JavaScript, the braces are used to import named exports from a module. If a module exports multiple items (like functions, objects, or values), you can import the ones you want using the curly braces `{}`.
- In the case of… 
```js
import { execSync } from 'child_process'; 
```
  `execSync` is a named export from the `child_process` module, so it needs to be imported with braces. If you want to import multiple named exports, you can list them all in the braces, separated by commas, like so:
```js
import { execSync, exec } from 'child_process';
```
- This would import both the `execSync` and `exec` functions from `child_process`.
- On the other hand, if a module has a default export, you can import it without braces:
```js
import fs from 'fs';
```
- In this example, `fs` is the default export from the `fs` module.
- In many cases, a module might have both default and named exports, and you can import them like this:
```js
import fs, { readFileSync } from 'fs';
```
- In this example, `fs` is the default export and `readFileSync` is a named export from the `fs` module.
^1684687734744


**Front**: What method does Node.js's `http` module use to write data to the response body? #card 
**Back**: Node.js's `http` module uses the `res.write()` method to write data to the response body.
^1686463069446


**Front**: What do you need to call to indicate you've finished sending the response in Node.js's `http` module? #card 
**Back**: You need to call `res.end()` to indicate you've finished sending the response in Node.js's `http` module.
^1686463069451


**Front**: What is the `res.send()` method in Express.js used for? #card 
**Back**: The `res.send()` method in Express.js is used to send a response to the client and automatically closes the connection. It also sets the correct content-type and response length HTTP header based on the type of data being sent.
^1686463069455


**Front**: Can you send HTML files using the `res.write()` method in Node.js? #card 
**Back**: Yes, you can send HTML files using the `res.write()` method in Node.js. You would typically use the `fs` (file system) module to read the HTML file, then write the contents to the response.
^1686463069459


**Front**: Does `res.write()` in Node.js's `http` module automatically set headers? #card 
**Back**: No, `res.write()` in Node.js's `http` module does not automatically set headers. Headers can be set manually using `res.setHeader(name, value)` or `res.writeHead(statusCode[, statusMessage][, headers])`.
^1686463069462


**Front**: How does `res.send()` in Express.js differ from `res.write()` in Node.js in terms of header handling? #card 
**Back**: `res.send()` in Express.js can automatically handle some header settings based on the type of data being sent. This automatic handling does not occur with `res.write()` in Node.js's `http` module.
^1686463069466

In node.js, how do I run an application in “watch” mode? #card 
`node -watch`
^1686463435716

Where should I put my script tags in an HTML file? #card 
- Usually The best place to put your `<script>` tags is usually at the bottom of the `<body>` section of your HTML file.
- This is because when a browser loads a website with a `<script>` tag, it has to stop parsing the HTML until the script has been downloaded and executed. This can cause a delay in rendering the page and result in a bad user experience. [By placing the `<script>` tags at the bottom of the `<body>` section, you ensure that the rest of the page content is loaded and displayed before the scripts are executed.](https://stackoverflow.com/questions/436411/where-should-i-put-script-tags-in-html-markup)
^1686463435720

What does `npm i` stand for? #card 
Stands for `npm install`


