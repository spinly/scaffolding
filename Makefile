
default: components node_modules build/build.css template.html

build/build.css: index.styl
	@component build --dev --use stylus

template.html: template.jade
	@./node_modules/.bin/jade $< && \
		component convert $@

node_modules: package.json
	@npm install

components: component.json
	@component install --dev

clean:
	rm -fr build components

.PHONY: clean build
