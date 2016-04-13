mkdir := $(abspath $(lastword $(MAKEFILE_LIST)))i
curr_dir := $(notdir $(patsubst %/,%,$(dir $(mkdir))))
MKDIR_P = mkdir -p
all: dir main

dir:
	$(MKDIR_P) bin
main:
	gcc *.c -O2 -Wall -pedantic -o ./bin/$(curr_dir)


