---
author: 
publisher: 
published: 
tags:
  - 🔴-academic/📚-educational-resource/discipline/computer-science/programming-language/typescript
  - 🔴-academic/📚-educational-resource/name/typescript
  - study-note
cards-deck: Default::Computer Science
created: 2023-09-03 08:46
updated: 2023-11-02T12:51
---

The option {`--sourceMap`} tells the compiler that you want the source map generation. The next question is if you want them as separate files .js.map or not.
^1684392288360

The option {`--inlineSourceMap`} will put generated source maps inside your .js file.
^1684392288369

There is yet another option {`--inlineSources`}. This one will create a separate .js.map file, which will include the original TypeScript source so you don't need to deploy your .ts files under the server.
^1684392288374

What is the benefit to using `--inlineSources` vs (`--inlineSourceMap` or `--sourceMap`)? #card 
- `--inlineSources` can be more convenient for development, but they increase the size of the JavaScript files delivered to the client, and they expose your source code to anyone who looks. 
- `--inlineSourceMap` or `--sourceMap` maps can be more complex to manage, but they allow you to keep your original source code hidden in production while still giving you the ability to debug problems effectively.
^1684392288380

To clarify, when transpiling a typescript file to a JavaScript file using `tsc`, does it transpile everything to just one file? For instance, lets say I had a project with a `main.ts` that also imported logic from `A.ts` and `B.ts`. When I call `tsc`, do I only need to call it on `main.ts` and does it include the necessary logic also from `A.ts` and `B.ts`? #card 
- When you transpile a TypeScript file to JavaScript using the TypeScript compiler (`tsc`), by default, each TypeScript file is transpiled to its corresponding JavaScript file. So, if you have `main.ts`, it will be transpiled to `main.js`, `A.ts` will be transpiled to `A.js`, and `B.ts` will be transpiled to `B.js`.
- However, the transpilation process does not automatically concatenate all the transpiled files into a single JavaScript file. Each TypeScript file will be transpiled to its own JavaScript file, maintaining the modular structure of your project.
^1684614047101

What does `**` mean in `src/**/.ts`? #card 
- In the context of file patterns, the `**` is a glob pattern that matches any combination of characters across directory levels. It is often used as a wildcard for directory matching.
- In the example `"src/**/*.ts"`, the `**` matches any subdirectory within the `src` directory, and `*.ts` matches any TypeScript file with a `.ts` extension. So, the pattern `"src/**/*.ts"` matches all TypeScript files in any subdirectory of the `src` directory.
- Here's an example to illustrate how the `**` wildcard works:
	- `src/file.ts` matches the pattern.
	- `src/subdirectory/file.ts` matches the pattern.
	- `src/subdirectory/subsubdirectory/file.ts` matches the pattern.
- By using `**`, you can match files in any level of subdirectories within the specified directory.
^1684614469125

What does export do in TypeScript? #card 
- Simply states that a class is importable across modules.
- For reference, look at the example code…
```typescript
// StringValidator.ts
export interface StringValidator {
    isAcceptable(s: string): boolean;
}
// ZipCodeValidator.ts
import { StringValidator } from "./StringValidator";
export const numberRegexp = /^[0-9]+$/;
export class ZipCodeValidator implements StringValidator {
    isAcceptable(s: string) {
        return s.length === 5 && numberRegexp.test(s);
    }
}
```
In this example, the `StringValidator` interface is exported from the `StringValidator.ts` file using the `export` keyword. It is then imported into the `ZipCodeValidator.ts` file using the `import` statement. The `ZipCodeValidator` class and the `numberRegexp` constant are also exported from the `ZipCodeValidator.ts` file using the `export` keyword.

In the context of developing plugins for Obsidian, when I build my plugin in debug mode with the `--inlineSources`, does Dev Tools recognize the path to the original TypeScript? #card 

In the context of TypeScript, what is the relation of the **tsc** option `inlineSources`, `sourceMap`, and `inlineSourceMap`. #card
1. First, you got two options in how you want your `.map` file generated. Either you can have the contents of it inside your generated `main.js` file (i.e., `inlineSources`) or you can have it separate (i.e., `sourceMap`)
	- There is further option of using (`inlineSources`) so that the content of your `main.ts` is embedded in your “map.”
		- Downside of this is that your `main.ts` code is exposde.



