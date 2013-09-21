# convenience makefile to set up the frontend

grunt = node_modules/grunt/package.json
foundation = app/bower_components/foundation/.bower.json

all: dist/index.html

dist/index.html: Gruntfile.js $(grunt) $(foundation) $(shell git ls-files app/ )
	grunt build

$(foundation): .bowerrc bower.json $(grunt)
	bower install

$(grunt): package.json
	npm install

clean:
	git clean -fXd

.PHONY: clean
