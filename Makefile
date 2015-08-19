BIN=./node_modules/.bin

install: ./node_modules/

./node_modules: package.json
	npm install --loglevel=error

build: clean install
	$(BIN)/babel ./src --out-dir ./lib

clean:
	rm -rf ./lib

lint: install
	$(BIN)/eslint src

.PHONY: install build clean lint

.SILENT:
