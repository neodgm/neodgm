version=$(shell git describe --always | sed -e 's/^v//')

all: complete-font

complete-font: ttf
	elixir ./makegsub.exs > neodgm.gsub.ttx
	ttx -t "OS/2" neodgm.ttf
	sed -r -i -e 's@<xAvgCharWidth value=".+"/>@<xAvgCharWidth value="8"/>@' neodgm.ttx
	ttx -o neodgm.ttf -m neodgm.ttf neodgm.ttx
	ttx -o neodgm.ttf -m neodgm.ttf neodgm.gsub.ttx

ttf: svgs
	python ./font.py $(version)

svgs:
	elixir ./makesvg.exs fnt

clean:
	rm -rf *.ttx
	rm -rf *.sfd
	rm -rf *.ttf
	rm -rf svg

