# Maglife makefile

POLLEN := raco pollen
SRC := ./src

.PHONY: start

start:
	$(POLLEN) start --local -- $(SRC)
