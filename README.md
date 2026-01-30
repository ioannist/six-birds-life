# Six Birds Life

This repo is a paper-first workspace. The final manuscript must live in a single file: `paper.tex` (no `\input` or `\include`).

## Build

Preferred:

```
latexmk -pdf -interaction=nonstopmode paper.tex
```

Alternative (once citations are added, run bibtex once):

```
pdflatex paper.tex
bibtex paper
pdflatex paper.tex
pdflatex paper.tex
```
