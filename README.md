# Six Birds Life

This repo is a paper-first workspace. The final manuscript must live in a single file: `paper.tex` (no `\input` or `\include`).

## Zenodo

The current paper release is archived on Zenodo:

- DOI: `10.5281/zenodo.18420406`
- Record: `https://zenodo.org/records/18420406`

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
