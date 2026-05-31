- [`asyncio`](https://docs.python.org/3/library/asyncio.html#module-asyncio) is a Python library that provides a framework for writing [concurrent](https://en.wikipedia.org/wiki/Concurrency_(computer_science)) software.
- # Resources
	- https://docs.python.org/3/library/asyncio.html#module-asyncio
	- https://docs.python.org/3/howto/a-conceptual-overview-of-asyncio.html#a-conceptual-overview-of-asyncio
- # Event Loop
	- The main thing `asyncio` introduces is the [event loop](https://docs.python.org/3/howto/a-conceptual-overview-of-asyncio.html#event-loop), which is basically just a collection of jobs that need to be run concurrently.
	- The event loop just cycles through its set of jobs; it allows each one to run until it yields (of its own accord), then switches to the next job.
		- Note that this means a greedy job that runs for a long time before yielding will block all the other jobs from running.
- # `await`
	- The [`await`](https://docs.python.org/3/howto/a-conceptual-overview-of-asyncio.html#await) keyword is used to execute asynchronous code.
	- It is commonly used in a few different ways:
		- `await <task>`
		- `await <coroutine>`
		- `await <awaitable object>`
			- An object is [awaitable](https://docs.python.org/3/library/collections.abc.html#collections.abc.Awaitable) if it provides the [`__await__()`](https://docs.python.org/3/reference/datamodel.html#object.__await__) method, which must return an iterator.
			- This is basically syntactic sugar like so:
			  ```python
			  # This code:
			  val = await awaitable_object
			  
			  # Is syntactic sugar for this code:
			  val = next(awaitable_object.__await__())
			  ```
			-
			-
- # Miscellaneous Notes
	- Async functions are also referred to as "coroutine functions".
	- When you invoke a coroutine function, you receive back a "coroutine object", or just "coroutine".
	- When you attach a coroutine to an event loop, it becomes a "task".
	- `asyncio.run()` has a `debug=True` parameter, though I still don't know exactly what kind of debug help it provides.