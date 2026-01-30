#!/usr/bin/env bash
set -euo pipefail

# Ensure we run from repo root regardless of caller location.
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

# Force a compliant, descriptive output filename for arXiv (ASCII, no spaces).
JOBNAME="Tsiokos_2026_To_Wake_a_Stone_with_Six_Birds"
OUTDIR="build"
mkdir -p "$OUTDIR"

# Make LaTeX search the build dir for the generated .bbl.
export TEXINPUTS="${OUTDIR}:"

# Build into ./build to keep the repo root clean.
pdflatex -interaction=nonstopmode -jobname="$JOBNAME" -output-directory="$OUTDIR" paper.tex
bibtex "$OUTDIR/$JOBNAME"
pdflatex -interaction=nonstopmode -jobname="$JOBNAME" -output-directory="$OUTDIR" paper.tex
pdflatex -interaction=nonstopmode -jobname="$JOBNAME" -output-directory="$OUTDIR" paper.tex
