# convenience makefile to set up a local development environment

all: requirements

requirements: bin/pip requirements.txt
	bin/pip install --upgrade setuptools
	bin/pip install --upgrade  pip
	bin/pip install --upgrade -r requirements.txt

bin/python bin/pip:
	virtualenv-3.4 .

clean:
	git clean -fXd

.PHONY: clean
