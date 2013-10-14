.SUFFIXES: .tex .dvi .aux .log .toc .lof .lot .pdf .ps
F=intro
TEX=platex

all: $F.dvi

pdf: $F.pdf
ps: $F.ps
dvi: $F.dvi

$F.dvi: $F.tex
$F.pdf: $F.dvi
$F.ps:  $F.dvi

.tex.dvi:
	$(TEX) $<
	$(TEX) $<
.dvi.ps:
	dvips -Ppdf -o $@ $<
.dvi.pdf:
	dvipdfmx $<
clean:
	rm -f *~ $F.dvi $F.aux $F.lof $F.toc $F.lot $F.log $F.pdf $F.ps
