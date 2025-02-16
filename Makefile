SHELL=bash
LATEX=xelatex --shell-escape
LATEXMK=latexmk -xelatex -quiet --shell-escape
TEX=$(wildcard *.tex)
PDF=$(TEX:.tex=.pdf)
MAIN=00用tikz绘制数学图形

.PHONY:c d clean distclean

all:$(MAIN).pdf
#	@echo $(PDF)

%.pdf:%.tex
	@echo $(LATEXMK) $<
	$(LATEXMK) $<

clean: 
	@rm -f *.aux
	@rm -f *.fdb*
	@rm -f *.fls
	@rm -f *.gz
	@rm -f *.log
	@rm -f *.nav
	@rm -f *.out
	@rm -f *.snm
	@rm -f *.toc
	@rm -f *.vrb
	@rm -f *.xdv
	@rm -rf _minted 

distclean : clean
	@rm -f *.pdf

c:clean

d:distclean

