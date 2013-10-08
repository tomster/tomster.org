# convenience makefile to set up the frontend

grunt = node_modules/grunt/package.json
foundation = app/bower_components/foundation/.bower.json

all: bin/ansible build

# build the site for deployment
build: preview build/deploy/index.html

# build the site for local preview
preview: build/preview/index.html

build/preview/index.html: $(shell git ls-files site/ ) site/_posts/*.rst
	bin/mynt gen site build/preview -f

build/deploy/index.html: Gruntfile.js $(shell git ls-files app/ )
	grunt build
	mv site/_templates/layout.html site/_templates/layout.html.bak
	mv build/deploy/_templates/layout.html site/_templates/layout.html
	mv build/deploy/assets /tmp/
	bin/mynt gen site build/deploy -f
	rm -rf build/deploy/_templates
	rm -rf build/deploy/assets/styles
	mv /tmp/assets/* build/deploy/assets/
	rm -rf /tmp/assets
	mv site/_templates/layout.html.bak site/_templates/layout.html

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

.PHONY: clean deploy install preview
