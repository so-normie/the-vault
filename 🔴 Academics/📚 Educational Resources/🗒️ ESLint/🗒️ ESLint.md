---
title: 🗒️ C++
authors:
  - Edmund Leibert III
created: 2023-09-03 08:46
updated: 2023-09-28 14:16
tags:
  - 🔴-academics/📚-educational-resources/name/🗒️-eslint
  - 🔴-academics/📚-educational-resources/source-format/miscellaneous
  - 🔴-academics/📚-educational-resources/discipline/computer-science/technology/eslint
  - 🔴-academics/📚-educational-resources/name/🗒️-eslint/🔖-bookmark/🗒️-eslint
  - study-note
cards-deck: 🔴 Academics::📚 Educational Resources::🗒️ ESLint
---

# 🗒️ ESLint

---

## 🕸️ All Mention(s):

---

## 🔙 Previous Note(s):

---

## 🗒️ ESLint

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
<br>﹈<br>^1694493820734





---

## 🔜 Next Note(s):

---
