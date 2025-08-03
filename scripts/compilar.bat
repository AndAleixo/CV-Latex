@echo off
REM Professional LaTeX Resume Compilation Script for Windows
REM Author: André F. Pinheiro Aleixo
REM Usage: compilar.bat [option]

set TARGET=curriculo
set LATEX=pdflatex
set LATEX_FLAGS=-interaction=nonstopmode
set SRC_DIR=..\src
set BUILD_DIR=..\build

if "%1"=="clean" goto clean
if "%1"=="view" goto view
if "%1"=="help" goto help
if "%1"=="check" goto check

echo Compiling professional resume...
echo.

REM Check if config.tex exists
if not exist "%SRC_DIR%\config.tex" (
    echo ERROR: config.tex not found!
    echo Please copy personal_data.tex to config.tex and fill in your information.
    echo.
    pause
    exit /b 1
)

REM Check if main file exists
if not exist "%SRC_DIR%\%TARGET%.tex" (
    echo ERROR: %TARGET%.tex not found!
    echo.
    pause
    exit /b 1
)

REM Create build directory
if not exist "%BUILD_DIR%" mkdir "%BUILD_DIR%"

REM Compile the resume
echo Running LaTeX compilation...
cd "%SRC_DIR%"
%LATEX% %LATEX_FLAGS% %TARGET%.tex

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Compilation failed!
    echo Please check the log file for errors.
    echo.
    pause
    exit /b 1
)

REM Move PDF to root directory
move "%TARGET%.pdf" "..\"

echo.
echo Resume compiled successfully!
echo Output file: %TARGET%.pdf
echo.

REM Clean temporary files
echo Cleaning temporary files...
del /q *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz *.bbl *.blg *.bcf *.run.xml 2>nul

echo Done!
goto end

:clean
echo Cleaning temporary files...
del /q *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz *.bbl *.blg *.bcf *.run.xml 2>nul
cd "%SRC_DIR%" && del /q *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz *.bbl *.blg *.bcf *.run.xml 2>nul
echo Clean complete!
goto end

:view
if exist "%TARGET%.pdf" (
    echo Opening PDF viewer...
    start "" "%TARGET%.pdf"
) else (
    echo ERROR: %TARGET%.pdf not found!
    echo Please compile the resume first.
)
goto end

:check
echo Checking setup...
echo.

if exist "%SRC_DIR%\config.tex" (
    echo ✓ config.tex found
) else (
    echo ✗ config.tex not found - Please copy personal_data.tex to config.tex
)

if exist "%SRC_DIR%\%TARGET%.tex" (
    echo ✓ %TARGET%.tex found
) else (
    echo ✗ %TARGET%.tex not found
)

if exist "%SRC_DIR%\Foto.png" (
    echo ✓ Foto.png found
) else (
    echo ⚠ Foto.png not found - Resume will compile without photo
)

echo.
goto end

:help
echo Professional LaTeX Resume Compilation Script
echo.
echo Usage: compilar.bat [option]
echo.
echo Options:
echo   (none)  - Compile resume and clean temporary files
echo   clean   - Clean temporary files only
echo   view    - Open PDF viewer
echo   check   - Check if required files exist
echo   help    - Show this help
echo.
echo Requirements:
echo   - MiKTeX or TeX Live installed
echo   - config.tex with your personal data
echo   - Foto.png for profile photo (optional)
echo.
goto end

:end
pause 