## rb-fec

This is a very naive ruby extenion to expose the low level fec
functionality from https://tahoe-lafs.org/trac/zfec/ the material here
is very much EXPERIMENTAL!!!

## TODO

* Figure out typemaps between ruby and fec library and verify code is working
* Fix memory leak, *fec_free* may not do what I currently expect
