PDFS: $(patsubst %.svg, %.pdf, $(wildcard *.svg))

all: $PDFS

%.pdf: %.svg
	rsvg-convert -f pdf -o $@ $<

