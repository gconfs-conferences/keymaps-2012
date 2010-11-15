#! /usr/bin/env make
SHELL = /bin/bash

TARBALL = gconfs-choisir-son-clavier.tgz
SUPPORT_INPUT = \
	support/support.tex

full:
	$(MAKE) support.pdf && $(MAKE) support.pdf
support.pdf: $(SUPPORT_INPUT)
	pdflatex -output-directory support support/support.tex
	mv support/support.pdf .

clean:
	rm -f support/*.{aux,log,nav,out,snm,toc}
distclean: clean
	rm -f support.pdf
dist: distclean
	hg archive -t tgz $(TARBALL)

.PHONY: support.pdf
