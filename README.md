Description
---

A simple bash script to unify the way to check the integrity of files, given the method to use and a hash to compare with.
```
Usage: intcheck.sh [-m method] filename hashvalue
Default method md5sum
```
Examples
---
```
md5sum: intcheck.sh testfile "1234567890abcdf1234567890abcdf12"

sha256sum: intcheck.sh -m sha256sum testfile "1234567890abcdf1234567890abcdf1234567890abcdf1234567890abcdf1234"
```
