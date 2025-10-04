# Makefile for building CV with selectable Catppuccin theme

# Default theme
THEME ?= mocha
TEX = pdflatex
SRC = cv.tex
OUT = cv.pdf

all: $(OUT)

$(OUT): $(SRC)
	$(TEX) "\def\CVTheme{$(THEME)} \input{$(SRC)}"

clean:
	rm -f *.aux *.log *.out *.toc *.bbl *.blg $(OUT)

.PHONY: all clean
