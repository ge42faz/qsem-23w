CC=pdflatex

report: report.pdf

report.pdf: report.tex
	$(CC) report;
	bibtex report;
	$(CC) report;
	$(CC) report;
	open report.pdf;

clean:
	rm report.pdf;

