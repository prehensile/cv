all: pdf

pdf: cv.md
	bash -c "pandoc cv.md -o cv.pdf"

dependencies:
	sudo apt install -y pandoc texlive-latex-recommended texlive-fonts-recommended texlive-latex-extra
