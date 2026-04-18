# Resources
	- Documentation home page: https://github.com/tmux/tmux/wiki
	- Cheatsheet: https://tmuxcheatsheet.com/
- # Things To Remember
	- Swap between tmux mouse mode and normal mouse mode:
	  ```
	  <prefix> :set -g mouse on   # tmux mode
	  <prefix> :set -g mouse off  # normal mode
	  ```
	- Grow/shrink a pane vertically:
	  ```
	  <prefix> <Esc>-<up_or_down_arrow>
	  ```
	- Swap a pane's position with the previous pane:
	  ```
	  <prefix> {
	  ```
	- Swap a pane's position with the next pane:
	  ```
	  <prefix> }
	  ```