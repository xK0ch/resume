# Resume (LaTeX)

A resume based on the popular template by Jake Gutierrez (MIT license), which in
turn builds on https://github.com/sb2nov/resume.

## Requirements

Building the PDF requires a TeX distribution. On Arch Linux:

```bash
sudo pacman -S texlive-basic texlive-latex texlive-latexrecommended texlive-latexextra texlive-fontsrecommended texlive-binextra
```

`texlive-binextra` provides `latexmk`, while `texlive-latexextra` provides
`titlesec`, `enumitem`, `fancyhdr` and others. Alternatively install the full
meta package: `sudo pacman -S texlive-meta`.

German hyphenation (the `babel` package with the `ngerman` option) additionally
requires the German language pack:

```bash
sudo pacman -S texlive-langgerman
```

Without this pack, comment out the line `\usepackage[ngerman]{babel}` in
`resume.tex`, otherwise the build fails with "Unknown option 'ngerman'".

## Format

The document is set to **A4** (`\documentclass[a4paper,11pt]{article}`). For
US Letter, use `letterpaper` instead.

## Building

```bash
latexmk -pdf resume.tex
```

Or directly with pdflatex (run twice so references resolve):

```bash
pdflatex resume.tex
```

Clean up build artefacts:

```bash
latexmk -c
```

## In IntelliJ IDEA

1. Open the `resume` folder in IntelliJ (File > Open).
2. Install the **TeXiFy IDEA** plugin (Settings > Plugins > Marketplace, search
   for "TeXiFy"). It provides syntax highlighting, autocompletion and a compile
   button.
3. For an in-IDE PDF preview, also install the **PDF Viewer** plugin.
4. A run button (green triangle) from TeXiFy appears at the top of `resume.tex`;
   it builds and displays the PDF.

## Editing

The contact details (address, phone, email, website, LinkedIn, GitHub) live in
the `\begin{center}` block right after `\begin{document}`. The content sections
(experience, tech stack, personal details, education, further qualifications)
follow below. The `\resume...` commands at the top of the file are helper macros
for the consistent layout.
