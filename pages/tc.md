Wikipedia: [link](https://en.wikipedia.org/wiki/Tc_%28Linux%29)
Man page: [link](https://www.man7.org/linux/man-pages/man8/tc.8.html)
TLDP guide: [link](https://tldp.org/HOWTO/Traffic-Control-HOWTO/index.html)

## qdisc
Man page: [link](https://www.man7.org/linux/man-pages/man8/tc.8.html#QDISCS)

Stands for "queueing discipline". It's basically a queue for packets that implements a specific policy for how those packets are handled.

qdisc "handles" (read: ID) take on the following format: `<major>:`
Where <major> is a major number. Example: `5:`
The minor number of every qdisc is 0 by default.

There are two main types of qdiscs: classful qdiscs and classless qdiscs.

### Creating a qdisc
Generally looks like this:
`tc qdisc add dev <network_device> <parent_ref> handle <qdisc_handle> <qdisc_type> <qdisc_params>
<parent_ref> is either `root` if this is the root qdisc for this network device or `parent <parent_handle>` otherwise.

HTB is a common classful qdisc: [man page](https://www.man7.org/linux/man-pages/man8/tc-htb.8.html)
It stands for "Hierarchical Token Bucket" and allows bandwidth limiting.

## Class
Man page: [link](https://www.man7.org/linux/man-pages/man8/tc.8.html#CLASSES)

I believe only classful qdiscs can contain classes.

Each class by default contains a leaf pfifo qdisc.

### Creating a class
Generally looks like this:
`tc class add dev <network_device> parent <parent_handle> classid <class_handle> <qdisc> <qdisc_params>

For HTB classes, these are common parameters:
- rate: the allocated bandwidth for this class
- ceil: the bandwidth cap - prevents a class from borrowing more unused bandwidth from other classes

## Filter
Man page: [link](https://www.man7.org/linux/man-pages/man8/tc.8.html#FILTERS)






