CC=pdflatex
IF=report/report.tex slides/slides.tex
OF=report/report.pdf slides/slides.pdf

RDIR=-output-directory=report
SDIR=-output-directory=slides

all: $(IF)
	$(CC) $(RDIR) report/report.tex;
	$(CC) $(SDIR) slides/slides.tex;
	open $(OF);

report: report/report.pdf

slides: slides/slides.pdf

report/report.pdf: report/report.tex
	$(CC) $(RDIR) report/report.tex;
	open report/report.pdf;

slides/slides.pdf: slides/slides.tex
	$(CC) $(SDIR) slides/slides.tex;
	open slides/slides.pdf;

clean:
	rm $(OF)

