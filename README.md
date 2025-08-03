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
cp src/config_example.tex src/config.tex
```

Edit `src/config.tex` with:
- Your personal details
- Professional experience
- Education
- Skills
- Languages

Put your photo as `src/Foto.png` 

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
pdflatex -interaction=nonstopmode resume.tex
```

## What you need installed

- **LaTeX**: MiKTeX (Windows), TeX Live (Linux/Mac)
- **Packages**: fontawesome5, xcolor, hyperref, titlesec, enumitem, setspace, fancyhdr, lastpage, tikz, graphicx

## Structure

```
src/
├── resume.tex           # Main file
├── config_example.tex   # Example data template
├── config.tex          # Your data (not committed)
└── Foto.png           # Your photo 

scripts/
├── Makefile           # Linux/Mac compilation
└── compilar.bat      # Windows compilation
```

## Tips

- `config.tex` doesn't go to git (privacy)
- `Foto.png` can be committed to GitHub
- If it gives an error, check if all LaTeX packages are installed
- The PDF will be in the `src/` folder

That's it! 