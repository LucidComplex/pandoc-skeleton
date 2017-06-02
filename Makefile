SRCDIR=src
STYLESDIR=styles
pdf:
	pandoc --toc --smart --latex-engine=xelatex --filter pandoc-citeproc -o output.pdf $(SRCDIR)/*.md $(SRCDIR)/metadata.yaml $(STYLESDIR)/style.yaml
clean:
	rm output.pdf
