ttx -t "OS/2" neodgm.ttf
sed -r -i -e 's@<xAvgCharWidth value=".+"/>@<xAvgCharWidth value="8"/>@' neodgm.ttx
ttx -m neodgm.ttf neodgm.ttx
rm -v neodgm.ttf neodgm*.ttx
mv -v neodgm*.ttf neodgm.ttf
