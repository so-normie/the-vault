---
author: 
publisher: 
published: 
tags: [computer-science/technology/obsidian, educational-resource/obsidian, study-note] 
cards-deck: Default::Computer Science
---

When building a plugin, what command to run to install dependencies? #card-reverse 
`npm i`

When building a plugin, what command to run to start compilation in watch mode? #card-reverse  
`npm run dev`

How to manually install a plugin? #card-reverse  
Copy over `main.js`, `styles.css`, `manifest.json` to your vault `VaultFolder/.obsidian/plugins/your-plugin-id/`

How to improve the code quality of a plugin with eslint? #card 
- [ESLint](https://eslint.org/) is a tool that analyzes your code to quickly find problems. You can run ESLint against your plugin to find common bugs and ways to improve your code.
- To use eslint with this project, make sure to install eslint from terminal:
	- `npm install -g eslint`
- To use eslint to analyze this project use this command:
    - `eslint main.ts`
    - eslint will then create a report with suggestions for code improvement by file and line number.
- If your source code is in a folder, such as `src`, you can use eslint with this command to analyze all files in that folder:
    - `eslint .\src\`

