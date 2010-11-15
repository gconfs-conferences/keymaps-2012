#! /usr/bin/env make
SHELL = /bin/bash

SUPPORT_INPUT = \
	support/support.tex

support.pdf: $(SUPPORT_INPUT)
	pdflatex -output-directory support support/support.tex
	mv support/support.pdf .

clean:
	rm -f support/*.{aux,log,nav,out,snm,toc}
distclean: clean
	rm -f support.pdf