# Resume (LaTeX)

A resume based on the popular template by Jake Gutierrez (MIT license), which in
turn builds on https://github.com/sb2nov/resume.

## Versions

Two language variants are maintained in parallel:

- `resume_de.tex` — German version (uses `babel` with `ngerman`)
- `resume_en.tex` — English version (uses `babel` with `english`)

## Requirements

Building the PDF requires a TeX distribution. On Arch Linux, two packages are
enough:

```bash
sudo pacman -S texlive-meta texlive-langgerman
```

- `texlive-meta` pulls in the full TeX Live installation, including `latexmk`
  and all packages used here (`titlesec`, `enumitem`, `fancyhdr`, ...).
- `texlive-langgerman` provides German hyphenation, required by the `babel`
  package with the `ngerman` option in `resume_de.tex`. Without it, the build
  fails with "Unknown option 'ngerman'"; in that case comment out the line
  `\usepackage[ngerman]{babel}`. The English version (`resume_en.tex`) does not
  need this package.

## Format

The document is set to **A4** (`\documentclass[a4paper,11pt]{article}`). For
US Letter, use `letterpaper` instead.

## Building

```bash
latexmk -pdf resume_de.tex
latexmk -pdf resume_en.tex
```

Clean up build artefacts:

```bash
latexmk -c
```
