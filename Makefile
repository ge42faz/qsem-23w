CC=pdflatex
IF=report/report.tex slides/slides.tex
OF=report/report.pdf slides/slides.pdf

RDIR=-output-directory=report
SDIR=-output-directory=slides

$(OF): $(IF)
	$(CC) $(RDIR) report/report.tex;
	$(CC) $(SDIR) slides/slides.tex;
	open $(OF);

report: report/report.tex
	$(CC) $(RDIR) report/report.tex;

slides: slides/slides.tex
	$(CC) $(SDIR) slides/slides.tex;

clean:
	rm $(OF)

