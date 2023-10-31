CC=pdflatex

slides: slides.pdf

slides.pdf: slides.tex
	$(CC) slides;
	bibtex slides;
	$(CC) slides;
	$(CC) slides;
	open slides.pdf;

clean:
	rm slides.pdf;

