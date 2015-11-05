TARGET = cv.pdf

all: $(TARGET)

$(TARGET): cv.md
	bash -c "pandoc -V geometry:top=1.5in -V papersize:a4paper cv.md -o cv.pdf"

