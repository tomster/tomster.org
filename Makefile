# convenience makefile to set up the frontend

grunt = node_modules/grunt/package.json
foundation = app/bower_components/foundation/.bower.json

all: bin/ansible dist/index.html

build: dist/index.html

dist/index.html: Gruntfile.js $(grunt) $(foundation) $(shell git ls-files app/ )
	grunt build

$(foundation): .bowerrc bower.json $(grunt)
	bower install

$(grunt): package.json
	npm install

bin/ansible bin/ansible-playbook: bin/pip
	bin/pip install -r requirements.txt

bin/python bin/pip:
	virtualenv .

deploy: bin/ansible-playbook
	bin/ansible-playbook deploy.yml -i hosts

clean:
	git clean -fXd

.PHONY: clean deploy
