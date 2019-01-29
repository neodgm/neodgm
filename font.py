#!/usr/bin/env python2

import os
import sys
import glob
import fontforge

if len(sys.argv) < 2:
    print('Expected a version string as the first argument.')
    sys.exit(1)

#
# These tables are used to combine hangul syllable characters.
#

cho_tbl = [
    [0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 3, 3, 1, 2, 4, 4, 4, 2, 1, 3, 0],
    [5, 5, 5, 5, 5, 5, 5, 5, 6, 7, 7, 7, 6, 6, 7, 7, 7, 6, 6, 7, 5]
]
jung_tbl = [0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1]
jong_tbl = [0, 2, 0, 2, 1, 2, 1, 2, 3, 0, 2, 1, 3, 3, 1, 2, 1, 3, 3, 1, 1]

#
# Create an instance of FontForge font and set metadata.
#

# Font names
name = 'NeoDunggeunmo'
font = fontforge.font()
font.familyname = name
font.fontname = name
font.fullname = name
font.version = sys.argv[1]
font.copyright = \
"""Original font was released under the public domain by Jungtae Kim in 1990s.
Conversion & additional character design by Dalgona. <dalgona@hontou.moe>"""
font.appendSFNTName(0x409, 14, 'http://scripts.sil.org/OFL')
with open('ofl_raw.txt', 'r') as f:
    font.appendSFNTName(0x409, 13, f.read())

# Font metrics
font.ascent = 12
font.descent = 4
font.upos = -4
font.uwidth = 1
panose = list(font.os2_panose)
panose[3] = 9
font.os2_panose = tuple(panose)

svg_uni = glob.glob('svg/U*.svg')
svg_named = glob.glob('svg/_*.svg')

for path in svg_uni:
    code_str, width_str = path[5:-4].split('@')
    code = int(code_str, 16)
    width = int(width_str)
    print('Creating Unicode glyph %d...' % code)
    g = font.createChar(code)
    g.width = width
    g.importOutlines(path)
    g.removeOverlap()
    g.simplify()

for path in svg_named:
    name, width_str = path[5:-4].split('@')
    width = int(width_str)
    print('Creating named glyph "%s"...' % name)
    g = font.createChar(-1, name)
    g.width = width
    g.importOutlines(path)
    g.removeOverlap()
    g.simplify()

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
