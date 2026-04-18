Bash shells are complicated. Here are some different “types” of Bash shells, depending on how you launch them.

A shell can either be interactive or non-interactive, and it can either be login or non-login. These attributes can overlap, so all four options are possible:

|                 | Interactive     | Non-interactive |
|-----------------|-----------------|-----------------|
| Login           | Yes             | Yes             |
| Non-login       | Yes             | Yes             |



## Interactive vs Non-Interactive
How to check: run `[[ $- == *i* ]] && echo 'Interactive shell’ || echo 'Non-interactive shell’`
(Check if “I” is in the `$-` shell variable)

An interactive shell typically has additional behavior on top of what a non-interactive shell already does.

Notable Consequences of making a shell interactive (see [Bash manual](https://www.gnu.org/software/bash/manual/bash.html#Interactive-Shell-Behavior) for full list):
- On startup, the shell executes commands from various files (see [Bash manual](https://www.gnu.org/software/bash/manual/bash.html#Bash-Startup-Files) for more details)
- Defined [aliases](https://www.gnu.org/software/bash/manual/bash.html#Aliases) are always expanded in subsequent commands
- Parser syntax errors don’t cause the shell to exit/quit

### Interactive
Shell commands are composed and submitted via direct keyboard input.

How to launch: run `bash` without a filename argument or the `-c` flag
OR: run `bash` with the `-i` flag

### Non-Interactive
Shell commands are read from a file or other text buffer that was composed before launching the shell.

How to launch: run `bash` with a filename representing a script to execute commands from, or with the `-c` flag followed by a string containing commands to execute


## Login vs Non-Login
How to check: run `shopt -q login_shell && echo 'Login shell' || echo 'Non-login shell’`
(Check if the `login_shell` option is set)

A login shell typically has additional behavior on top of what a non-login shell already does.
Login shells are also traditionally treated as a “level above” interactive shells, or an extra layer on top of them. That is to say, most login shells are *also* interactive shells, although it is technically possible to have a non-interactive login shell.
For that reason, most people set up the config for their login shells such that on startup, they do special “login” things in addition to the typical setup reserved for interactive shells.

Consequences of making a shell login: see [Bash manual](https://www.gnu.org/software/bash/manual/bash.html#Bash-Startup-Files)

### Login
Sort of has an arbitrary meaning depending on what extra behavior you trigger for login shells. Traditionally, it is supposed to mean that the shell is associated with a logged-in user.
An even stricter definition might be that it is a single shell launched *when* a user logs in.

How to launch: run `bash` with the `-l` flag

### Non-Login
Not associated with a logged-in user.

How to launch: run `bash` without the `-l` flag