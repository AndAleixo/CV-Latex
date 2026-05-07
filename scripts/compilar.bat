@echo off
REM =============================================================================
REM Professional LaTeX Resume Build Script (Windows)
REM =============================================================================
REM Usage: compilar.bat [clean|view|check|help]

set TARGET=main
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

REM -----------------------------------------------------------------------------
REM Preconditions
REM -----------------------------------------------------------------------------
REM Check if src\content.tex exists
if not exist "%SRC_DIR%\content.tex" (
    echo ERROR: content.tex not found!
    echo Please copy content.example.tex to content.tex and fill in your information.
    echo.
    pause
    exit /b 1
)

REM Check if src\main.tex exists
if not exist "%SRC_DIR%\%TARGET%.tex" (
    echo ERROR: %TARGET%.tex not found!
    echo.
    pause
    exit /b 1
)

REM Create build directory (optional)
if not exist "%BUILD_DIR%" mkdir "%BUILD_DIR%"

REM -----------------------------------------------------------------------------
REM Build (two passes: \pageref{LastPage} is resolved on the second run)
REM -----------------------------------------------------------------------------
echo Running LaTeX compilation...
cd "%SRC_DIR%"
%LATEX% %LATEX_FLAGS% %TARGET%.tex
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Compilation failed on first pass!
    echo.
    pause
    exit /b 1
)
%LATEX% %LATEX_FLAGS% %TARGET%.tex

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Compilation failed!
    echo Please check the log file for errors.
    echo.
    pause
    exit /b 1
)

REM -----------------------------------------------------------------------------
REM Output
REM -----------------------------------------------------------------------------
move "%TARGET%.pdf" "..\resume.pdf"

echo.
echo Resume compiled successfully!
echo Output file: resume.pdf
echo.

REM -----------------------------------------------------------------------------
REM Cleanup (keep .aux so cross-references stay correct on the next build)
REM -----------------------------------------------------------------------------
echo Cleaning temporary files...
del /q *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz *.bbl *.blg *.bcf *.run.xml 2>nul

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

if exist "%SRC_DIR%\content.tex" (
    echo ✓ content.tex found
) else (
    echo ✗ content.tex not found - Please copy content.example.tex to content.tex
)

if exist "%SRC_DIR%\%TARGET%.tex" (
    echo ✓ %TARGET%.tex found
) else (
    echo ✗ %TARGET%.tex not found
)

if exist "%SRC_DIR%\photo.png" (
    echo ✓ photo.png found
) else (
    echo ⚠ photo.png not found - Resume will compile without photo
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
echo   - content.tex with your personal data
echo   - photo.png for profile photo (optional)
echo.
goto end

:end
pause 