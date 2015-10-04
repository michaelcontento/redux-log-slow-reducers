BIN := ./node_modules/.bin
NPM := npm --loglevel=error

#
# INSTALL
#

install: node_modules/

node_modules/: package.json
	$(NPM) --ignore-scripts install
	touch node_modules/

#
# BUILD
#

build: clean install
	$(BIN)/babel ./src --out-dir ./lib

#
# CLEAN
#

clean:
	rm -rf ./lib

mrproper: clean
	rm -rf ./node_modules

#
# TEST
#

lint: install
	$(BIN)/eslint src

ci: lint build

#
# MAKEFILE
#

.PHONY: \
	install \
	build \
	clean mrproper \
	lint ci

.SILENT:
