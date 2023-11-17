---
title: 🗒️ GitHub CLI
created: 2023-08-04 01:58
authors:
  - Edmund Leibert III
tags:
  - 🔴-academic/📚-educational-resource/name/github-cli
  - 🔴-academic/📚-educational-resource/discipline/computer-science/technology/github-cli
  - 🔴-academic/📚-educational-resource/discipline/computer-science/technology/git
  - study-note
cards-deck: Default::Computer Science
updated: 2023-11-02T12:50
---


How to rename a repository using the GitHub CLI? 
#card-reverse 
```bash
gh repo rename <new-repo-name>
```
Make sure that you are in the current repository.
^1683782454868

How to update the remote URL on your local machine? 
#card-reverse 
```bash
gh repo sync --remote origin --prompt
```
^1683782454874


{`gh repo sync`} is a command available in the GitHub CLI (gh) that synchronizes a local repository with its corresponding remote repository. This command is particularly useful when you want to update your local repository with the latest changes from the remote repository or when you want to push local changes to the remote repository.
^1683782454879

What exactly does the the command `gh repo sync` do? 
#card-reverse 
1. Fetches the latest changes from the remote repository.
2. Merges or rebases the fetched changes into the current branch of your local repository.
3. Pushes the local changes to the remote repository, if there are any.
^1683782656899

What strategy does `gh repo sync` use? 
#card 
By default, `gh repo sync` uses the merge strategy.
^1683782656905

Can `gh repo sync` use other strategies than its default? 
#card 
Yes, you can also use the rebase strategy by passing the `--rebase` flag.
^1683782656910

What is the difference between **merge** and **rebase**? 
#card 
**Merge** and **rebase** are two ways to integrate changes from one branch into another branch in Git. Both commands are designed to integrate changes from one branch into another branch, but they do it in very different ways.
- When you **merge** one branch into another, a new merge commit is created that ties together the histories of both branches. This is a non-destructive operation and the existing branches are not changed in any way.
- On the other hand, when you **rebase** a branch onto another branch, it moves the entire branch to begin on the tip of the other branch, effectively incorporating all of the new commits. Instead of using a merge commit, rebasing re-writes the project history by creating brand new commits for each commit in the original branch.
^1683783502776


What is a benefit of using the rebase strategy? 
#card 
The major benefit of rebasing is that you get a much cleaner project history. It eliminates the unnecessary merge commits required by git merge and results in a perfectly linear project history.
^1683783502781


What is a downside of using rebase? 
#card 
- One downside of using `rebase` is that it can make it difficult to track how and when commits were merged on the target branch. This is because `rebase` re-writes the project history by creating brand new commits for each commit in the original branch[1](https://bing.com/search?q=downside+of+using+rebase).
- Another potential issue with `rebase` is that it can make it difficult to resolve conflicts. When you encounter conflicts during a `rebase`, Git will pause on the conflicting commit, allowing you to fix the conflict before proceeding. Solving conflicts in the middle of rebasing a long chain of commits can be confusing and hard to get right[2](https://medium.com/@fredrikmorken/why-you-should-stop-using-git-rebase-5552bee4fed1)
^1683783569825

If I have GitHub CLI installed, is there an easier way than using `git` to sync the branches of my forked repository with `upstream`?
#card 
Yes, if you have the GitHub CLI installed, you can use it to sync your forked repository with the upstream repository. Here’s how you can do it:
1. Open a command line terminal and navigate to your local clone of the forked repository.
2. Run the following command to sync your fork with the upstream repository:
```
gh repo sync owner/cli-fork -b BRANCH_NAME
```
Make sure to replace `owner` with your GitHub username, `cli-fork` with the name of your forked repository, and `BRANCH_NAME` with the name of the branch that you want to sync.
If there are conflicts between your fork and the upstream repository, the GitHub CLI will not be able to sync them. In this case, you can use the `--force` flag to overwrite the destination branch in your fork with the changes from the upstream repository:
```
gh repo sync owner/cli-fork -b BRANCH_NAME --force
```
^1691964412774

Does `gh repo sync` sync all branches?
#card 
No, it just syncs the **current** branch.
^1691976968575

Using the **GitHub CLI**, is it possible to sync the `remote/origin` `main` branch with the `remote/upstream` `main` branch?
#card 
Yes, you can use the GitHub CLI to sync the `main` branch of your forked repository (the `origin` remote) with the `main` branch of the upstream repository (the `upstream` remote). Here’s how you can do it:
1. Open a command line terminal and navigate to your local clone of the forked repository.
2. Make sure that you have added the upstream repository as a remote in your local clone by running the following command:
```bash
git remote add upstream https://github.com/original-owner/original-repo.git
```
Make sure to replace `original-owner` and `original-repo` with the username of the owner of the original repository and the name of the original repository, respectively.
3. Run the following command to sync your fork’s `main` branch with the upstream repository’s `main` branch:
```bash
gh repo sync owner/cli-fork -b main
```
Make sure to replace `owner` with your GitHub username and `cli-fork` with the name of your forked repository.
After running this command, your fork’s `main` branch should be up to date with the upstream repository’s `main` branch.
^1691977301752

---

## 🔜 Next Note(s):

---



