From [Wikipedia](https://en.wikipedia.org/wiki/DNF_(software)):

"DNF is a package manager for Red Hat-based Linux distributions and derivatives"

It seems to be a layer on top of the RPM package manager.

GitHub repositories:

	- [DNF4](https://github.com/rpm-software-management/dnf)
	- [DNF5](https://github.com/rpm-software-management/dnf5)
- ### Helpful Commands
  Also see `man dnf`
	- `dnf list installed`  - lists installed packages
	- `dnf info <package>`  - provides info about a package
	- `dnf search <name>`  - searches for packages using the provided search term. You can provide multiple search terms, and they support globbing. In the results, you will see the name of each package, and a short summary of the package.