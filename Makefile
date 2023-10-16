CC=pdflatex
IF=report/report.tex slides/slides.tex
OF=report/report.pdf slides/slides.pdf

$(OF): $(IF)
	$(CC) $(IF);
	open $(OF);

report: report/report.tex
	$(CC) report/report.tex;

slides: slides/slides.tex
	$(CC) slides/slides.tex;

clean:
	rm $(OF)

