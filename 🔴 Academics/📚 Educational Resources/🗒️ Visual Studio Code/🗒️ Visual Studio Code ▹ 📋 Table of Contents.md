---
title: 🗒️ Visual Studio Code ▹ 📋 Table of Contents
created: 2023-09-25 16:03
updated: 2023-09-28 14:16
authors:
  - Edmund Leibert III
tags:
  - 🔴-academics/📚-educational-resources/name/🗒️-visual-studio-code
  - 🔴-academics/📚-educational-resources/source-format/internet/website
  - 🔴-academics/📚-educational-resources/discipline/computer-science/technology/visual-studio-code
  - 🔴-academics/📚-educational-resources/name/🗒️-visual-studio-code/🔖-bookmark/🗒️-visual-studio-code-▹-📋-table-of-contents
  - study-note
cards-deck: 🔴 Academics::📚 Educational Resources::🗒️ Visual Studio Code::🗒️ Visual Studio Code ▹ 📋 Table of Contents
---

# 🗒️ Visual Studio Code ▹ 📋 Table of Contents

---

> [!Abstract]+ Abstract
> 

---

 > [!Info]+ 🕸️ All Mention(s): 
 > - 

---

 > [!Info]+ 🔙️ Previous Note(s): 
 > - 
 
---

```dataviewjs
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
    const content = line;

    // Add the parsed entry to the list
    parsedList.push({
      content: content,
      indentLevel: indentLevel,
    });
  }

  return parsedList;
}

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

    node['file_metadata'] = file;
  }
  
  return root;
}

// Generate the table of contents recursively from the file tree
function generateTOC(node, indentLevel = 0) {
  let toc = '';
  const indent = ' '.repeat(indentLevel * 2);
  
  for (const [key, value] of Object.entries(node)) {
	console.log("key: ");
	console.log(key);
    console.log("value: ");
    console.log(value);
    if (key === 'file_metadata') {
      const file = value;
      toc += `${indent}- ${file.file.link}\n`;
    } 
    else {
	  if(Object.entries(value)[0][0] === 'file_metadata') {
		  console.log("Current level is a file");
		  const file = Object.entries(value)[0][1];
		  toc += `${indent}- ${file.file.link}\n`;
	  }
	  else {
		  console.log("Current level is NOT file");
		  toc += `${indent}- ${key}\n`;
		  toc += generateTOC(value, indentLevel + 1);
	  }
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
console.log("fileTree: ");
console.log(fileTree);

// Generate Table of Contents
let toc = generateTOC(fileTree);

// Remove the first lines of the TOC that are not necessary
const current_folder_length = current_folder.split("/").length;
toc = toc.split('\n').slice(current_folder_length - 1).join('\n');

// Remove the first two spaces of each line
toc = toc.replace(/^  /gm, '');

let toc_sorted = moveTableOfContentsToTop(toc);

dv.el("b","Table of Contents");
dv.paragraph(toc_sorted);
console.log(toc_sorted);
```


---

> [!Info]+ 🔜 Next Note(s):
> - 

---

