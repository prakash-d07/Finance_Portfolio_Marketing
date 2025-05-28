# Make file for Python project with venv

PYTHON := python3
VENV_DIR := venv
ACTIVATE := source activate $(VENV_DIR)/bin/activate

.PHONY := install venv target activate clean freeze template

venv:
	$(PYTHON) -m venv $(VENV_DIR)

activate:
	$(VENV_DIR)/bin/activate

install : venv
	$(ACTIVATE) && pip install -r requirments.txt

freeze:
	$(ACTIVATE) && pip install > requirments.txt

clean:
	rm -rf $(VENV_DIR)

template:
	$(PYTHON) template.py