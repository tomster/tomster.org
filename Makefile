# convenience makefile to set up the frontend

grunt = node_modules/grunt/package.json
foundation = app/bower_components/foundation/.bower.json

all: bin/ansible build

build: dist/index.html mynt

mynt: build/index.html

build/index.html: $(shell git ls-files site/ )
	bin/mynt gen site build -f

app: dist/index.html

dist/index.html: Gruntfile.js $(shell git ls-files app/ )
	grunt build

install: $(grunt) $(foundation)

$(foundation): .bowerrc bower.json $(grunt)
	bower install

$(grunt): package.json
	npm install

bin/ansible bin/ansible-playbook bin/mynt: bin/pip
	bin/pip install -r requirements.txt

bin/python bin/pip:
	virtualenv .

deploy: bin/ansible-playbook dist/index.html
	bin/ansible-playbook deploy.yml -i hosts

clean:
	git clean -fXd

.PHONY: clean deploy install app
