# Project: IZHV-Exercise1
# Autor:   Evgenii Shiliaev
# Datum:   22.12.2021

default: exe1.pdf clean

exe1.pdf: *.tex
	latex *.tex
	dvips -t a4 *.dvi
	ps2pdf *.ps

clean:	
	rm -r *.aux
	rm -r *.dvi
	rm -r *.log
	rm -r *.ps

# End of Makefile