# Modify this line according to your build environment.
# Make sure your C++ compiler supports modern C++ features.
CXX=clang++-3.8 -std=c++11 -stdlib=libc++

# Must use Python 2. Otherwise fontforge module won't be loaded.
PY=python2

SVGGEN=./makesvg

all: font

font: svgs
	$(PY) src/font.py

svgs: svg-generator
	$(SVGGEN) 8 fnt/0000_007f.fnt
	$(SVGGEN) 8 fnt/2500_257f.fnt
	$(SVGGEN) 8 fnt/2580_259f.fnt
	$(SVGGEN) 8 fnt/2800_28ff.fnt
	$(SVGGEN) 8 fnt/e0a0_e0bf.fnt
	$(SVGGEN) 16 fnt/3131_3163.fnt
	$(SVGGEN) 16 fnt/e100_e267.fnt

svg-generator:
	$(CXX) src/makesvg.cpp -o $(SVGGEN)

clean:
	rm -rf neodgm.sfd
	rm -rf neodgm.ttf
	rm -rf svg_8
	rm -rf svg_16

