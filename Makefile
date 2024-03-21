deps:
	pip install -r requirment.txt; \
	pip install -r test_requirments.txt
run: 
	python main.py
.PHONY:test
test:
	PYTHONPATH=. py.test --verbose -s
lint:
	flake8 hello_world test