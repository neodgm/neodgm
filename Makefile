all: font

font: svgs
	./font.py
	./fix_width.sh

svgs:
	./makesvg.exs fnt

clean:
	rm -rf neodgm.sfd
	rm -rf neodgm.ttf
	rm -rf svg_8
	rm -rf svg_16

