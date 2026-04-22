You can pass multiple script expressions to sed with the `-e` flag, e.g.:

```
sed -e 's/one/two/g' -e 's/three/four/'
```