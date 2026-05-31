# Generators
	- The minute you add a [`yield`](https://docs.python.org/3/reference/expressions.html#yieldexpr) statement to a function's body, calling that function returns a generator object, rather than executing the function body.
	- There are two main methods for interacting directly with generator objects:
		- `next()`: executes the generator until its next `yield` or `return` statement
		- `send()`: same as `next()`, but passes in an input value to the generator where its function body resumes
- # Futures
	- There are two types of futures in Python: the ones from the `asyncio` library and the ones from the `concurrent.futures` library.
	- The former are discussed [here](((6a1ca207-476f-442f-a48c-2da3d3418bab))) - this section discusses the latter.