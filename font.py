#!/usr/bin/env python3

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
font.version = '1.1.0'
font.copyright = \
"""Original font was released under the public domain by Jungtae Kim in 1990s.
Conversion & additional character design by Dalgona. <dalgona@hontou.moe>"""
font.ascent = 12
font.descent = 4
font.upos = -4
font.uwidth = 1
panose = list(font.os2_panose)
panose[3] = 9
font.os2_panose = tuple(panose)

svg_8 = [(x.split('.')[0], 'svg_8/' + x) for x in os.listdir('svg_8')]
svg_16 = [(x.split('.')[0], 'svg_16/' + x) for x in os.listdir('svg_16')]

def create_char(font, code, path, width):
    cp = int(code, 16)
    print('Creating glyph %d...' % cp)
    g = font.createChar(cp)
    g.width = width
    g.glyphname = 'U+%04X' % cp
    g.importOutlines(path)
    g.removeOverlap()
    g.simplify()

for (code, path) in svg_8:
    create_char(font, code, path, 8);

for (code, path) in svg_16:
    create_char(font, code, path, 16);

print('Filling `Hangul Jamo` Unicode block...')
# Fill Hangul Choseong
for i in range(0, 19):
    g = font.createChar(0x1100 + i)
    g.width = 16
    g.addReference('U+%04X' % (0xE101 + i))

# Fill Hangul Jungseong
for i in range(0, 21):
    g = font.createChar(0x1161 + i)
    g.width = 16
    g.addReference('U+%04X' % (0xE1A1 + i))

# Fill Hangul Jongseong
for i in range(0, 27):
    g = font.createChar(0x11A8 + i)
    g.width = 16
    g.addReference('U+%04X' % (0xE1F9 + i))

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
    g.addReference('U+%04X' % (0xE100 + x * 20 + a + 1))
    g.addReference('U+%04X' % (0xE100 + 160 + y * 22 + b + 1))
    g.addReference('U+%04X' % (0xE100 + 248 + z * 28 + c))

# all done!
print('Generating TTF...')
font.save('neodgm.sfd')
font.generate('neodgm.ttf')
print('Done.')
