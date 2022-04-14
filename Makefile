##
# Project Title
#
# @file
# @version 0.1

POLLEN := raco pollen
SRC := ./src

.PHONY: start

start:
	$(POLLEN) start --local -- $(SRC)

# end
