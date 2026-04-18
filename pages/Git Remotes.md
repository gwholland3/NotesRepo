Documentation: [link](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes)

Remotes are a tough thing to wrap my head around. There is not as much coupling between a local repository and a remote repository as I originally thought.

For example, Git does not attempt to keep track of whether a particular file "came from" a specific remote. Files only need to be compared between the local repository and a remote repository when pushing or pulling, based on the file path.

There is nothing special about a remote repository, either. It is "just another Git repository", only it typically lives on a remote server somewhere, rather than your own machine. When you "add a remote" to a repository, you are simply storing a pointer to that other repository and giving it a name to reference it with (usually `origin`).

You can even take a local repository and add a remote that is another "local" repository on your same machine.
