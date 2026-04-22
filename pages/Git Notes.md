### Finding Deleted Things
`git rev-list` is an easy way to filter and list commits, *but* it lacks the ability to filter based on commit diff.

`git log` does allow you to filter based on commit diff - see the options under the "DIFF FORMATTING" section of its man page.

`git blame` has a --reverse option that will look forward in time from a start commit to an end commit. Useful if you know a commit where a line existed in a file, but that line is now gone at HEAD - just run:

```
git blame -L <line_number>,<line_number> --reverse <start_commit> <filename>

```


### Find Commits in a Branch That Have Already Been Cherry-Picked to Master
Run this command:

```
git log —-cherry master…<my_branch>

```


Any commits marked with a `-` have equivalent commits in master.

### Rebasing
A dilemma: you want to rebase your feature branch onto master, but you know there will be a merge conflict that will affect multiple commits in your branch.

You could do:

```
git rebase master

```

And suffer through the consecutive merge conflicts.

Or you could do:

```
git merge master

```

And fix all the merge conflicts in one go.

Then, to demonstrate whether it was a clean merge/rebase, and show what manual fixes you had to make to resolve any merge conflicts, you can simply run:

```
git show <merge-commit>  # Can be HEAD

```


### Bisecting
TODO

### Notes on Git Commands

<u>git-log</u>
When formatting the output, it's almost always better to use `--pretty=tformat:<format_string>` instead of `--pretty=format:<format_string>` because the former will always add a trailing newline to the output for the final commit, while the latter will only do so if invoked as a porcelain command.

See [this Stack Overflow answer](https://stackoverflow.com/a/78006567/29767678) and the `git-log` man page for more info.


