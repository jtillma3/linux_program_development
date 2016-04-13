mkdir := $(abspath $(lastword $(MAKEFILE_LIST)))i
curr_dir := $(notdir $(patsubst %/,%,$(dir $(mkdir))))
all:
	gcc *.c -O2 -Wall -pedantic -o $(curr_dir)


