- [Ansible](https://en.wikipedia.org/wiki/Ansible_(software)) is an open-source collection of tools that enable infrastructure as code.
- For example, they allow you to describe in source code how you want various computers on a network to be configured.
- Documentation lives [here](https://docs.ansible.com/projects/ansible/latest/index.html).
- # Conops
	- In Ansible, network nodes are split into two groups:
		- Control nodes: the nodes doing the orchestrating/managing. There can be multiple of them.
		- Managed nodes: the nodes being managed by Ansible.
	- Managed nodes do not need an Ansible daemon or service running on them constantly.
	- Instead, a controlling node will routinely apply configuration via SSH.
- # Concepts
	- See [documentation](https://docs.ansible.com/projects/ansible/latest/getting_started/basic_concepts.html).
	- ## Inventory
		- Managed nodes can be organized into groups. These groups make up the "inventory" of managed nodes in the Ansible system.
		- An inventory group can have children, meaning a node in a child group is also a member of the parent group. For example, in YAML format:
		  ```
		  fast_nodes:
		      children:
		          awesome_nodes:
		  small_nodes:
		      children:
		          awesome_nodes:
		  awesome_nodes:
		      hosts:
		          server1:
		  ```
			- This says that the `server1` node is in the `awesome_nodes` inventory group, and that it is therefore also in the `fast_nodes` and `small_nodes` inventory groups.
		- Groups and individual hosts can have attributes ("variables") set for them that can be referenced downstream.
	- ## Modules and Tasks
		- A **module** is an atomic configuration action that Ansible knows how to perform on a managed node.
		- You can think of modules as the building blocks at your disposal.
		- Some example modules include:
			- Copy a file.
			- Install a package.
			- Start a serivce.
		- A **task** is an invocation/usage of a module with specific arguments.
		- An example task might be "Install the `nginx` package".
	- ## Playbooks
		- A **playbook** is the thing you actually point Ansible at and tell it to execute.
		- A playbook is just a list of **plays**.
		- Among other things, each play consists of:
			- A set of inventory groups that should be targeted.
			- A set of tasks that should be applied to the targets.
			- A set of variables/arguments for that specific play.
	- ## Roles
		- A **role** is a reusable collection of tasks, files, and variables.
		- Multiple plays can reference the same single role, which saves them from both having to list out the same set of tasks they should both use.
	- ## Variables
		- A **variable** is just a key-value pair applied to a specific context, such as what a module should do.
		- Variable values can come from many sources, and they resolve/override using precedence rules. The full list is long, but for example:
			- A play's variables override host and group variables for the nodes it targets.
			- A host's variables override the variables of any groups it belongs to.
			- Group variables override role default variables.
- # Execution
	- Here are some ways that Ansible is actually executed for a managed node:
		- `ansible-playbook`: run a playbook.
		- `ansible`: run a single module against managed nodes that match a pattern.
- # Practical
	- See a graph of inventory group membership:
	  ```
	  ansible-inventory -i my_inventory_directory/ --graph my_inventory_group
	  ```
	- Check the syntax of a playbook:
	  ```
	  ansible-playbook -i my_inventory_directory/ my_playbook.yaml --syntax-check
	  ```
	- See what a playbook would do without actually running it:
	  ```
	  ansible-playbook -i my_inventory_directory/ -kK my_playbook.yaml --check --diff
	  ```