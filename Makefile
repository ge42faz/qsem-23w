CC=pdflatex
IF=report/report.tex slides/slides.tex
OF=report/report.pdf slides/slides.pdf

RDIR=-output-directory=report
SDIR=-output-directory=slides

report: report/report.pdf

slides: slides/slides.pdf

report/report.pdf: report/report.tex
	$(CC) $(RDIR) report/report;
	bibtex report/report;
	$(CC) $(RDIR) report/report;
	$(CC) $(RDIR) report/report;
	open report/report.pdf;

slides/slides.pdf: slides/slides.tex
	$(CC) $(SDIR) slides/slides;
	bibtex slides/slides;
	$(CC) $(SDIR) slides/slides;
	$(CC) $(SDIR) slides/slides;
	open slides/slides.pdf;

clean:
	rm $(OF)

