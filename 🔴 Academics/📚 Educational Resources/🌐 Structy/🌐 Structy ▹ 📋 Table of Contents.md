---
title: 🌐 Structy ▹ 📋 Table of Contents
created: 2023-08-30 00:00
updated: 2023-09-27 23:43
authors:
  - Edmund Leibert III
tags:
  - 🔴-academics/📚-educational-resources/name/🌐-structy
  - 🔴-academics/📚-educational-resources/source-format/internet/website
  - 🔴-academics/📚-educational-resources/discipline/computer-science
  - 🔴-academics/📚-educational-resources/name/🌐-structy/🔖-bookmark/🌐-structy/🌐-structy-▹-📋-table-of-contents
  - study-note
cards-deck: 🔴 Academics::📚 Educational Resources::🌐 Structy::🌐 Structy ▹ 📋 Table of Contents
---

# 🌐 Structy ▹ 📋 Table of Contents 

---

> [!abstract]+ Abstact:
> 

---

> [!info]+ 🕸️ All Mention(s):
> 

---

> [!info]+ 🔙 Previous Note(s):
> 

---



> [!info]+ Key for what emojis in the names of notes represent…
> - 👨🏻‍🏫 = lecture
> - 👨🏽‍💻 = challenge
> - 📝 = quiz

> [!info]+ The GitHub repository of my solutions for this course can be found here…
> - **C++**: [edmund-leibert/structy-course (github.com)](https://github.com/edmund-leibert/structy-course)

> [!info]+ The course itself can be found here…
> [Structy | Learn Algorithms, Efficiently.](https://www.structy.net/)

﹇<br>
What is the website **Structy**?

#card

<span class="spoiler">Structy</span> is an online platform that teaches data structures and algorithms. It is designed to help one learn the concepts and skills you need to succeed in technical interviews.

⌂
<br>﹈<br>^1693713545630

```dataviewjs
// Generate a nested object from a list of file paths
function buildFileTree(files) {
  const root = {};
  
  for (const file of files) {
    let node = root;
    const parts = file.file.path.split('/');
    
    for (const part of parts) {
      if (!node[part]) {
        node[part] = {};
      }
      node = node[part];
    }

    node['metadata'] = file;
  }
  
  return root;
}

// Generate the table of contents recursively from the file tree
function generateTOC(node, indentLevel = 0) {
  let toc = '';
  const indent = ' '.repeat(indentLevel * 2);

  for (const [key, value] of Object.entries(node)) {
    if (key === 'metadata') {
      const file = value;
      toc += `${indent}- [${file.file.name}](${file.file.link})\n`;
    } else {
      toc += `${indent}- ${key}\n`;
      toc += generateTOC(value, indentLevel + 1);
    }
  }

  return toc;
}


function moveTableOfContentsToTop(inputString) {
    const lines = inputString.trim().split('\n');
    const stack = [];
    let root = [];

    lines.forEach(line => {
        const indent = line.search(/\S|$/);

        while (stack.length > 0 && stack[stack.length - 1].indent >= indent) {
            stack.pop();
        }

        const node = {
            line: line,
            indent: indent,
            children: []
        };

        if (stack.length === 0) {
            root.push(node);
        } else {
            stack[stack.length - 1].children.push(node);
        }

        stack.push(node);
    });

    function sortNodes(nodes) {
        nodes.forEach(node => {
            node.children.sort((a, b) => {
                const hasTableOfContentsA = a.line.includes('📋 Table of Contents');
                const hasTableOfContentsB = b.line.includes('📋 Table of Contents');
                return hasTableOfContentsB - hasTableOfContentsA;
            });

            if (node.children.length > 0) {
                sortNodes(node.children);
            }
        });
    }

    function flattenNodes(nodes, result = []) {
        nodes.forEach(node => {
            result.push(node.line);
            if (node.children.length > 0) {
                flattenNodes(node.children, result);
            }
        });
        return result;
    }

    sortNodes(root);
    return flattenNodes(root).join('\n');
}

// Main program
const current_folder = dv.current().file.folder;
const files = dv.pages(`"${current_folder}"`).values;

// Build file tree
const fileTree = buildFileTree(files);

// Generate Table of Contents
const toc = generateTOC(fileTree);

dv.paragraph(toc);
```

---

> [!info]+ 🔜 Next Note(s):
> - [0. Introduction ▹ 📋 Table of Contents](🔴%20Academics/📚%20Educational%20Resources/🌐%20Structy/0.%20Introduction/0.%20Introduction%20▹%20📋%20Table%20of%20Contents.md)

---
