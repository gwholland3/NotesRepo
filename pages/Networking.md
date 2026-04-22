- General syntax of `ip` commands (from `man ip`):
- ```
  ip <thing> <command>
  
  # Examples of things: address, link, route
  
  # Commands are thhing-dependend, but some generic examples are: show, add, set, etc
  ```
- # Specific Commands
	- List all entries in your computer's ARP table:
	  ```
	  arp -a
	  ```
	- Do a ping scan of all IP addresses on a subnet:
	  ```
	  sudo nmap -sn <subnet>  # e.g. 192.168.0.0/24
	  ```
	  (sudo is required on macOS for some reason)
	- Monitor throughput on an interface:
	  ```
	  iftop -i <interface> -f '<tcpdump filter>'
	  ```