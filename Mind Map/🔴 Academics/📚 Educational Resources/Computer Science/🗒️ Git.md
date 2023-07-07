---
author: 
publisher: 
published: 
tags: [computer-science/technology/git, educational-resource/git, study-note] 
cards-deck: Default::Computer Science
---

# Git

How to rename a branch? #card-reverse 
```bash
# Rename the current branch to new-name
git branch -m new-name
# Rename the branch old-name to new-name
git branch -m old-name new-name
```
^1684392558428

What is important to remember when renaming branches locally? #card-reverse 
- Note that renaming a branch only affects your local repository.
- If you have already pushed the branch to a remote repository, you will need to update the remote repository as well. You can do this by deleting the old branch from the remote repository and pushing the new branch:
```bash
# Delete the old branch from the remote repository
git push origin --delete old-name
# Push the new branch to the remote repository
git push origin new-name
```
^1684392558436

How to confirm the name of your current remote? #card-reverse 
`git remote -v`
^1684392558449

How to rename the you can change it by running this command #card-reverse 
`git remote rename [old name] [new name]`
^1684392558454

In `.gitignore`, how do you match any level of subdirectories? #card 
- Use the wildcard `**`
- For example…
	```git
	**/bin/Debug/
	**/bin/Release/
	```
^1684392558460

How to configure git to always **push the current branch and set the remote as upstream** automatically every time you push? #card-reverse 
Run the following command…
`git config --global --add --bool push.autoSetupRemote true`
- The <span class="spoiler">`--global`</span> flag means this will apply to all git commands on your machine (regardless of which repo it is), you can omit the flag to make it specific to a single repo on your machine.
^1684392558465


How do you delete a remote branch in Git? #card 
- [You can use the `git push` command with the `-d` flag followed by the name of the remote branch you want to delete](https://www.freecodecamp.org/news/git-delete-branch-how-to-remove-a-local-or-remote-branch/)
- For example…
	`git push origin -d remote_branch_name`
^1684392558470

How to set up my git name and git email? #card 
You can set up your Git username and email address by using the `git config` command. To set your global commit name and email address, run the `git config` command with the `--global` option:
```bash session
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
```
[Once done, you can confirm that the information is set by running: `git config --list`](https://linuxize.com/post/how-to-configure-git-username-and-email/) [1](https://linuxize.com/post/how-to-configure-git-username-and-email/).


How do query a remote repository without having to clone/fetch it first?  #card-reverse 
- Use the command `git ls-remote`
- <span class="spoiler">[It will list `refs/heads` and `refs/tags` of said remote repository](https://riptutorial.com/git/example/1486/ls-remote)</span>
^1684392558475

In regards to `.gitignore`, how to fix Visual Studio Code still tracking changes of files that should be ignored? #card 
- There could be a few reasons why VS Code is still recognizing files that are in your `.gitignore` file.
- One possibility is that the files were added to your cache.
	- [You can try clearing it with the command `git rm --cached .vscode/settings.json`](https://stackoverflow.com/questions/57187693/how-to-fix-vscode-tracking-in-gitignore)
^1684392558480

What is the **GitHub Standard Fork & Pull Request Workflow**? #card 
1. Create a fork.
2. Create a branch for my own feature.
3. Then submit a pull request when done.
Citation: [GitHub Standard Fork & Pull Request Workflow](https://gist.github.com/augustoproiete/256b560d008d39afc0814a19f41a1d49)
^1684392558485

After forking a repository, how should I name my branch for most of my personal projects? #card 
Simply name you branch, `<repository-name>-extended`.
^1684392558491

![[🤖 ChatGPT, Bing Chat, etc. Warning]]

How do you ignore all folders with the name containing the word “build”? #card-reverse 
Add the following line to your `.gitignore` file:
```
**/*build*/
```
- This will ignore any folder with the word “build” in its name, regardless of its location in the repository. 
^1684392558496

[What command to see all the branches of a remote repository?](https://git-scm.com/docs/git-ls-remote.html) #card-reverse 
[`git ls-remote --heads <url>`](https://git-scm.com/docs/git-ls-remote.html)
^1684392558501

What is the opposite of git add? #card-reverse 
The opposite of `git add` is `git reset`. The `git add` command stages changes to be committed, while the `git reset` command unstages changes. Here’s an example:
```bash
# Stage changes to file.txt
git add file.txt
# Unstage changes to file.txt
git reset file.txt
```
This will unstage the changes to `file.txt` that were previously staged using `git add`. I hope this helps! Let me know if you have any other questions.
^1684392558506

What is the difference between `fetch` and `pull`? #card-reverse  
<span class="spoiler">`Fetch`</span> and <span class="spoiler">`pull`</span> are both used to download new data from a remote repository. <span class="spoiler">`Fetch`</span> only downloads new data from a remote repository but it doesn’t integrate any of this new data into your working files. <span class="spoiler">`Pull`</span>, on the other hand, not only downloads new data but also directly integrates it into your current working copy files.
^1684392558511

Front: What does it mean to integrate new data into your working files? #card-reverse 
Back: By “integrate,” it means that <span class="spoiler">`pull`</span> not only downloads new data from the remote repository but also merges it with your local branch. This means that any changes made in the remote repository are applied to your local repository, updating your current working copy files with the latest changes from the remote repository.
^1684392558516

What does **unversioned files** mean? #card-reverse 
Files that have been added to the project directory but are not tracked by any VCS system.
^1684392558521
