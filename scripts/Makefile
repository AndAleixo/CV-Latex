# Professional LaTeX Resume Makefile
# Author: André F. Pinheiro Aleixo
# Usage: make [target]

# Variables
TARGET = curriculo
LATEX = pdflatex
LATEX_FLAGS = -interaction=nonstopmode
CLEAN_EXTENSIONS = aux log out toc lof lot fls fdb_latexmk synctex.gz bbl blg bcf run.xml
SRC_DIR = ../src
BUILD_DIR = ../build

# Default target
all: $(TARGET).pdf

# Main compilation
$(TARGET).pdf: $(SRC_DIR)/$(TARGET).tex $(SRC_DIR)/config.tex
	@echo "Compiling resume..."
	@mkdir -p $(BUILD_DIR)
	cd $(SRC_DIR) && $(LATEX) $(LATEX_FLAGS) $(TARGET).tex
	@mv $(SRC_DIR)/$(TARGET).pdf ./
	@echo "Resume compiled successfully!"

# Quick compilation (single run)
quick: $(SRC_DIR)/$(TARGET).tex $(SRC_DIR)/config.tex
	@echo "Quick compilation..."
	@mkdir -p $(BUILD_DIR)
	cd $(SRC_DIR) && $(LATEX) $(LATEX_FLAGS) $(TARGET).tex
	@mv $(SRC_DIR)/$(TARGET).pdf ./

# Clean temporary files
clean:
	@echo "Cleaning temporary files..."
	@for ext in $(CLEAN_EXTENSIONS); do \
		find . -name "*.$$ext" -delete; \
		find $(SRC_DIR) -name "*.$$ext" -delete; \
	done
	@echo "Clean complete!"

# Clean everything including PDF
distclean: clean
	@echo "Removing generated PDF..."
	@rm -f $(TARGET).pdf
	@rm -rf $(BUILD_DIR)
	@echo "Distclean complete!"

# View the PDF (platform dependent)
view: $(TARGET).pdf
	@echo "Opening PDF..."
	@if command -v xdg-open > /dev/null; then \
		xdg-open $(TARGET).pdf; \
	elif command -v open > /dev/null; then \
		open $(TARGET).pdf; \
	elif command -v start > /dev/null; then \
		start $(TARGET).pdf; \
	else \
		echo "Could not open PDF automatically. Please open $(TARGET).pdf manually."; \
	fi

# Compile and view
show: all view

# Check if config.tex exists
check-config:
	@if [ ! -f $(SRC_DIR)/config.tex ]; then \
		echo "ERROR: config.tex not found!"; \
		echo "Please copy personal_data.tex to config.tex and fill in your information."; \
		exit 1; \
	fi

# Install dependencies (Ubuntu/Debian)
install-deps:
	@echo "Installing LaTeX dependencies..."
	sudo apt-get update
	sudo apt-get install -y texlive-full texlive-fonts-extra
	@echo "Dependencies installed!"

# Help
help:
	@echo "Available targets:"
	@echo "  all          - Compile resume (default)"
	@echo "  quick        - Single compilation pass"
	@echo "  clean        - Remove temporary files"
	@echo "  distclean    - Remove all generated files"
	@echo "  view         - Open PDF viewer"
	@echo "  show         - Compile and view"
	@echo "  check-config - Check if config.tex exists"
	@echo "  install-deps - Install LaTeX dependencies (Ubuntu/Debian)"
	@echo "  help         - Show this help"

# Phony targets
.PHONY: all quick clean distclean view show check-config install-deps help 