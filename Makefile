.PHONY: all clean view

# Default target
all: labels.pdf

# Build the PDF from LaTeX source
labels.pdf: labels.tex
	pdflatex labels.tex
	pdflatex labels.tex

# Clean up auxiliary files
clean:
	rm -f *.aux *.log *.out *.toc *.synctex.gz

# Clean everything including the PDF
distclean: clean
	rm -f labels.pdf

# View the PDF (requires a PDF viewer)
view: labels.pdf
	xdg-open labels.pdf 2>/dev/null || evince labels.pdf 2>/dev/null || echo "Please open labels.pdf manually"
