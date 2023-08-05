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
^1688848327414


What is important to remember when renaming branches locally? #card-reverse 
- Note that renaming a branch only affects your local repository.
- If you have already pushed the branch to a remote repository, you will need to update the remote repository as well. You can do this by deleting the old branch from the remote repository and pushing the new branch:
```bash
# Delete the old branch from the remote repository
git push origin --delete old-name
# Push the new branch to the remote repository
git push origin new-name
```
^1688848327419

How to confirm the name of your current remote? #card-reverse 
`git remote -v`
^1688848327423


How do you rename an existing remote? #card-reverse 
`git remote rename [old name] [new name]`
^1688848327427


Does renaming an existing remote, also rename the repository name on the hosting provider? (e.g. GitHub, GitLab, etc.)? #card 
No, the `git remote rename` command only renames the remote in your local repository. It does not change the name of the repository on GitHub or any other remote hosting service. If you want to rename your repository on GitHub, you can do so through the repository settings on the GitHub website.
^1688848409042


In `.gitignore`, how do you match any level of subdirectories? #card 
- Use the wildcard `**`
- For example…
	```git
	**/bin/Debug/
	**/bin/Release/
	```
^1688848327432


How to configure git to always **push the current branch and set the remote as upstream** automatically every time you push? #card-reverse 
Run the following command…
`git config --global --add --bool push.autoSetupRemote true`
- The <span class="spoiler">`--global`</span> flag means this will apply to all git commands on your machine (regardless of which repo it is), you can omit the flag to make it specific to a single repo on your machine.
^1688869286745


How do you delete a remote branch in Git? #card 
- [You can use the `git push` command with the `-d` flag followed by the name of the remote branch you want to delete](https://www.freecodecamp.org/news/git-delete-branch-how-to-remove-a-local-or-remote-branch/)
- For example…
	`git push origin -d remote_branch_name`
^1688848327440


How to set up my git name and git email? #card 
You can set up your Git username and email address by using the `git config` command. To set your global commit name and email address, run the `git config` command with the `--global` option:
```bash session
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
```
[Once done, you can confirm that the information is set by running: `git config --list`](https://linuxize.com/post/how-to-configure-git-username-and-email/) [1](https://linuxize.com/post/how-to-configure-git-username-and-email/).
^1688869286752


How do you query a remote repository without having to clone/fetch it first?  #card-reverse 
- Use the command `git ls-remote`
- <span class="spoiler">[It will list `refs/heads` and `refs/tags` of said remote repository](https://riptutorial.com/git/example/1486/ls-remote)</span>
^1688848327446


In regards to `.gitignore`, how to fix Visual Studio Code still tracking changes of files that should be ignored? #card 
- There could be a few reasons why VS Code is still recognizing files that are in your `.gitignore` file.
- One possibility is that the files were added to your cache.
	- [You can try clearing it with the command `git rm --cached .vscode/settings.json`](https://stackoverflow.com/questions/57187693/how-to-fix-vscode-tracking-in-gitignore)
 
What is the **GitHub Standard Fork & Pull Request Workflow**? #card 
1. Create a fork.
2. Create a branch for my own feature.
3. Then submit a pull request when done.
Citation: [GitHub Standard Fork & Pull Request Workflow](https://gist.github.com/augustoproiete/256b560d008d39afc0814a19f41a1d49)
^1688848327455


After forking a repository, how should I name my branch for most of my personal projects? #card 
Simply name you branch, `<repository-name>-extended`.
^1688848327459


![[🤖 ChatGPT, Bing Chat, etc. Warning]]

How do you ignore all folders with the name containing the word “build”? #card-reverse 
Add the following line to your `.gitignore` file:
```
**/*build*/
```
- This will ignore any folder with the word “build” in its name, regardless of its location in the repository. 
^1688848327463


[What command to see all the branches of a remote repository?](https://git-scm.com/docs/git-ls-remote.html) #card-reverse 
[`git ls-remote --heads <url>`](https://git-scm.com/docs/git-ls-remote.html)
^1688848327468


What is the opposite of git add? #card-reverse 
The opposite of `git add` is `git reset`. The `git add` command stages changes to be committed, while the `git reset` command unstages changes. Here’s an example:
```bash
# Stage changes to file.txt
git add file.txt
# Unstage changes to file.txt
git reset file.txt
```
This will unstage the changes to `file.txt` that were previously staged using `git add`. I hope this helps! Let me know if you have any other questions.
^1688848327474


What is the difference between `fetch` and `pull`? #card-reverse  
<span class="spoiler">`Fetch`</span> and <span class="spoiler">`pull`</span> are both used to download new data from a remote repository. <span class="spoiler">`Fetch`</span> only downloads new data from a remote repository but it doesn’t integrate any of this new data into your working files. <span class="spoiler">`Pull`</span>, on the other hand, not only downloads new data but also directly integrates it into your current working copy files.
^1684392558511

Front: What does it mean to integrate new data into your working files? #card-reverse 
Back: By “integrate,” it means that <span class="spoiler">`pull`</span> not only downloads new data from the remote repository but also merges it with your local branch. This means that any changes made in the remote repository are applied to your local repository, updating your current working copy files with the latest changes from the remote repository.
^1684392558516

What does **unversioned files** mean? #card-reverse 
Files that have been added to the project directory but are not tracked by any VCS system.
^1684392558521

What does `git fetch` do? #card-reverse  
This command will download all the latest changes form the remote repository.
^1689813728678

How can I create a new local branch that tracks a remote branch? #card-reverse 
```bash
git checkout -b new-branch origin/remote-branch-name
```
^1689813728686

So I just cloned a repo, and I having a weird issue. Right now, I am working on brnach `A`, However, I have a branch on my origin called `B`. For some reason, when I call `git fetch`, and then run `git branch -l`, the branch `B` is not being shown as a branch in the list. Only the branch `A` is being shown. What gives? #card 
- The `git branch` command, without any parameters, only shows your local branches. [When you fetch, information about your remote branches is updated, but it will only be shown when you use `git branch -r` (only remote branches) or `git branch -a` (all remote and local branches)](https://stackoverflow.com/questions/46597915/git-branches-not-showing-in-git-branch-after-pull-or-fetch-but-git-checkout)[1](https://stackoverflow.com/questions/46597915/git-branches-not-showing-in-git-branch-after-pull-or-fetch-but-git-checkout).
- If you want to see the remote branch `B` after fetching it, you can use the command `git branch -a`. [This will show you a list of all local and remote branches, including the remote branch `B`](https://stackoverflow.com/questions/46597915/git-branches-not-showing-in-git-branch-after-pull-or-fetch-but-git-checkout)[1](https://stackoverflow.com/questions/46597915/git-branches-not-showing-in-git-branch-after-pull-or-fetch-but-git-checkout).
- If you want to checkout the remote branch `B`, you can use the command `git checkout B`. This will create a new local branch called `B` that tracks the remote branch `B`. After checking out the remote branch, you should be able to see it when running the `git branch` command[1](https://stackoverflow.com/questions/46597915/git-branches-not-showing-in-git-branch-after-pull-or-fetch-but-git-checkout).
^1689813728692


What is the difference between `git branch -r`, `git branch -a`, and `git branch -l` #card 
The commands do the following…
- Print only remote branches
- Print all (both remote and local) branches
- Print only local branches
^1689813728698

❗Assume that you forked a repository, made some changes, and screwed somethings up. You want a fresh start by overwriting your forked `master` branch with the original repo. How would you go about doing this? #card 
- Via the cli...
	1. cd
^1689813728704

What does the following git command do? Assume, that we are currently on the branch master.
```bash
git checkout -b obsidian-sample-plugin-forked
```
#card 
1. Creates a branch from `master` called `obisdian-sample-plugin-forked`
2. Checkouts the branch `obsidian-sample-plugin-forked`
^1689813728710

What emoji (i.e., gitmoji) should I use when I am making commit regarding `.gitignore` changes? #card 
You should follow this format: `🙈 chore[.gitignore]:` 
^1689813728716

How do I set to ignore all the contents of a folder no matter where it may be in my project directory? #card 
`**/build/**`
^1690890143379

What does `git saubmodule add` do? #card 
1. **Clones the Submodule:** Starts by cloning the repository provided via a URL into the path specified in your current repository
2. **Stages the Changes:** Stages the new submodule.
3. **Commits the Changes:** The changes can be committed as usual with `git commit`.
When other clone or pull your repository, they need to use the `--recursive` flag to ensure that the submodules are properly initialized…
```bash
git clone --recursive [URL-to-your-repository]
```
Submodules are not automatically updated, nor do they track the origin. As such, if the remote repositroy is updated, you won’t automatically get those changes in your repository; you need to to manually update the submodule to point to a newer commit.
^1690890143387

What must I be aware if use the `submodule` command to add a repository to my repository? #card 
All future `clone`s and  `pull`s  of my repository must use the `--recursive` tag so that the submodules are properly initialized.
^1690890143394

When I use the `submodule` command to add a repository to my own repository, do I have to manually update the submodule? #card 
Yes.
^1690890143401

When I fork a repository, what is upstream and what is origin? #card 
When you fork a repository, the original repository is referred to as **upstream**, and the forked repository is referred to as **origin**.
^1691060842722




