For information specifically on types of Bash shells, see my "Bash Shell Types" note.

### Single Quotes vs Double Quotes
See the manual section for single quotes [here](https://www.gnu.org/software/bash/manual/bash.html#Single-Quotes) and the one for double quotes [here](https://www.gnu.org/software/bash/manual/bash.html#Double-Quotes).

### Special Parameters: $* vs $@
See the manual section for $* [here](https://www.gnu.org/software/bash/manual/bash.html#index-_002a) and the one for $@ [here](https://www.gnu.org/software/bash/manual/bash.html#index-_0040).

### Jobs
See "[Job Control](https://www.gnu.org/software/bash/manual/bash.html#Job-Control)" in the Bash manual.

A job is an abstraction for a pipeline of commands. Each job is associated with a number (which job it is) and the PID of the last process in that job's pipeline.

You can list currently-tracked jobs via the `jobs` builtin.
You can reference a job with `%n`, where `n` is the job number.

Job signals:
- CTRL-z: suspend the currently-foreground process and return the parent Bash shell to the foreground
- CTRL-y: perform the above, but only once the currently-foreground process attempts to read input from the terminal

You can bring a background job to the foreground with the `job` shell built-in.

## Startup
See the [Bash manual](https://www.gnu.org/software/bash/manual/bash.html#Bash-Startup-Files).

In summary:
- If interactive but not login, it runs `~/.bashrc`
- If interactive and login, it runs `~/.bash_profile`
	- So typically, this file will also check for and execute `~/.bashrc`

## Tips and Tricks

Check whether a command outputs anything:

```
# This returns true if test_command outputs nothing
if [ -z $(test_command) ]; then
	# Do something
fi
```

```
# This returns true if test_command outputs anything
if [ -n $(test_command) ]; then
	# Do something
fi
```
