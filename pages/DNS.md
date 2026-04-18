How to check macOS DNS configuration:

```
scutil --dns
```

How to query the macOS system resolver for a domain, including DNS cache entries:

```
dscacheutil -q host -a name example.com
```

How to flush the macOS DNS cache:

```
sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder
```

Other helpful tools:
- dig
- nslookup
- host

host is more modern, nslookup is not being maintained as much anymore.

dig is considered more powerful than both, though.  

