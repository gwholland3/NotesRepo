- See [Wikipedia](https://en.wikipedia.org/wiki/RPM_Package_Manager).
- Also see the [man page](https://man7.org/linux/man-pages/man8/rpm.8.html) for the CLI tool.
- Stands for "RPM Package Manager".
  id:: 6a1f5238-9957-4883-951a-f288b919291d
- It is a low-level package manager for Linux that works with `.rpm` files, which represent "packages".
- RPM recognizes two types of packages:
	- Binary package: contains prebuilt software to be installed
	- Source package: contains source code and instructions for building and installing
- Note that `rpm` only works with local packages - those that are already installed, or those represented by local `.rpm` files. It has no ability to interact with remote packages (e.g. searching remote package repositories or downloading + installing packages) - for that you'd need a higher-level package manager tool like [[DNF]] .