# GitHub Setup Guide

This guide explains how to set up this resume template on GitHub with proper version control.

## Initial Setup

### 1. Clone or Download
```bash
git clone https://github.com/yourusername/resume-template.git
cd resume-template
```

### 2. Setup Personal Data
```bash
# Copy the template
cp src/personal_data.tex src/config.tex

# Edit with your information
# (Use your preferred editor)
```

### 3. Add Your Photo
- Save your profile photo as `src/Foto.png`
- Recommended size: 300x300 pixels
- Format: PNG or JPG

### 4. Test Compilation
```bash
# Windows
cd scripts
compilar.bat

# Linux/Mac
cd scripts
make
```

## Version Control Strategy

### Files NOT Committed (Private)
- `src/config.tex` - Your personal data
- `src/Foto.png` - Your profile photo
- `curriculo.pdf` - Generated PDF (optional)
- `build/` - Generated files directory

### Files Committed (Public)
- `src/curriculo.tex` - Main resume structure
- `src/personal_data.tex` - Template for others
- `docs/README.md` - Documentation
- `docs/EXAMPLE.md` - Usage examples
- `docs/SETUP.md` - GitHub setup guide
- `scripts/Makefile` - Compilation scripts
- `scripts/compilar.bat` - Windows compilation
- `.gitignore` - Version control rules

## GitHub Workflow

### First Time Setup
1. **Fork the repository** to your GitHub account
2. **Clone your fork** locally
3. **Setup personal data** as described above
4. **Test compilation** to ensure everything works
5. **Commit your changes** (excluding personal data)

### Regular Updates
1. **Edit src/config.tex** with new information
2. **Compile and test** the resume
3. **Commit changes** to your personal data
4. **Push to your repository**

### Sharing Updates
```bash
# Add your changes
git add src/config.tex curriculo.pdf

# Commit with descriptive message
git commit -m "Update experience and skills - 2024"

# Push to GitHub
git push origin main
```

## Privacy Best Practices

### ✅ Do Commit
- Template files (`src/personal_data.tex`)
- Documentation (`docs/README.md`, `docs/EXAMPLE.md`)
- Compilation scripts (`scripts/Makefile`, `scripts/compilar.bat`)
- Main structure (`src/curriculo.tex`)

### ❌ Don't Commit
- Personal data (`src/config.tex`)
- Profile photo (`src/Foto.png`)
- Generated files (`*.aux`, `*.log`, `*.pdf`)
- Build directory (`build/`)

### 🔒 Optional
- Final PDF (`curriculo.pdf`) - You can commit this if you want to share the final result

## GitHub Pages (Optional)

If you want to host your resume online:

1. **Enable GitHub Pages** in your repository settings
2. **Add an index.html** that redirects to your PDF
3. **Your resume will be available** at `https://yourusername.github.io/repository-name`

Example `index.html`:
```html
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="refresh" content="0; url=curriculo.pdf">
    <title>My Resume</title>
</head>
<body>
    <p>Redirecting to resume...</p>
    <a href="curriculo.pdf">Click here if not redirected</a>
</body>
</html>
```

## Troubleshooting

### Common Issues

1. **Personal data exposed**: Check `.gitignore` includes `src/config.tex`
2. **Photo not showing**: Ensure `src/Foto.png` exists and is properly formatted
3. **Compilation errors**: Verify all LaTeX packages are installed
4. **Git issues**: Check that personal files are in `.gitignore`

### Getting Help

- Check the `docs/README.md` for detailed instructions
- Review `docs/EXAMPLE.md` for usage examples
- Check compilation logs for specific errors
- Ensure your LaTeX distribution is up to date

## Security Notes

- **Never commit** your actual `src/config.tex` with personal information
- **Use the template** (`src/personal_data.tex`) for sharing
- **Keep your fork private** if you want to maintain privacy
- **Consider using** GitHub's private repositories for personal data

## Contributing

If you want to contribute improvements:

1. **Fork the repository**
2. **Create a feature branch**
3. **Make your changes** (template files only)
4. **Submit a pull request**

Remember: Only template and documentation files should be shared publicly! 