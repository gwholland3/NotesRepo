# Proxies
	- A [proxy](https://en.wikipedia.org/wiki/Proxy_server) is a computer that acts as an intermediary between other computers, forwarding requests and responses. It typically acts on the behalf of / represents another computer using it.
	- A forward proxy (commonly just called a "proxy") is a proxy that act on the behalf of clients. A [reverse proxy](https://en.wikipedia.org/wiki/Reverse_proxy) is a proxy that acts on the behalf of servers
- # Misc
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
	- Get the route to an IP address:
	  ```
	  ip route get <address>
	  
	  # For example:
	  ip route get 8.8.8.8
	  ```