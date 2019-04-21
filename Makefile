SITE=_site
SPECVERSION=$(shell perl -ne 'print $$1 if /^version: *([0-9.]+)/' spec.txt)

.PHONY: all clean npm

all: spec.html # spec.pdf spec.md

html:
	tx pull -l ja
	sphinx-build -b html -d _build/doctrees . _build/html

gettext:
	sphinx-build -b gettext -d _build/doctrees . _build/locales
	sphinx-intl update -p _build/locales -l ja

spec.md: spec.txt tools/template.commonmark
	lua tools/make_spec.lua commonmark < $< > $@

spec.html: spec.txt tools/template.html
	lua tools/make_spec.lua html < $< > $@

spec.tex: spec.txt tools/template.latex
	lua tools/make_spec.lua latex < $< > $@

spec.pdf: spec.tex
	xelatex $<

spec.json: spec.txt
	python3 test/spec_tests.py --dump-tests < $< > $@

npm:
	# Do a sanity check first on versions
	grep -q '"version": *"$(SPECVERSION)' package.json && \
	       npm publish

clean:
	-rm -rf _build/ spec.tex spec.md spec.html
