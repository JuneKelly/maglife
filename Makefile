# Maglife makefile

POLLEN := raco pollen
SRC := ./src

.PHONY: clean start

setup:
	cd $(SRC) && $(POLLEN) setup

start:
	$(POLLEN) start --local -- $(SRC)

clean:
	rm -rf "$(SRC)/compiled"
