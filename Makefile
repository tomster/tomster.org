# convenience makefile to set up a local development environment

bin/nikola: bin/pip requirements.txt
	bin/pip install --upgrade setuptools
	bin/pip install --upgrade  pip
	bin/pip install --upgrade -r requirements.txt
	touch bin/nikola

bin/pip:
	virtualenv . -p python3.5
	bin/pip install --upgrade setuptools pip

build: bin/nikola conf.py
	bin/nikola build

clean:
	git clean -fXd

.PHONY: clean build
