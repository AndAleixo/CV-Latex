# LaTeX Resume Template

This is my resume, but I think many people starting in technology would like to have an interesting template to create their resume. So I'm sharing mine that I made using LaTeX - below can help.

## How to use

### 0. Install LaTeX first

**Windows**: Install MiKTeX from https://miktex.org/
**Linux**: `sudo apt-get install texlive-full`
**Mac**: Install MacTeX from https://tug.org/mactex/

### 1. Set up your data

Just rename the example file:
```bash
cp src/content.example.tex src/content.tex
```

Edit `src/content.tex` with:
- Your personal details
- Professional experience
- Education
- Skills
- Languages

Put your photo as `src/photo.png` 

### 2. Compile

**Windows:**
```bash
cd scripts
compilar.bat
```

**Linux/Mac:**
```bash
cd scripts
make
```

**Manual:**
```bash
cd src
pdflatex -interaction=nonstopmode main.tex
```

## What you need installed

- **LaTeX**: MiKTeX (Windows), TeX Live (Linux/Mac)
- **Packages**: fontawesome5, xcolor, hyperref, titlesec, enumitem, setspace, fancyhdr, lastpage, tikz, graphicx

## Structure

```
src/
├── main.tex             # Main file
├── content.example.tex  # Example data template
├── content.tex          # Your data (not committed)
└── photo.png            # Your photo 

scripts/
├── Makefile           # Linux/Mac compilation
└── compilar.bat      # Windows compilation
```

That's it! 