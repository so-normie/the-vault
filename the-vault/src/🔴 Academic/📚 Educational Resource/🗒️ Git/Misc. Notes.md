---
title: 🗒️ Git
created: 2023-08-04 01:58
updated: 2023-10-31T21:30
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/🗒️-git/misc-notes
  - 🔴-academic/📚-educational-resource/source-format/miscellaneous
  - 🔴-academic/📚-educational-resource/discipline/computer-science/technology/git
  - study-note
cards-deck: 🔴 Academics::📚 Educational Resources::🗒️ Git::Misc. Notes
---

# Misc. Notes

---

> [!ABSTRACT]+
> 

---


> [!INFO]+ 
> **Previous Note(s)**:
> 

---


﹇<br>
How to rename a branch?

#card-reverse 

Sure, here's how you can rename a branch in Git:

1. If you want to rename the current branch, you can use the following command:
```bash
git branch -m new-name
```

2. If you want to rename a different branch, you can use the following command:
```bash
git branch -m old-name new-name
```

3. If you have already pushed the old branch to the remote repository, you need to delete it and push the new branch. Here's how:
```bash
git push origin --delete old-name
git push origin -u new-name
```

⌂
<br>﹈<br>^1693775679543


﹇<br>
What is important to remember when renaming branches locally? 

#card-reverse 

Note that renaming a branch only affects your local repository.

If you have already pushed the branch to a remote repository, you will need to update the remote repository as well. You can do this by deleting the old branch from the remote repository and pushing the new branch:
```bash
# Delete the old branch from the remote repository
git push origin --delete old-name
# Push the new branch to the remote repository
git push origin new-name
```

⌂
<br>﹈<br>^1693775679551



﹇<br>
How to confirm the name of your current remote? 

#card-reverse 

`git remote -v`

⌂
<br>﹈<br>^1693775679558


﹇<br>
How do you rename an existing remote? 

#card-reverse 

`git remote rename [old name] [new name]`

⌂
<br>﹈<br>^1693775679566


﹇<br>
Does renaming an existing remote, also rename the repository name on the hosting provider? (e.g. GitHub, GitLab, etc.)? 

#card 

No, the `git remote rename` command only renames the remote in your local repository. It does not change the name of the repository on GitHub or any other remote hosting service. 

If you want to rename your repository on GitHub, you can do so through the repository settings on the GitHub website.

⌂
<br>﹈<br>^1693775679573


﹇<br>
In `.gitignore`, how do you match any level of subdirectories? 

#card 

- Use the wildcard `**`
- For example…
```git
**/bin/Debug/
**/bin/Release/
```

⌂
<br>﹈<br>^1693775679580


﹇<br>
How to configure git to always **push the current branch and set the remote as upstream** automatically every time you push? 

#card-reverse 

Run the following command…

`git config --global --add --bool push.autoSetupRemote true`

The <span class="spoiler">`--global`</span> flag means this will apply to all git commands on your machine (regardless of which repo it is), you can omit the flag to make it specific to a single repo on your machine.

⌂
<br>﹈<br>^1693775679587


﹇<br>
How do you delete a remote branch in Git? 

#card 

- [You can use the `git push` command with the `-d` flag followed by the name of the remote branch you want to delete](https://www.freecodecamp.org/news/git-delete-branch-how-to-remove-a-local-or-remote-branch/)
- For example…
	`git push origin -d remote_branch_name`

⌂
<br>﹈<br>^1693775679594


﹇<br>
How to set up my git name and git email? 

#card 

You can set up your Git username and email address by using the `git config` command. To set your global commit name and email address, run the `git config` command with the `--global` option:

```bash session
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"
```

[Once done, you can confirm that the information is set by running: `git config --list`](https://linuxize.com/post/how-to-configure-git-username-and-email/) [1](https://linuxize.com/post/how-to-configure-git-username-and-email/).

⌂
<br>﹈<br>^1693775679602


﹇<br>
How do you query a remote repository without having to clone/fetch it first?  

#card-reverse 

❗
- Use the command `git ls-remote`
- <span class="spoiler">[It will list `refs/heads` and `refs/tags` of said remote repository](https://riptutorial.com/git/example/1486/ls-remote)</span>

⌂
<br>﹈<br>^1693775679609



﹇<br>
What command should you run to list all local branches?

#card 

`git branch --list`

⌂
<br>﹈<br>^1693775679616


﹇<br>
What command should you run to list all local _and_ remote branches?

#card 

`git branch --list --all`

⌂
<br>﹈<br>^1693775679623


﹇<br>
In regards to `.gitignore`, how to fix Visual Studio Code still tracking changes of files that should be ignored? 

#card 

There could be a few reasons why VS Code is still recognizing files that are in your `.gitignore` file.

One possibility is that the files were added to your cache.
- [You can try clearing it with the command `git rm --cached .vscode/settings.json`](https://stackoverflow.com/questions/57187693/how-to-fix-vscode-tracking-in-gitignore)

⌂
<br>﹈<br>^1693775679630


﹇<br>
What is the **GitHub Standard Fork & Pull Request Workflow**? 

#card 

1. Create a fork, _usually_ you should only include the “default” (e.g. `master` or `main`) branch from the upstream (i.e., the repository we are forking from).
2. Create a branch off the original “default” and call it .
3. Then submit a pull request when done.

Citation: [GitHub Standard Fork & Pull Request Workflow](https://gist.github.com/augustoproiete/256b560d008d39afc0814a19f41a1d49)

⌂
<br>﹈<br>^1693775679637


﹇<br>
After forking a repository, how should I name my branch for most of my personal projects? 

#card 

❗Simply name you branch, `<repository-name>-forked`.

⌂
<br>﹈<br>^1693775679644


﹇<br>
How do you ignore all folders with the name containing the word “build”? 

#card-reverse 

Add the following line to your `.gitignore` file:
```
**/*build*/
```
- This will ignore any folder with the word “build” in its name, regardless of its location in the repository. 

⌂
<br>﹈<br>^1693775679651


﹇<br>
[What command to see all the branches of a remote repository?](https://git-scm.com/docs/git-ls-remote.html) 

#card-reverse 

❗[`git ls-remote --heads <url>`](https://git-scm.com/docs/git-ls-remote.html)

⌂
<br>﹈<br>^1693775679658


﹇<br>
What is the opposite of git add? 

#card-reverse 

The opposite of `git add` is `git reset`. The `git add` command stages changes to be committed, while the `git reset` command unstages changes. Here’s an example:

```bash
# Stage changes to file.txt
git add file.txt
# Unstage changes to file.txt
git reset file.txt
```

This will unstage the changes to `file.txt` that were previously staged using `git add`. I hope this helps! Let me know if you have any other questions.

⌂
<br>﹈<br>^1693775679665


﹇<br>
What is the difference between `fetch` and `pull`? 

#card-reverse  

<span class="spoiler">`Fetch`</span> and <span class="spoiler">`pull`</span> are both used to download new data from a remote repository. <span class="spoiler">`Fetch`</span> only downloads new data from a remote repository but it doesn’t integrate any of this new data into your working files. <span class="spoiler">`Pull`</span>, on the other hand, not only downloads new data but also directly integrates it into your current working copy files.

⌂
<br>﹈<br>^1693775679673


﹇<br>
Front: What does it mean to integrate new data into your working files? 

#card-reverse 

Back: By “integrate,” it means that <span class="spoiler">`pull`</span> not only downloads new data from the remote repository but also merges it with your local branch. This means that any changes made in the remote repository are applied to your local repository, updating your current working copy files with the latest changes from the remote repository.

⌂
<br>﹈<br>^1693775679680


﹇<br>
What does **unversioned files** mean? 

#card-reverse 

Files that have been added to the project directory but are not tracked by any VCS system.

⌂
<br>﹈<br>^1693775679687


﹇<br>
What does `git fetch` do? 

#card-reverse  

This command will download all the latest changes form the remote repository.

⌂
<br>﹈<br>^1693775679695


﹇<br>
How can I create a new local branch that tracks a remote branch? 

#card-reverse 

```bash
git checkout -b new-branch origin/remote-branch-name
```

⌂
<br>﹈<br>^1693775679702


﹇<br>
So I just cloned a repo, and I having a weird issue. Right now, I am working on brnach `A`, However, I have a branch on my origin called `B`. For some reason, when I call `git fetch`, and then run `git branch -l`, the branch `B` is not being shown as a branch in the list. Only the branch `A` is being shown. What gives? 

#card 

- The `git branch` command, without any parameters, only shows your local branches. [When you fetch, information about your remote branches is updated, but it will only be shown when you use `git branch -r` (only remote branches) or `git branch -a` (all remote and local branches)](https://stackoverflow.com/questions/46597915/git-branches-not-showing-in-git-branch-after-pull-or-fetch-but-git-checkout)[1](https://stackoverflow.com/questions/46597915/git-branches-not-showing-in-git-branch-after-pull-or-fetch-but-git-checkout).
- If you want to see the remote branch `B` after fetching it, you can use the command `git branch -a`. [This will show you a list of all local and remote branches, including the remote branch `B`](https://stackoverflow.com/questions/46597915/git-branches-not-showing-in-git-branch-after-pull-or-fetch-but-git-checkout)[1](https://stackoverflow.com/questions/46597915/git-branches-not-showing-in-git-branch-after-pull-or-fetch-but-git-checkout).
- If you want to checkout the remote branch `B`, you can use the command `git checkout B`. This will create a new local branch called `B` that tracks the remote branch `B`. After checking out the remote branch, you should be able to see it when running the `git branch` command[1](https://stackoverflow.com/questions/46597915/git-branches-not-showing-in-git-branch-after-pull-or-fetch-but-git-checkout).

⌂
<br>﹈<br>^1693775679710


﹇<br>
What is the difference between `git branch -r`, `git branch -a`, and `git branch -l` 

#card 

The commands do the following…
- Print only remote branches
- Print all (both remote and local) branches
- Print only local branches

⌂
<br>﹈<br>^1693775679719


﹇<br>
❗Assume that you forked a repository, made some changes, and screwed somethings up. You want a fresh start by overwriting your forked `master` branch with the original repo. How would you go about doing this? 
#card 
- Via the cli...
	1. cd

⌂
<br>﹈<br>^1693775679729


﹇<br>
What does the following git command do? Assume, that we are currently on the branch master.
```bash
git checkout -b obsidian-sample-plugin-forked
```

#card 

1. Creates a branch from `master` called `obisdian-sample-plugin-forked`
2. Checkouts the branch `obsidian-sample-plugin-forked`

⌂
<br>﹈<br>^1693775679738


﹇<br>
What emoji (i.e., gitmoji) should I use when I am making commit regarding `.gitignore` changes?

#card 

You should follow this format: `🙈 chore[.gitignore]:` 

⌂
<br>﹈<br>^1693775679747


﹇<br>
How do I set to ignore all the contents of a folder no matter where it may be in my project directory?

#card 

`**/build/**`

⌂
<br>﹈<br>^1693775679756


﹇<br>
What does `git saubmodule add` do? 

#card 

1. **Clones the Submodule:** Starts by cloning the repository provided via a URL into the path specified in your current repository
2. **Stages the Changes:** Stages the new submodule.
3. **Commits the Changes:** The changes can be committed as usual with `git commit`.

When other clone or pull your repository, they need to use the `--recursive` flag to ensure that the submodules are properly initialized…

```bash
git clone --recursive [URL-to-your-repository]
```

Submodules are not automatically updated, nor do they track the origin. As such, if the remote repository is updated, you won’t automatically get those changes in your repository; you need to to manually update the submodule to point to a newer commit.

⌂
<br>﹈<br>^1693775679765


﹇<br>
What must I be aware if use the `submodule` command to add a repository to my repository? 

#card 

All future `clone`s and  `pull`s  of my repository must use the `--recursive` tag so that the submodules are properly initialized.

⌂
<br>﹈<br>^1693775679774


﹇<br>
When I use the `submodule` command to add a repository to my own repository, do I have to manually update the submodule? 

#card

Yes.

⌂
<br>﹈<br>^1693775679782


﹇<br>
When I fork a repository, what is upstream and what is origin? 

#card 

When you fork a repository, the original repository is referred to as **upstream**, and the forked repository is referred to as **origin**.

⌂
<br>﹈<br>^1693775679791


﹇<br>
How do you change the `git init` default branch name?

#card 

As of Git 2.28 (released 27th July 2020), you [can now configure the name of the branch created when you init a new repository](https://github.blog/2020-07-27-highlights-from-git-2-28/#introducing-init-defaultbranch):

```powershell
$ git config --global init.defaultBranch main
```

After setting this variable, running `git init` will produce a repository whose initial branch is `main`:

```powershell
$ git init
Initialised empty Git repository in /home/thomas/test-git-repo/.git/
$ git status
On branch main
No commits yet
nothing to commit (create/copy files and use "git add" to track)
```

Release notes: [https://lore.kernel.org/git/xmqq5za8hpir.fsf@gitster.c.googlers.com/](https://lore.kernel.org/git/xmqq5za8hpir.fsf@gitster.c.googlers.com/)

⌂
<br>﹈<br>^1693775679803


﹇<br>
What does `git fetch origin` do?

#card 

`git fetch` is the command that tells Git to fetch changes from a remote repository.

`origin` in `git fetch origin` specifies which remote repository to fetch from. When you clone a repository, Git automatically names the repository you've cloned from as "origin", though you can have multiple remotes with different names.
 
 Now, what does `git fetch` actually do?
   1. **Downloads Objects and Refs**: It contacts the specified remote (in this case, "origin"), and downloads any new changes (objects like commits, trees, blobs) and references (like branches and tags) that you don't have in your local repository.
   2. **Updates Remote-tracking Branches**: When you fetch from a remote, Git will also update what are called "remote-tracking branches". These are references to the state of branches on the remote repositories. They take the format `<remote>/<branch>`. For instance, after running `git fetch origin`, if the origin has a branch named `master`, your local repo will have an updated reference named `origin/master` that tracks the state of the `master` branch on `origin`.
   3. **Does NOT Merge or Modify Working Directory**: Unlike `git pull`, which is essentially a combination of `git fetch` followed by `git merge` (or `git rebase`), `git fetch` on its own does not modify your current working branch or your working directory. It merely fetches the new data and updates the remote-tracking branches.

⌂
<br>﹈<br>^1693775679810


﹇<br>
Why is `git fetch origin` so useful?

#card

It allows you to see changes from the remote repository without integrating them into your local branch immediately. This provides you an opportunity to review changes, decide on a merge or rebase strategy, or even just be aware of what's happening in other parts of the project.

It is a safe operation in that it won't affect your local branches or working directory. So, you can run `git fetch` at any time to get updated information from the remote without worrying about disturbing your current work. 

In the context of the problem you were facing, `git fetch origin` ensures you have the latest state of the `master` branch from `origin` before you perform the reset operation.
⌂
<br>﹈<br>^1693775679818


﹇<br>
Lets consider the case that you have a repo in which you are having merge conflict like so…

```powershell
  edmun on Saturday at 10:25 AM                                                                   0.001s  CPU: 81%  RAM: 28/34GB
  {  home  AppData  Roaming  Microsoft  Windows  Start Menu  Programs  JetBrains Toolbox }  git pull origin
 fatal: refusing to merge unrelated histories
```

How can we simply force our local `master` branch to be reset and just match our `remote/origin/master` branch?

#card 

```bash
git reset --hard origin/master
```

⌂
<br>﹈<br>^1693775679826


﹇<br>
What does the following code do?

```bash
git reset --hard origin/master
```

#card

Forces our local `master` branch to be reset and just match our `remote/origin/master` branch?

⌂
<br>﹈<br>^1693775679834


﹇<br>
Why do we need to cautious about `git reset --hard`?

#card 

Be cautious with `git reset --hard` as it will discard changes in your working directory and index.

If you've made local commits that you want to keep, you'll need to take a different approach (like creating a new branch for those commits or rebasing).

⌂
<br>﹈<br>^1693775679841


﹇<br>
What does `git reset` primarily do?

#card 

`git reset` moves the current branch's pointer to a specified commit.

⌂
<br>﹈<br>^1693775679848


﹇<br>
When using `git reset`, what is the default target commit if none is specified?

#card

`HEAD`, which is the latest commit in the current branch.

⌂
<br>﹈<br>^1693775679855


﹇<br>
What does the `--hard` flag do when used with `git reset`?

#card

It resets both the staging area and the working directory to match the state of the specified commit, discarding all changes in these areas.

⌂
<br>﹈<br>^1693775679863


﹇<br>
 What happens to your branch and working directory when you run `git reset --hard HEAD~1`?
 
#card

 The current branch pointer moves one commit back, discarding the most recent commit, as well as any staged and unstaged changes in the working directory.
 
⌂
<br>﹈<br>^1693775679869


﹇<br>
 Is `git reset --hard` a safe operation?
 
#card

 No, `git reset --hard` is a destructive operation. It discards commits and changes, so always be certain you want to use it and have backups or other branches pointing to desired commits.
 
⌂
<br>﹈<br>^1693775679876


﹇<br>
 What does `git reset --hard origin/master` do?
 
#card

  It sets the current branch and working directory to match the state of the `master` branch on `origin`, discarding any local commits and changes not on `origin/master`.
  
⌂
<br>﹈<br>^1693775679883


﹇<br>
So, even though my local repository is based on my `origin` (hosted on GitHub) being a fork (i.e., the `upstream`) of my original repository, when I run the command `git branch -la`, the output is not listing any `upstream` branches. How can I fix this?

#card 

If you are not seeing an `upstream` remote when you run `git branch -la`, it means that an `upstream` remote has not been added to your local clone. The `upstream` remote typically refers to the original repository that your fork was created from, and it allows you to keep your fork up to date with changes made in the original repository.

You can add an `upstream` remote to your local clone by running the following command:

```
git remote add upstream https://github.com/original-owner/original-repo.git
```

Make sure to replace `original-owner` and `original-repo` with the username of the owner of the original repository and the name of the original repository, respectively.

After adding the `upstream` remote, you can fetch changes from the original repository by running `git fetch upstream`. You can then merge these changes into your local branch by running `git merge upstream/branch-name`, where `branch-name` is the name of the branch that you want to merge changes from.

⌂
<br>﹈<br>^1693775679891


﹇<br>
How can I list all the remote URLs (local and upstream) of my local repository?

#card 

The `git remote -v` command shows the remote URLs for all remotes in your local repository. The `-v` option stands for “verbose” and causes the command to show the remote URLs as well as the remote names.

⌂
<br>﹈<br>^1693775679898


﹇<br>
How can **hard** reset a branch in a forked repository to completely be the same as the corresponding branch in the upstream repository?

#card 

❗ To be filled.

⌂
<br>﹈<br>^1693775679907


﹇<br>
How can I `fetch` from all remotes in one command?

#card 

`git fetch --all`

⌂
<br>﹈<br>^1693775679914


﹇<br>
Is there a difference between `--help` and `-help` for **git**?

#card 

Yes! `--help` will open the browser while `-help` will just open the command line.

⌂
<br>﹈<br>^1693775679921


﹇<br>
How can you force changes into origin when pushing?

#card 

Use the option `--force` with `git push` like so…

`git push --force`

⌂
<br>﹈<br>^1693775679928


﹇<br>
Is `git fetch` the same as `git fetch --all`?

#card 

[The command `git fetch` fetches data only from the default remote, which is usually `origin`](https://stackoverflow.com/questions/36630490/git-fetch-origin-vs-git-fetch-all)[1](https://stackoverflow.com/questions/36630490/git-fetch-origin-vs-git-fetch-all). On the other hand, `git fetch --all` fetches data from all remotes[1](https://stackoverflow.com/questions/36630490/git-fetch-origin-vs-git-fetch-all). So if you have multiple remotes configured for your repository, `git fetch --all` will fetch from all of them[1](https://stackoverflow.com/questions/36630490/git-fetch-origin-vs-git-fetch-all).

[Additionally, if you want to remove any remote-tracking references that no longer exist on the remote before fetching, you can use the `-p` or `--prune` flag with the `git fetch` command](https://stackoverflow.com/questions/59685267/git-fetch-all-vs-git-fetch-p-what-is-the-difference)[2](https://stackoverflow.com/questions/59685267/git-fetch-all-vs-git-fetch-p-what-is-the-difference). [For example, `git fetch --all -p` would fetch from all remotes and prune any references that no longer exist](https://stackoverflow.com/questions/59685267/git-fetch-all-vs-git-fetch-p-what-is-the-difference)[2](https://stackoverflow.com/questions/59685267/git-fetch-all-vs-git-fetch-p-what-is-the-difference).

⌂
<br>﹈<br>^1693775679935


﹇<br>
After I run the command `git submodule init`, the directory that should be containing the submodule is empty. Why is this the case and how can I fix this?

#card 

After running `git submodule init`, the submodule directory may still appear empty. This is because `git submodule init` only initializes the local configuration file for the submodule, but it does not actually fetch the data from the submodule repository.

[To fetch the data from the submodule repository and populate the submodule directory, you need to run `git submodule update --init`](about:blank#)[1](https://stackoverflow.com/questions/11358082/empty-git-submodule-folder-when-repo-cloned).

[If you have already cloned the repository but forgot to use the `--recursive` flag, you can still fetch the submodules by running `git submodule update --init`](about:blank#)[1](https://stackoverflow.com/questions/11358082/empty-git-submodule-folder-when-repo-cloned).
- [If submodules have other submodules, you need to use the recursive option: `git submodule update --init --recursive`](https://stackoverflow.com/questions/11358082/empty-git-submodule-folder-when-repo-cloned)[1](https://stackoverflow.com/questions/11358082/empty-git-submodule-folder-when-repo-cloned). 

⌂
<br>﹈<br>^1693775679942



﹇<br>
What does `git submodule init` do?

#card 

`git submodule init` initializes the local configuration file for the submodule, but it does not actually fetch the data from the submodule repository.

⌂
<br>﹈<br>^1693775679949


﹇<br>
How do I fetch data from a submodule repository and populate the submodule directory? 

#card 

To fetch data from a submodule repository and populate the submodule directory, you need to run `git submodule update --init`.

⌂
<br>﹈<br>^1693775679955


﹇<br>
What if I forgot to use the `--recursive` flag when cloning a repository with submodules? 

#card 

If you have already cloned a repository with submodules but forgot to use the `--recursive` flag, you can still fetch the submodules by running `git submodule update --init`.

⌂
<br>﹈<br>^1693775679962


﹇<br>
How do I fetch data from submodules that have other submodules? 

#card 

If submodules have other submodules, you need to use the recursive option when fetching data: `git submodule update --init --recursive`.

⌂
<br>﹈<br>^1693775679970


﹇<br>
What is the git command to list all submodules present in a repository?

#card-reverse 

`git submodule status`

⌂
<br>﹈<br>^1693775679976


﹇<br>
How can you view the configured submodules in a repository by examining a specific file?

#card

By looking at the `.gitmodules` file in the root directory of the repository.

⌂
<br>﹈<br>^1693775679984


﹇<br>
How do I fetch all the branches from my remote repository named origin?

#card 

Answer

⌂
<br>﹈<br>


---

> [!INFO]+ 
> **Next Note(s)**:
>

---



