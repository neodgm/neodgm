# Modify this line according to your build environment.
# Make sure your C++ compiler supports modern C++ features.
CXX=clang++-3.8 -std=c++11 -stdlib=libc++

# Must use Python 2. Otherwise fontforge module won't be loaded.
PY=python2

SVGGEN=./makesvg

all: font

font: svgs
	$(PY) font.py
	ttx -t "OS/2" neodgm.ttf
	sed -r -i -e 's@<xAvgCharWidth value=".+"/>@<xAvgCharWidth value="8"/>@' neodgm.ttx
	ttx -m neodgm.ttf neodgm.ttx
	rm -v neodgm.ttf neodgm*.ttx
	mv -v neodgm*.ttf neodgm.ttf

svgs: svg-generator
	$(SVGGEN) 8 fnt/0000_007f.fnt
	$(SVGGEN) 8 fnt/2500_257f.fnt
	$(SVGGEN) 8 fnt/2580_259f.fnt
	$(SVGGEN) 8 fnt/e0a0_e0bf.fnt
	$(SVGGEN) 16 fnt/3131_3163.fnt
	$(SVGGEN) 16 fnt/e100_e267.fnt

svg-generator:
	$(CXX) src/makesvg.cpp -o $(SVGGEN)

