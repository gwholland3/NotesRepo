[Git aliases](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases) are defined in a `.gitconfig` file. A very simple example is below:

```
[alias]
	c = commit
```

More detailed documentation on how aliases are defined in a Git config file can be found in the [docs](https://git-scm.com/docs/git-config#Documentation/git-config.txt-alias). That same page also has detailed information on the [general syntax](https://git-scm.com/docs/git-config#_syntax) of Git config files.

Finally, note that you can find the Git source code [here](https://github.com/git/git).

### Some things to remember that unfortunately aren’t specified in the docs:
- You can set `export GIT_TRACE=1` in the current shell to debug alias commands
- If you use `!` at the start of your alias expansion:
	- If the rest of the expansion is a single word, Git assumes it’s the name of an executable, and the resulting command that Git runs is:
	- `$(which <cmd>) <positional args>`
		- This makes sense to me
	- Otherwise, Git assumes it’s an arbitrary shell command, and the resulting command that Git runs is:
	- `/bin/sh -c '<cmd> "$@"' '<cmd>' <positional args>`
		- This is a lot. Let's break it down below
		- Note that any exported variables from the current shell should get passed to the new shell, though
- In a Git config file, both  `#` and `;` are special characters to indicate the start of a line comment. To escape them, wrap them within double quotes.
	- The only thing the double quotes do is provide a means to denote text regions where special characters are escaped. They don’t indicate a complete line. For example, this is a valid alias definition:
	- ```
	- [alias]
	- 	my-echo = !echo one";" echo two";" echo "#"
	- ```
	- Running `git my-echo arg1 arg2` will result in:
	- ```
	- one
	- two
	- ```

### What's up with the `/bin/sh` invocation?
Recall that git executes a non-trivial shell command as: `/bin/sh -c '<cmd> "$@"' '<cmd>' <positional args>`

It's executing `/bin/sh` with the -c flag. This makes sense.
The command string passed to `/bin/sh` is wrapped in single quotes, which means that *every* character inside is interpreted literally. This also makes sense, so that I can run the command myself within a shell without the command string being modified before `/bin/sh` receives it.

When `/bin/sh` executes the command string, it sees the parameter `"$@"`, which it expands into `"$1" "$2" …`. Since the positional parameters of `/bin/sh` are the arguments to the invoked Git alias, those get inserted as expected.

The final piece of the entire command is that the specified shell command gets fed verbatim as positional parameter 0 to `/bin/sh`, for logging purposes.


### Mapping Git Aliases to Bash Functions
So here's what I have to do. Git will pass in the alias arguments as positional parameters to my `<cmd>` string. This string will be the invocation of a Bash login shell, so that my Bash functions will be defined. Then, the command string for the Bash shell needs to ask it to run the function I want, followed by the arguments that were passed to it.

Here is the resulting alias definition:

```
[alias]
	my_alias = "!bash -l -c '\"$0\" \"$@\"' my_function"
```

For super debugging mode, you can set `export GIT_TRACE=1` and make the following modifications:

```
[alias]
	my_alias = "!set -x; bash -l -c 'set -x; \"$0\" \"$@\"' my_function"
```
