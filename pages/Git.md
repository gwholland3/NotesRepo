- [Git](https://git-scm.com/) is an open-source [version control](https://en.wikipedia.org/wiki/Version_control) system.
	- Official documentation is [here](https://git-scm.com/docs).
- # Configuration
	- Documentation: [link](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)
	- Most Git configuration is managed using the [`git-config`](https://git-scm.com/docs/git-config) command.
	- Git looks for configuration in the following places, and config lower in the list (more specific) overrides config higher in the list (more global):
		- `<git_install_location>/etc/gitconfig`: config applicable to all users and repos on the machine.
			- Also known as the "system" config.
			- For example, `/usr/local/etc/gitconfig`.
		- `$XDG_CONFIG_HOME/git/config`: config applicable to the current user only and all repos on the machine.
			- Also known as the "global" config.
			- For example, `~/.config/git/config`.
		- `~/.gitconfig`: config applicable to the current user only and all repos on the machine.
			- Also known as the "global" config, takes precedence over the XDG version.
		- `$GIT_DIR/config`: config applicable to the current repository only.
			- Also known as the "local" config.
			- For example, `.git/config`.
		- `$GIT_DIR/config.worktree`: config applicable to a single worktree only.
			- For example, `.git/worktrees/my_feature/config.worktree` (the main worktree usually uses `.git/config.worktree`).
			- Only consulted if `extensions.worktreeConfig` is set.
		- `$GIT_CONFIG_*` environment variables: config applicable to the current command only.
			- For example:
			  ```
			  export GIT_CONFIG_COUNT=2
			  export GIT_CONFIG_KEY_0="user.name"
			  export GIT_CONFIG_VALUE_0="Jane Doe"
			  export GIT_CONFIG_KEY_1="user.email"
			  export GIT_CONFIG_VALUE_1="jane@example.com"
			  ```
		- `-c` CLI arguments: config applicable to the current command only.
			- For example, `git -c user.name="Jane Doe" commit -am "my commit"`.
	- There are also several environment variables that override some of the above paths:
		- `GIT_CONFIG_SYSTEM`: override path to the system config.
		- `GIT_CONFIG_GLOBAL`: override path to the global config.
		- `GIT_CONFIG_NOSYSTEM`: if set, skip the system config.
	- Git config files can also use `include` and `includeIf` directives to include other arbitrary config files.
	- ## Inspecting
		- List all currently-active config options explicitly set by config files, and for each one, show which file it came from and what scope it applies to:
		  ```
		  git config --list --show-origin --show-scope
		  ```
		- Dump this info for a single option:
		  ```
		  git config --show-origin --show-scope --get <option>
		  ```
- # Remotes
	- Documentation: [link](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes)
	- Remotes are a tough thing to wrap my head around. There is not as much coupling between a local repository and a remote repository as I originally thought.
	- For example, Git does not attempt to keep track of whether a particular file "came from" a specific remote. Files only need to be compared between the local repository and a remote repository when pushing or pulling, based on the file path.
	- There is nothing special about a remote repository, either. It is "just another Git repository", only it typically lives on a remote server somewhere, rather than your own machine. When you "add a remote" to a repository, you are simply storing a pointer to that other repository and giving it a name to reference it with (usually `origin`).
	- You can even take a local repository and add a remote that is another "local" repository on your same machine.
- # Under The Hood
	- Interesting article: https://cursor.com/blog/git-at-any-scale
- # Miscellaneous
	- ### Finding Deleted Things
		- `git rev-list` is an easy way to filter and list commits, *but* it lacks the ability to filter based on commit diff.
		- `git log` does allow you to filter based on commit diff - see the options under the "DIFF FORMATTING" section of its man page.
		- `git blame` has a --reverse option that will look forward in time from a start commit to an end commit. Useful if you know a commit where a line existed in a file, but that line is now gone at HEAD - just run:
		  ```
		  git blame -L <line_number>,<line_number> --reverse <start_commit> <filename>
		  ```
	- ### Find Commits in a Branch That Have Already Been Cherry-Picked to Master
		- Run this command:
		  ```
		  git log —-cherry master…<my_branch>
		  ```
			- Any commits marked with a `-` have equivalent commits in master.
	- ### Rebasing
		- A dilemma: you want to rebase your feature branch onto master, but you know there will be a merge conflict that will affect multiple commits in your branch.
		- You could do:
		  ```
		  git rebase master
		  ```
		  And suffer through the consecutive merge conflicts.
		- Or you could do:
		  ```
		  git merge master
		  ```
		  And fix all the merge conflicts in one go.
		- Then, to demonstrate whether it was a clean merge/rebase, and show what manual fixes you had to make to resolve any merge conflicts, you can simply run:
		  ```
		  git show <merge-commit>  # Can be HEAD
		  ```
	- ### Bisecting
		- TODO
- ### Notes on Git Commands
	- <u>git-log</u>
		- When formatting the output, it's almost always better to use `--pretty=tformat:<format_string>` instead of `--pretty=format:<format_string>` because the former will always add a trailing newline to the output for the final commit, while the latter will only do so if invoked as a porcelain command.
		- See [this Stack Overflow answer](https://stackoverflow.com/a/78006567/29767678) and the `git-log` man page for more info.