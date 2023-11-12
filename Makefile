LATEX = pdflatex
BIBTEX = bibtex
MAKEINDEX = makeindex

MAIN_SRC = main.tex

MAIN_PDF = main.pdf

all: $(MAIN_PDF)

$(MAIN_PDF): $(MAIN_SRC) literatura.bib
    $(LATEX) $(MAIN_SRC)
    $(BIBTEX) $(basename $(MAIN_SRC))
    $(LATEX) $(MAIN_SRC)
    $(MAKEINDEX) main.idx
    $(LATEX) $(MAIN_SRC)


clean:
    rm -f *.log *.aux *.out *.toc *.pdf *.bbl *.blg

.PHONY: all clean