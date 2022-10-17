all: pdf

pdf: cv.md
	bash -c "pandoc -V geometry:top=1.5in -V papersize:a4paper cv.md -o cv.pdf"

dependencies:
	sudo apt install pandoc texlive-latex-recommended texlive-fonts-recommended texlive-latex-extra
