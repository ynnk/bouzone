.PHONY: install build site bower

all: install build archive run


install: env npm bower
	

npm:
	npm install jade-babel --save
	npm install jade --save
	npm install babel-core --save
	npm install bower --save

bower:
	./node_modules/bower/bin/bower install
	mv bower_components/ ./site/
	
build: 
	@echo "\n * Building jade -> html"
	@echo " --------------------------\n"
	@echo "building " > ./site/build.html 
	
	node compile-babel-jade.js src/*.jade  ./site

archive:
	@echo "\n * Creating archive "
	tar -czvf bou.zone.tar.gz ./site 

extract:
	tar -czf bou.zone.tar.gz
	
run: 
	@echo "\n * Accès au site avec chrome ou firefox:  http://localhost:8000 "
	cd site &&	python -m SimpleHTTPServer 8000

page:
	
	@echo "\n * creating page ./src/${NAME}.jade"
	cp ./src/unepage.jade.example ./src/${NAME}.jade
	@echo "\n * Now edit this page with your content \n\t ./src/${NAME}.jade \n\n"

site:
	./bin/site.cron.sh