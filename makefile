.PHONY: install build

all: install build archive run


install: npm bower

npm:
	npm install jade-babel --save
	npm install jade --save
	npm install babel-core --save
	npm install bower --save

bower:
	./node_modules/bower/bin/bower install
	mv ./bower_components ./site/

build: 
	@echo "\n * Building jade -> html"
	@echo " --------------------------\n"
	@echo "building " > ./site/build.html 
	rm ./site/*.html
	node compile-babel-jade.js src/*.jade ./site

archive:
	tar -czf bou.zone.tar.gz ./site makefile ./src	bower.json compile-babel-jade.js

extract:
	tar -czf bou.zone.tar.gz
	
run: 
	@echo "\n * Accès au site avec chrome ou firefox:  http://localhost:8000 "
	cd site &&	python -m SimpleHTTPServer 8000

