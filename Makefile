LATEX?=pdflatex
TEX?=tex
MAKEINDEX?=makeindex

all: rutitlepage.sty rutitlepage.pdf

rutitlepage.sty: rutitlepage.ins rutitlepage.dtx
	$(TEX) $<

rutitlepage.pdf: rutitlepage.dtx rutitlepage.sty
	$(LATEX) $<
	$(MAKEINDEX) -s gind.ist $(basename $<) || true
	$(LATEX) $<

clean:
	$(RM) $(addprefix rutitlepage.,sty aux log idx glo pdf ind ilg)
