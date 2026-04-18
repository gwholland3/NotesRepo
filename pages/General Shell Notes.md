I would like to use this code, but it runs too slow: [https://github.com/lincheney/fzf-tab-completion](https://github.com/lincheney/fzf-tab-completion)

- Sharing shell code:
	- `exec` - does an `exec` system call to replace the current process with one running the new program.
	- `source` - runs the lines from the referenced shell script within the current process's shell context.
	- Just calling the script outright - forks a child process that runs the script and waits for it to exit.