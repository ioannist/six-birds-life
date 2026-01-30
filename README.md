# Six Birds Life

This repository hosts the life-focused instantiation of the Six Birds emergence calculus. The paper specifies concrete theory packages
for two substrates (particle and neural/meta-layer), reports audit-first controls (null vs drive, matched protocols), and uses a claim
ledger to tie every reported number to external experimental artifacts. It is a paper-first repo intended to keep the manuscript and its
evidence chain transparent and reproducible.

The final manuscript must live in a single file: `paper.tex` (no `\input` or `\include`).

## Zenodo

The current paper release is archived on Zenodo:

- DOI: `10.5281/zenodo.18420406`
- Record: `https://zenodo.org/records/18420406`

## External experiment repos

The experiments referenced in the paper live in separate repositories:

- Neural substrate: https://github.com/ioannist/six-birds-neural
- Particle substrate: https://github.com/ioannist/six-birds-particle

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
