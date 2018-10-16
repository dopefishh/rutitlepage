LATEX?=pdflatex
TEX?=tex

all: rutitlepage.sty rutitlepage.pdf

release: rutitlepage.tlpobj all
	mkdir -vp tlpkg/tlpobj $(addsuffix /latex/rutitlepage,tex doc source)
	cp rutitlepage.sty logo-*.eps logo-*.pdf tex/latex/rutitlepage
	cp $(addprefix rutitlepage.,dtx ins) source/latex/rutitlepage
	cp README.md rutitlepage.pdf doc/latex/rutitlepage
	cp $< tlpkg/tlpobj
	tar -cJvf rutitlepage.tar.xz tex source doc tlpkg
	rm -r tex source doc tlpkg

ctan: rutitlepage.ins rutitlepage.dtx rutitlepage.pdf README.md
	ctanify --no-skip $^ $(addsuffix =source/latex/rutitlepage,$(wildcard logo*))

rutitlepage.sty: rutitlepage.ins rutitlepage.dtx
	$(TEX) $<

rutitlepage.pdf: rutitlepage.dtx rutitlepage.sty
	$(LATEX) $<
	$(LATEX) $<

clean:
	$(RM) $(addprefix rutitlepage.,sty aux log idx glo pdf ind ilg tar.xz tar.gz)
