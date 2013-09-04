
default: components node_modules build/build.css test.html

build/build.css: index.styl
	@component build --dev --use stylus

test.html: test.jade
	@./node_modules/.bin/jade $<

node_modules: package.json
	@npm install

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean build
