---
title: Misc. Notes
created: 2023-10-31T16:39
updated: 2023-12-12T01:17
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/🗒️-eslint/🔖/misc-notes
  - 🔴-academic/📚-educational-resource/format/miscellaneous
  - 🔴-academic/📚-educational-resource/discipline/computer-science/technology/eslint
  - study-note
cards-deck: 🔴 Academic::📚 Educational Resource::🗒️ ESLint::Misc. Notes
---

# Misc. Notes

---

> [!ABSTRACT]+ 
> Miscellaneous scratch notes pertaining to [ESLint](https://eslint.org/). [@FindFixProblems]
> 
> These notes are primarily structured in a Q&A format, making it easy to follow and learn. Corresponding Anki flashcards are available, enabling efficient revision and reinforcement of the concepts.

---

> [!INFO]+ 
> **Previous Note(s)**:
> 

---

﹇<br>
In the following TypeScript snippet, why is **ESLint** notfying me that `headings` is never reassigned when there is statement where I _push_ values into it?

```typescript
	let headings: any = [];

    if (contextAware) {
		// https://regex101.com/r/agSp9X/4
		let inCodeBlock = false;

		file.split('\n').forEach(line => {
			// Check for code block start or end
			if (line.trim().startsWith('```')) {
			  inCodeBlock = !inCodeBlock;
			}
	
			// Skip lines in code blocks
			if (inCodeBlock) return;
	
			// Match only if not in a code block
			const match = line.match(/^ {0,3}(#{1,6}) +([^\n]+?) ?((?: *#\S+)*) *$/);
			if (match) {
				headings.push(match);
		}
	  });
	}
```

#card 

In JavaScript (and TypeScript), the `let` keyword allows you to reassign a variable to a new value, but pushing elements into an array does not count as reassignment. When ESLint says that the variable is never reassigned, it means that you never do something like:

```javascript
headings = someOtherArray;
```

Since you're only modifying the array (by pushing elements into it) rather than reassigning it, ESLint notices that you could use `const` instead of `let`:

```javascript
const headings: any = [];
```

With `const`, the variable `headings` itself cannot be reassigned, but the contents of the array it points to can still be modified. Using `const` helps to indicate that the variable will not be reassigned, making the code a bit easier to reason about.

⌂
<br>﹈<br>^1702371325864


---

## :EiZoteroItem: Bibliography

\[1\]
“Find and fix problems in your JavaScript code - ESLint - Pluggable JavaScript Linter,” _ESLint_. Available: [https://eslint.org/](https://eslint.org/). [Accessed: Dec. 12, 2023]

---

> [!INFO]+
> **Next Note(s)**:
> 

---
