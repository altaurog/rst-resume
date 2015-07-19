BASE        = resume

PDFOUT      = $(BASE).pdf
HTMLOUT     = $(BASE).html

RSTINCLUDE  = utils.rst
LATEXSTYLE  = mystyle.tex
CSSSTYLE    = resume.css

PDF         = pdflatex
RST2LATEX   = rst2latex
RST2HTML    = rst2html
HTMLLINKCSS = --link-stylesheet 
RSTHTMLOPTS = --stylesheet=$(CSSSTYLE) --strip-comments

RSTLATEXOPTS= --stylesheet=$(LATEXSTYLE) \
			  --table-style=nolines \
			  --use-latex-docinfo  \
			  --strip-comments

PDFOPTS     = -quiet

all: $(PDFOUT) $(HTMLOUT)

%.pdf: %.tex $(LATEXSTYLE)
	$(PDF) $(PDFOPTS) $<

%.html: %.rst $(RSTINCLUDE)
	perl -ple '$$_ .= <> if /^\d{4}/; chomp;' $< | $(RST2HTML) $(RSTHTMLOPTS) $(HTMLLINKCSS) > $@

%.tex: %.rst $(RSTINCLUDE)
	$(RST2LATEX) $(RSTLATEXOPTS) $< $@
	sed -i 's/LaTeX /\\LaTeX\\ /g;s/LaTeX/\\LaTeX /g;s/ TeX / \\TeX\\ /g;s/ TeX/ \\TeX /g' $@

# sed -ri 's/\b[A-Z]{3,}\b/\\textsc{\L\0}/g' $@

