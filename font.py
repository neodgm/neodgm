#!/usr/bin/env python2

import os
import fontforge

cho_tbl = [
    [0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 3, 3, 1, 2, 4, 4, 4, 2, 1, 3, 0],
    [5, 5, 5, 5, 5, 5, 5, 5, 6, 7, 7, 7, 6, 6, 7, 7, 7, 6, 6, 7, 5]
]
jung_tbl = [0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1]
jong_tbl = [0, 2, 0, 2, 1, 2, 1, 2, 3, 0, 2, 1, 3, 3, 1, 2, 1, 3, 3, 1, 1]

font = fontforge.font()

name = 'NeoDunggeunmo'
font.familyname = name
font.fontname = name
font.fullname = name
font.version = '1.1.0-master+201710122140'
font.copyright = \
"""Original font was released under the public domain by Jungtae Kim in 1990s.
Conversion & additional character design by Dalgona. <dalgona@hontou.moe>"""
font.appendSFNTName(0x409, 14, 'http://scripts.sil.org/OFL')
with open('ofl_raw.txt', 'r') as f:
    font.appendSFNTName(0x409, 13, f.read())

font.ascent = 12
font.descent = 4
font.upos = -4
font.uwidth = 1
panose = list(font.os2_panose)
panose[3] = 9
font.os2_panose = tuple(panose)

svg_8 = [(x.split('.')[0],'svg_8/'+x) for x in sorted(os.listdir('svg_8'))]
svg_16 = [(x.split('.')[0],'svg_16/'+x) for x in sorted(os.listdir('svg_16'))]
svg_etc = [(x[:-4],'svg_etc/'+x) for x in sorted(os.listdir('svg_etc'))]

def create_char(font, code, path, width):
    cp = int(code, 16)
    print('Creating glyph %d...' % cp)
    g = font.createChar(cp)
    g.width = width
    g.importOutlines(path)
    g.removeOverlap()
    g.simplify()

def create_unmapped(font, name, path, width):
    print('Creating glyph "%s"...' % name)
    g = font.createChar(-1, name)
    g.width = int(width)
    g.importOutlines(path)
    g.removeOverlap()
    g.simplify()
    pass

for (code, path) in svg_8:
    create_char(font, code, path, 8);

for (code, path) in svg_16:
    create_char(font, code, path, 16);

for (name, path) in svg_etc:
    [gname, width] = name.split('@')
    create_unmapped(font, gname, path, width)

print('Filling `Hangul Jamo` Unicode block...')
# Fill Hangul Choseong
for i in range(0, 19):
    g = font.createChar(0x1100 + i)
    g.width = 16
    g.addReference('cho_%d_0' % i)

# Fill Hangul Jungseong
for i in range(0, 21):
    g = font.createChar(0x1161 + i)
    g.width = 16
    g.addReference('jung_%d_0' % i)

# Fill Hangul Jongseong
for i in range(0, 27):
    g = font.createChar(0x11A8 + i)
    g.width = 16
    g.addReference('jong_%d_0' % (i + 1))

print('Filling `Hangul Syllables` Unicode block. This may take a while...')
# Compose 11172 glyphs
for i in range(0xAC00, 0xD7A4):
    g = font.createChar(i)
    g.width = 16
    g.clear()
    a = (i - 0xAC00) // (21 * 28)
    b = ((i - 0xAC00) % (21 * 28)) // 28
    c = (i - 0xAC00) % 28
    x = cho_tbl[1 if c else 0][b]
    y = jung_tbl[a] + (2 if c else 0)
    z = jong_tbl[b]
    g.addReference('cho_%d_%d' % (a, x))
    g.addReference('jung_%d_%d' % (b, y))
    if c != 0:
        g.addReference('jong_%d_%d' % (c, z))

# all done!
print('Generating TTF...')
font.save('neodgm.sfd')
font.generate('neodgm.ttf')
print('Done.')
