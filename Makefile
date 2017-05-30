LATEX?=pdflatex
TEX?=tex
all: rutitlepage.sty rutitlepage.pdf

rutitlepage.sty: rutitlepage.ins rutitlepage.dtx
	$(TEX) $<

rutitlepage.pdf: rutitlepage.dtx rutitlepage.sty
	$(LATEX) $<

clean:
	$(RM) $(addprefix rutitlepage.,sty aux log idx glo pdf)
