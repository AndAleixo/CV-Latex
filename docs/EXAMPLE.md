# Resume Template Example

This file shows how to use the LaTeX resume template with your personal information.

## Quick Setup

1. **Copy the template:**
   ```bash
   cp src/personal_data.tex src/config.tex
   ```

2. **Edit src/config.tex with your information:**
   ```latex
   % Personal Information
   \newcommand{\nome}{John Doe}
   \newcommand{\titulo}{Software Engineer}
   \newcommand{\email}{john.doe@email.com}
   \newcommand{\telefone}{+1 555 123 4567}
   \newcommand{\localizacao}{San Francisco, CA, USA}
   \newcommand{\linkedin}{linkedin.com/in/johndoe}
   \newcommand{\github}{github.com/johndoe}
   ```

3. **Add your profile photo:**
   - Save your photo as `src/Foto.png`
   - Recommended size: 300x300 pixels
   - Format: PNG or JPG

4. **Compile the resume:**
   ```bash
   # Windows
   cd scripts
   compilar.bat
   
   # Linux/Mac
   cd scripts
   make
   ```

## Example Professional Summary

```latex
\newcommand{\resumo}{
Experienced software engineer with 5+ years in full-stack development, specializing in Python, JavaScript, and cloud technologies. Led development of microservices architecture serving 1M+ users, resulting in 40% performance improvement. Passionate about clean code, automated testing, and scalable solutions.
}
```

## Example Professional Experience

```latex
% Experience 1
\newcommand{\empresaUm}{Tech Company Inc.}
\newcommand{\cargoUm}{Senior Software Engineer}
\newcommand{\periodoUm}{January 2022 - Present}
\newcommand{\experienciaUm}{
    \item Led development of microservices architecture using Python and Docker, improving system performance by 40%
    \item Implemented automated testing pipeline reducing deployment time from 2 hours to 15 minutes
    \item Mentored 3 junior developers and conducted code reviews for team of 8 engineers
    \item Designed and deployed REST APIs serving 1M+ daily requests with 99.9% uptime
}
```

## Example Technical Skills

```latex
\newcommand{\linguagens}{
    \item \textbf{Python}: Django, Flask, FastAPI, Data analysis, Machine Learning
    \item \textbf{JavaScript}: Node.js, React, Vue.js, Express.js
    \item \textbf{Java}: Spring Boot, Android development, Enterprise applications
    \item \textbf{SQL}: PostgreSQL, MySQL, MongoDB, Database design
}

\newcommand{\ferramentas}{
    \item \textbf{Cloud}: AWS, Docker, Kubernetes, CI/CD pipelines
    \item \textbf{Tools}: Git, Jenkins, Jira, VS Code, IntelliJ
    \item \textbf{Testing}: Unit testing, Integration testing, TDD, BDD
    \item \textbf{Monitoring}: Prometheus, Grafana, ELK stack, APM tools
}
```

## Example Projects

```latex
\newcommand{\projetoUm}{
    \item \textbf{E-commerce Platform}: Built full-stack e-commerce solution using React, Node.js, and PostgreSQL
    \item \textbf{Machine Learning API}: Developed REST API for real-time image classification using TensorFlow
    \item \textbf{Mobile App}: Created cross-platform mobile app using React Native with 50K+ downloads
}
```

## Example Certifications

```latex
\newcommand{\certificacoes}{
    \item \textbf{AWS Certified Solutions Architect} (Amazon Web Services)
    \item \textbf{Certified Kubernetes Administrator} (Cloud Native Computing Foundation)
    \item \textbf{Google Cloud Professional Developer} (Google Cloud)
    \item \textbf{Microsoft Certified: Azure Developer Associate} (Microsoft)
}
```

## Example Languages

```latex
\newcommand{\idiomas}{
    \item \textbf{English}: Native proficiency
    \item \textbf{Spanish}: Professional working proficiency
    \item \textbf{French}: Limited working proficiency
}
```

## Customization Tips

### Colors
```latex
% Professional blue theme
\definecolor{primary}{HTML}{2E86AB}
\definecolor{secondary}{HTML}{A23B72}

% Green theme
\definecolor{primary}{HTML}{27AE60}
\definecolor{secondary}{HTML}{2ECC71}

% Dark theme
\definecolor{primary}{HTML}{2C3E50}
\definecolor{secondary}{HTML}{34495E}
```

### Layout
```latex
% Compact margins
\geometry{
    left=1.5cm,
    right=1.5cm,
    top=1.5cm,
    bottom=1.5cm
}

% Wide margins
\geometry{
    left=2.5cm,
    right=2.5cm,
    top=2.5cm,
    bottom=2.5cm
}
```

## Best Practices

1. **Keep it concise**: Focus on relevant experience and achievements
2. **Use action verbs**: Start bullet points with strong action verbs
3. **Quantify achievements**: Include numbers and metrics when possible
4. **Tailor to the job**: Adjust content based on the position you're applying for
5. **Proofread carefully**: Ensure no typos or formatting errors
6. **Keep it updated**: Regularly update with new experiences and skills

## Troubleshooting

### Common Issues

1. **Compilation errors**: Check that all required LaTeX packages are installed
2. **Missing photo**: The resume will compile without `src/Foto.png`
3. **Font issues**: Ensure FontAwesome is properly installed
4. **Layout problems**: Check that `src/config.tex` is properly formatted

### Getting Help

- Check the `docs/README.md` for detailed instructions
- Verify that `src/config.tex` exists and is properly formatted
- Check the compilation log for specific error messages
- Ensure your LaTeX distribution is up to date 