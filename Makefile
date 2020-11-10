clean:
	rm -rf bin/ public/ resources/_gen/ themes/ tmp/

build-deps:
	curl https://raw.githubusercontent.com/wjdp/htmltest/master/godownloader.sh | bash

themes/hugo_theme_pickles:
	mkdir themes/
	cd themes/ && git clone -b release https://github.com/mismith0227/hugo_theme_pickles

deps: themes/hugo_theme_pickles

build:
	hugo

test:
	bin/htmltest
	#bin/htmltest --conf .htmltest.external.yml
