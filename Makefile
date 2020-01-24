
clean:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -type d -iname '*egg-info' -exec rm -rdf {} +
	rm -f .coverage
	rm -rf htmlcov
	rm -rf dist
	rm -rf build
	rm -rf proxy.py.egg-info
	rm -rf .pytest_cache
	rm -rf .hypothesis

test: clean
	pytest -v tests/

main:
	python -m src.main

install: uninstall
	python setup.py install

uninstall:
	python setup.py install --record files.txt && xargs rm -rf < files.txt

run:
	bp2
	python -m proxy1
	

all: clean uninstall install run 
	
upload-to-test: clean
	python setup.py bdist_wheel --universal
	twine upload --repository-url https://test.pypi.org/legacy/ dist/*


upload-to-prod: clean
	python setup.py bdist_wheel --universal
	twine upload dist/*





