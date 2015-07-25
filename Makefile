# convenience makefile to set up a local development environment

all: requirements

requirements: bin/pip requirements.txt
	bin/pip install --upgrade setuptools
	bin/pip install --upgrade  pip
	bin/pip install --upgrade -r requirements.txt

bin/python bin/pip:
	virtualenv -p python3 .

clean:
	git clean -fXd

.PHONY: clean
