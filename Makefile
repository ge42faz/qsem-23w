CC=pdflatex
IF=report.tex
OF=report.pdf

$(OF): $(IF)
	$(CC) $(IF)

clean:
	rm $(OF)

