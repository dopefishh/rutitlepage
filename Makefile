all: ex.pdf ex.dvi

%.dvi: %.tex
	latex $<

%.pdf: %.tex
	pdflatex $<

%.png: %.eps
	convert -density 300 $< -resize x1000 $@

clean:
	$(RM) logo.png $(addprefix ex.,log aux pdf dvi)
