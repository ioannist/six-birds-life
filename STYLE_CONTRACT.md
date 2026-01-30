# Style Contract

## C1) File policy
- All manuscript text lives in `paper.tex`.
- Do not use `\input{}` or `\include{}` for other `.tex` files.
- Allowed satellites: `refs.bib`, `figures/*`, `assets/*`.

## C2) Notation + vocabulary policy (canonical)
- Use **lens** notation $f:Z\to X$ and **definability** $\Sigma_f$.
- Use **completion/packaging endomap** $E$ and **audit** $\Audit$.
- Canonical package notation: $T=(Z,f,\Sigma_f,E,\Audit)$.
- P3 holonomy/protocol \neq directionality certificate; directionality is certified by audits.
- Reserve “open-endedness/novelty” for strict extension in definability.

## C3) LaTeX conventions
- Use `cleveref` for references (e.g., `\cref{sec:...}`, `\Cref{fig:...}`).
- Label prefixes: `sec:`, `fig:`, `tab:`, `eq:`, `def:`, `thm:`, `lem:`.
- Tables: `booktabs` only; no vertical rules.
- Figure naming: `figures/fig_<topic>_<nn>.pdf`.

## C4) Claim hygiene
- Any claim stated in Results must be tagged explicitly as `\SAFE` or `\SUGG` in text or in the figure/table caption.
- Every numeric value in Results must be traceable to a table/figure or an artifact pointer in `assets/*`.
