# LaTeX Resume Template

ATS-friendly single-column CV template. Edit your data in `content.tex`; layout lives in `main.tex`.

## Quick start

### 0. Install LaTeX

- **Windows:** [MiKTeX](https://miktex.org/)
- **Linux:** `sudo apt-get install texlive-full`
- **Mac:** [MacTeX](https://tug.org/mactex/)

### 1. Create your data file

```bash
cp src/content.example.tex src/content.tex
```

Edit `src/content.tex` (personal info, experience, education, etc.).

Place your portrait at `src/photo.png`.

> **Photo required:** if `src/photo.png` is missing, LaTeX may pick up another `photo.png` from the TeX installation (e.g. a MiKTeX demo image). Always keep your file in `src/`.

`content.tex` is gitignored so personal data is not committed.

### 2. Compile

**Windows:**
```bash
cd scripts
compilar.bat
```
Output: `resume.pdf` in the repo root.

**Linux/Mac:**
```bash
cd scripts
make
```
Output: `scripts/resume.pdf`.

**Manual** (two passes — page numbers need the second run):
```bash
cd src
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
```
Output: `src/main.pdf`.

The repo tracks a sample `resume.pdf` (what a successful build looks like). Other PDFs are gitignored.

## Customizing

| What | Where |
|------|--------|
| Text / jobs / education | `src/content.tex` |
| Accent color | `\definecolor{primary}{...}` in `content.tex` |
| Margins | `\geometry{...}` in `content.tex` |
| Section order / header layout | `src/main.tex` |
| Photo | `src/photo.png` |

Entry macros (see comments in `content.example.tex`):

- `\Experience{company}{location}{role}{period}{items}{skills}`
- `\Education{university}{location}{degree}{period}{items}{skills}`
- `\Patent{title}{inventors}{year}{type}{id}{url}`
- `\Publication{title}{authors}{year}{type}{doi}`
- `\Language{language}{proficiency}`

## Dependencies

Packages: `fontawesome5`, `xcolor`, `hyperref`, `titlesec`, `enumitem`, `setspace`, `fancyhdr`, `lastpage`, `tikz`, `graphicx` (plus standard `geometry` / `babel`).

## Structure

```
src/
├── main.tex              # Layout and macros
├── content.example.tex   # Documented template → copy to content.tex
├── content.tex           # Your data (not committed)
└── photo.png             # Your portrait
scripts/
├── Makefile              # Linux/Mac build
└── compilar.bat          # Windows build
resume.pdf                # Sample build output (tracked)
```
