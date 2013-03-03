Sources = $(wildcard _posts/* _templates/*)

build:	${SOURCES}
	blogofile build

serve:
	blogofile serve 

deploy:
	rm -fr _deploy/*
	cp -R _site/* _deploy
	cd _deploy && 	git add . && 	git add -u && 	git commit -m "deployment" && git push origin master --force
	cd ..
	git add . && 	git add -u && 	git commit -m "source-commit" && git push --force

