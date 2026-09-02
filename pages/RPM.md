- See [Wikipedia](https://en.wikipedia.org/wiki/RPM_Package_Manager).
- Also see the [man page](https://man7.org/linux/man-pages/man8/rpm.8.html) for the CLI tool.
- Stands for "RPM Package Manager".
  id:: 6a1f5238-9957-4883-951a-f288b919291d
- It is a low-level package manager for Linux that works with `.rpm` files, which represent "packages".
- RPM recognizes two types of packages:
	- Binary package: contains prebuilt software to be installed
	- Source package: contains source code and instructions for building and installing
	- A common convention is that binary package files are suffixed with `.<arch>.rpm` (e.g. `.x86_64.rpm`) while source package files are suffixed with `.src.rpm`.
- Note that `rpm` only works with local packages - those that are already installed, or those represented by local `.rpm` files. It has no ability to interact with remote packages (e.g. searching remote package repositories or downloading + installing packages) - for that you'd need a higher-level package manager tool like [[DNF]].
- ## [Structure](https://en.wikipedia.org/wiki/RPM_Package_Manager#Binary_format) of a `.rpm` file
	- A `.rpm` file consists of four sections:
		- The lead: identifies the file as a `.rpm` file
		- The signature: can be used to verify integrity/authenticity
		- The header: contains package metadata, such as name, version, architecture, etc
		- The payload: the actual package contents to install
			- This is almost always shipped as a single archive file, e.g. a `cpio` file
- ## Helpful Commands
	- Print the package name of a local `.rpm` file:
	  ```
	  rpm -qp my_file.rpm
	  ```
	- List the files contained in a local `.rpm` file:
	  ```
	  rpm -qpl my_file.rpm
	  ```
	- List the package dependencies of a local `.rpm` file:
	  ```
	  rpm -qp --requires my_file.rpm
	  ```