SHELL:=/bin/bash
LATEX?=pdflatex
TEX?=tex
MAKEINDEX?=makeindex

all: rutitlepage.sty rutitlepage.pdf

release: rutitlepage.tlpobj all
	mkdir -vp tlpkg/tlpobj {tex,doc,source}/latex/rutitlepage
	cp rutitlepage.sty logo.eps logo.pdf tex/latex/rutitlepage
	cp rutitlepage.{dtx,ins} source/latex/rutitlepage
	cp README.md rutitlepage.pdf doc/latex/rutitlepage
	cp $< tlpkg/tlpobj
	tar -cJvf rutitlepage.tar.xz tex source doc tlpkg
	rm -r tex source doc tlpkg

rutitlepage.sty: rutitlepage.ins rutitlepage.dtx
	$(TEX) $<

rutitlepage.pdf: rutitlepage.dtx rutitlepage.sty
	$(LATEX) $<
	$(MAKEINDEX) -s gind.ist $(basename $<) || true
	$(LATEX) $<

clean:
	$(RM) $(addprefix rutitlepage.,sty aux log idx glo pdf ind ilg tar.xz)
