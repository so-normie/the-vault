---
title: C++ reference ▹ Table of Contents
created: 2023-09-30 15:42
updated: 2023-10-21T12:38
authors:
  - Edmund Leibert III
tags:
  - 🔴-academics/📚-educational-resources/name/🌐-cpp-reference
  - 🔴-academics/📚-educational-resources/format/internet/website
  - 🔴-academics/📚-educational-resources/discipline/computer-science/programming-language/cpp
  - 🔴-academics/📚-educational-resources/name/leetcode/🔖-bookmark/🌐-c++-reference-▹-📋-table-of-contents
  - study-note
cards-deck: 🔴 Academics::📚 Educational Resources::C++ reference::C++ reference ▹ Table of Contents
---

# C++ reference ▹ Table of Contents

---

> [!Abstract]+ Abstract
> 

---

 > [!Info]+ 🔙️ Previous Note(s): 
 > - 
 
---

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
      toc += `${indent}- ${file.file.link}\n`;
    } else {
      // Check if the current node is a leaf node
      if (value.hasOwnProperty('metadata')) {
        const file = value.metadata;
        toc += `${indent}- ${file.file.link}\n`;
      } else {
        toc += `${indent}- ${key}\n`;
        toc += generateTOC(value, indentLevel + 1);
      }
    }
  }

  return toc;
}


function parseTOC(tocParagraph) {
  // Split the paragraph by lines
  const lines = tocParagraph.split('\n');

  // Initialize an empty list to store the parsed entries
  const parsedList = [];

  // Loop through each line to parse it
  for (const line of lines) {
    // Ignore empty lines
    if (line.trim() === '') continue;

    // Calculate the indent level based on leading spaces (assuming 2 spaces per level)
    const indentLevel = line.search(/\S|$/) / 2;

    // Extract the actual content by trimming the leading spaces
    const content = line.trim();

    // Add the parsed entry to the list
    parsedList.push({
      content: content,
      indentLevel: indentLevel,
    });
  }

  return parsedList;
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


function trimTOC(toc_sorted, current_folder) {
  // Split the TOC into lines
  const lines = toc.split("\n");

  // Calculate how many lines to remove based on the length of current_folder
  const numLinesToRemove = current_folder.split("/").length - 1;

  // Remove the first numLinesToRemove lines
  const newLines = lines.slice(numLinesToRemove);

  // Calculate how many spaces to remove based on numLinesToRemove
  const numSpacesToRemove = (numLinesToRemove - 1) * 2;

  // Remove numSpacesToRemove spaces from the beginning of each line
  const trimmedLines = newLines.map(line => line.slice(numSpacesToRemove));

  // Join the lines back into a single string
  const trimmedTOC = trimmedLines.join("\n");

  return trimmedTOC;
}


// Main program
const current_folder = dv.current().file.folder;
console.log(current_folder);
const files = dv.pages(`"${current_folder}"`).values;

// Build file tree
const fileTree = buildFileTree(files);

// Generate Table of Contents
const toc = generateTOC(fileTree);

// Sort Table of Contents
const toc_sorted = moveTableOfContentsToTop(toc);

// trimmedTOC
const trimmedTOC = trimTOC(toc_sorted, current_folder);

dv.paragraph(trimmedTOC);
```


---

> [!Info]+ 🔜 Next Note(s):
> - 

---
