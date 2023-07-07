---
author: 
publisher: 
published: 
tags: [computer-science/technology/github-cli, educational-resource/github-cli, study-note] 
cards-deck: Default::Computer Science
---

# GitHub CLI

The CLI in GitHub CLI stands for {Command-line Interface}.
^1683782454857

How to rename a repository using the GitHub CLI? #card-reverse 
```bash
gh repo rename <new-repo-name>
```
Make sure that you are in the current repository.
^1683782454868

How to update the remote URL on your local machine? #card-reverse 
```bash
gh repo sync --remote origin --prompt
```
^1683782454874


{`gh repo sync`} is a command available in the GitHub CLI (gh) that synchronizes a local repository with its corresponding remote repository. This command is particularly useful when you want to update your local repository with the latest changes from the remote repository or when you want to push local changes to the remote repository.
^1683782454879

What exactly does the the command `gh repo sync` do? #card-reverse 
1. Fetches the latest changes from the remote repository.
2. Merges or rebases the fetched changes into the current branch of your local repository.
3. Pushes the local changes to the remote repository, if there are any.
^1683782656899

What strategy does `gh repo sync` use? #card 
By default, `gh repo sync` uses the merge strategy.
^1683782656905

Can `gh repo sync` use other strategies than its default? #card 
Yes, you can also use the rebase strategy by passing the `--rebase` flag.
^1683782656910

What is the difference between **merge** and **rebase**? #card 
**Merge** and **rebase** are two ways to integrate changes from one branch into another branch in Git. Both commands are designed to integrate changes from one branch into another branch, but they do it in very different ways.
- When you **merge** one branch into another, a new merge commit is created that ties together the histories of both branches. This is a non-destructive operation and the existing branches are not changed in any way.
- On the other hand, when you **rebase** a branch onto another branch, it moves the entire branch to begin on the tip of the other branch, effectively incorporating all of the new commits. Instead of using a merge commit, rebasing re-writes the project history by creating brand new commits for each commit in the original branch.
^1683783502776


What is a benefit of using the rebase strategy? #card 
The major benefit of rebasing is that you get a much cleaner project history. It eliminates the unnecessary merge commits required by git merge and results in a perfectly linear project history.
^1683783502781


What is a downside of using rebase? #card 
- One downside of using `rebase` is that it can make it difficult to track how and when commits were merged on the target branch. This is because `rebase` re-writes the project history by creating brand new commits for each commit in the original branch[1](https://bing.com/search?q=downside+of+using+rebase).
- Another potential issue with `rebase` is that it can make it difficult to resolve conflicts. When you encounter conflicts during a `rebase`, Git will pause on the conflicting commit, allowing you to fix the conflict before proceeding. Solving conflicts in the middle of rebasing a long chain of commits can be confusing and hard to get right[2](https://medium.com/@fredrikmorken/why-you-should-stop-using-git-rebase-5552bee4fed1)
^1683783569825
