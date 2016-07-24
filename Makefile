# convenience makefile to set up a local development environment

venv/bin/nikola: venv/bin/pip requirements.txt
	venv/bin/pip install --upgrade -r requirements.txt
	touch venv/bin/nikola

venv/bin/pip:
	virtualenv venv -p python3.5
	venv/bin/pip install --upgrade setuptools pip

build: venv/bin/nikola conf.py
	venv/bin/nikola build

clean:
	git clean -fXd

.PHONY: clean build
