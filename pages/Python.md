- Python3 documentation: [https://docs.python.org/3/](https://docs.python.org/3/)
- # Generators
	- The minute you add a [`yield`](https://docs.python.org/3/reference/expressions.html#yieldexpr) statement to a function's body, calling that function returns a generator object, rather than executing the function body.
	- There are two main methods for interacting directly with generator objects:
		- `next()`: executes the generator until its next `yield` or `return` statement
		- `send()`: same as `next()`, but passes in an input value to the generator where its function body resumes
- # Context Managers
	- Main docs: https://book.pythontips.com/en/latest/context_managers.html
	- The main purpose of context managers is to make it simple to write logic like the following:
	  ```
	  <set something up>
	  	<do a thing while the above thing is set up>
	  <clean up the above thing>
	  ```
	- Are context managers good for managing child processes?
- # Concurrency
	- ## Multiprocessing
		- [multiprocessing](https://docs.python.org/3/library/multiprocessing.html) is one package that implements concurrency in Python, by allowing you to kick off multiple processes.
		- `multiprocessing` provides [three ways](https://docs.python.org/3/library/multiprocessing.html#multiprocessing-start-methods) to start a new process:
			- "spawn": start a fresh Python interpreter process, running whatever Python you specified
			- "fork": the current Python interpreter process is forked (i.e. with the [os.fork()](https://docs.python.org/3/library/os.html#os.fork) function)
			- "forkserver": the current Python interpreter spawns a server process and requests that the server process fork a new process
	- ## Futures
		- There are two types of futures in Python: the ones from the `asyncio` library and the ones from the `concurrent.futures` library.
		- The former are discussed [here](((6a1ca207-476f-442f-a48c-2da3d3418bab))) - this section discusses the latter.
- # IPython
	- ## Getting an IPython Shell
		- Add this to the line of code you want to get a shell at:
		  ```python
		  import IPython; IPython.embed()
		  ```
	- ## IPython Tips and Tricks
		- See which variables are available in the current scope/context with `%who` - example:
		  ```python
		  In [8]: %who
		  case     env
		  ```
		- Get a reference to all the outputs of previous IPython commands with `Out` - example:
		  ```python
		  In [10]: Out
		  Out[10]: {4: <chimera.environment.EnvironmentProxy at 0x7f67b335d1d0>, 9: starsim}
		  - In [11]: "hello"
		  Out[11]: 'hello'
		  - In [12]: Out
		  Out[12]: 
		  {4: <chimera.environment.EnvironmentProxy at 0x7f67b335d1d0>,
		  9: starsim,
		  11: 'hello'}
		  ```
		- Get a list of all modules available to import:
		  ```python
		  help("modules")
		  ```
		- List all available modules containing a substring:
		  ```python
		  help("modules <substring>")
		  ```
- # Inspecting Objects
	- ## Object Type
		- To check the type of an object that you have a reference to, you can do the following:
		  ```python
		  type(my_object)
		  ```
		- The [type()](https://docs.python.org/3/library/functions.html#type) function will return a [type](https://docs.python.org/3/library/stdtypes.html#bltin-type-objects) object (see a list of values [here](https://docs.python.org/3/library/types.html#module-types)). For example:
		  ```python
		  In [17]: type("hello")
		  Out[17]: str
		  - In [18]: type(type("hello"))
		  Out[18]: type
		  - In [19]: type(type(type("hello")))
		  Out[19]: type
		  ```
	- ## Object Attributes
		- In the event that you don't have great documentation for what methods and attributes an object has, but you have a reference to it, you can do the following:
		  ```python
		  dir(my_object)
		  ```
		- The [dir()](https://docs.python.org/3/library/functions.html#dir) function will return a list of strings, where each string represents the name of an attribute belonging to that object.
		- Apparently the following options are supposed to work as well, although I've hit RuntimeErrors while using them:
		  ```python
		  vars(my_object)
		  
		  my_object.__dict__ import
		  
		  inspect; inspect.getmembers(my_object)
		  ```
		- If you want to see only object methods, you can filter down the attributes with [callable()](https://docs.python.org/3/library/functions.html#callable). You can also use that to find all non-method attributes:
		  ```python
		  # Get all "callable" (i.e. method) attributes of my_object
		  [attr for attr in dir(my_object) if callable(getattr(my_object, attr))]
		  
		  # Get all methods of my_object except special methods
		  [attr for attr in dir(my_object) if callable(getattr(my_object, attr)) and not attr.startswith("__")]
		  
		  # Get all non-method attributes of my_object
		  [attr for attr in dir(my_object) if not callable(getattr(my_object, attr))]
		  
		  # Get all non-method attributes of my_object except special attributes
		  [attr for attr in dir(my_object) if not callable(getattr(my_object, attr)) and not attr.startswith("__")]
		  
		  # Get all non-special attributes of my_object
		  [attr for attr in dir(my_object) if not attr.startswith("__")]
		  ```
		- There's a chance you run into an error like this, due to scoping weirdness in IPython shells:
		  ```
		  NameError: name 'my_object' is not defined
		  ```
		- If that occurs, you can do this to fix it, then try again:
		  ```python
		  # LATER Add my_object to the global scope
		  globals()["my_object"] = my_object
		  ```
- # Checking Syntax
	- Interesting things to look into:
	  ```sh
	  python3 -m py_compile my_file.py
	  ```
- # Linting
	- You can get the Black formatter to ignore things like this:
	  ```python
	  print("I do not want Black to format this single line.")  # fmt: skip
	  
	  # fmt: off
	  print("I do not want Black to format this line.")
	  print("Nor this line.")
	  # fmt: on
	  ```