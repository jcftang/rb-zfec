require 'mkmf'

$CFLAGS = "-Wall -std=c99 -I ."

dir_config("tcl")
dir_config("fec")

create_makefile("fec/fec")
