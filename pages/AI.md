# Resources
	- Attention Is All You Need: [YouTube](https://www.youtube.com/watch?app=desktop&v=iDulhoQ2pro)
	- GloVe Stanford paper: [link](https://nlp.stanford.edu/projects/glove/)
	- Transformers From Scratch: [link](https://brandonrohrer.com/transformers.html)
	- Transformer Architecture: The Positional Encoding: [link](https://kazemnejad.com/blog/transformer_architecture_positional_encoding/)
- # Tools for AI music
	- [Suno](https://suno.com/)
	- [Udio](https://www.udio.com/)
- # Tools for AI video/images
	- [Hailuo AI](https://hailuoai.video/) (in beta)
	- [LTX Studio](https://app.ltx.studio/) (in beta)
	- [Kling AI](https://klingai.com/)
	- [Noisee AI](https://noisee.ai/)
- # General AI Tools
	- [Google Gemini](https://gemini.google.com/app)
	- [AI Studio](https://aistudio.google.com/) (dev version)
	- [Meta AI](https://www.meta.ai/)
	- [Uncensored AI](https://www.uncensored.ai/) (in beta)
	- [ChatGPT](https://chatgpt.com/)
- # Notes on Coding Agents
	- Good video on software fundamentals + coding agents: [link](https://www.youtube.com/watch?v=v4F1gFy-hqg)
	- "ubiquitous language" - find a way to establish a shared language with a coding agent for discussing your codebase
	- Feedback loops are critical - how do both you *and* the agent determine if the code works?
		- Just adding tests is not the answer, you need to set up the right *type* of tests
	- ## Prompting
		- Good video: https://www.youtube.com/watch?v=ysPbXH0LpIE
		- Use XML tags to delimit different sections of prompt input. For example:
		  ```
		  <introduction>
		  You are an expert web developer. You never make mistakes.
		  </introduction>
		  
		  <task>
		  You will create the perfect cat lover website. Make sure it has lots of cute cat pictures.
		  </task>
		  ```
		- Providing examples is an efficient way to describe what you want the coding agent to do.
		- Recommendations for preventing hallucinations:
			- Tell the coding agent to say "I don't know" if it doesn't know.
			- Tell the coding agent to answer only if it's very confident in its response.
			- Tell the coding agent to think before answering.
		- It's helpful to end your prompt with a list of important things for the agent to remember during its task.
	- ## System Prompt / CLAUDE.md
		- Good post: https://x.com/TheAIWorld22/status/2053023798170198453