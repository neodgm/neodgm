# NeoDunggeunmo

- [한국어 (Korean)](https://github.com/neodgm/neodgm/blob/main/README.md)

<img alt="Sample image" width="752" src="https://neodgm.dalgona.dev/assets/images/neodgm_demo.png?202011071338">

**NeoDunggeunmo(Neo둥근모)** is a general-purpose TrueType font based on a
famous Korean bitmap font "Dunggeunmo-kkol(둥근모꼴)", which was designed for
use in DOS.

## Introduction

"Dunggeunmo-kkol" is a public domain bitmap font for DOS designed and released
by Jungtae Kim in 1990s, and it's still widely used in LED sign boards thanks
to its decent design. NeoDunggeunmo is a general-purpose TrueType font with
outline glyphs converted from the bitmap font and some original glyphs which
don't exist in the original font.

Check out [the official website (Korean)](http://neodgm.dalgona.dev) for
more information and a list of glyphs available in NeoDunggeunmo.

## Downloads

This repository only contains source codes for the font.
Use [the Releases page](https://github.com/neodgm/neodgm/releases)
to download the pre-built font files.

## Installing Fonts via Package Managers

### Homebrew (macOS, etc.)

You can install font casks via Homebrew. These casks are provided by the
[neodgm/homebrew-neodgm](https://github.com/neodgm/homebrew-neodgm) tap.

```bash
$ brew tap neodgm/neodgm

$ brew install --cask font-neodunggeunmo
# Or,
$ brew install --cask font-neodunggeunmo-code
```

> **CAUTION:**
>
> These packages below are not officially supported, and may not be up to date.
> The developer of NeoDunggeunmo is not responsible for any issues caused by
> installing these packages. Please contact the package maintainers directly if
> you have any problem using these community packages.

### Arch Linux

Install `ttf-neodgm` package from AUR (Arch User Repository).

```bash
# Git
$ git clone https://aur.archlinux.org/ttf-neodgm.git
$ cd ttf-neodgm
$ makepkg -si
```

```bash
# AUR Helpers (yay for example)
$ yay -S ttf-neodgm
```

This AUR package is maintained by [@gaeulbyul](https://github.com/gaeulbyul). 💕

## Using Web Fonts

### Official Web Font Kit (neodgm-webfont)

[neodgm/neodgm-webfont](https://github.com/neodgm/neodgm-webfont) is a
repository for the official NeoDunggeunmo web font kits, and therefore it gets
updated as fast as possible when a new version of the font is released. Check
the `README.md` file of the repository for detailed instructions.

### Self-host Package (@kfonts)

You can easily self-host NeoDunggeunmo web font files in your web projects
using Webpack, by installing (one of) these packages below. Visit each link for
detailed instructions.

- NeoDunggeunmo: https://www.npmjs.com/package/@kfonts/neodgm
- NeoDunggeunmo Code: https://www.npmjs.com/package/@kfonts/neodgm-code

These NPM packages are maintained by [@item4](https://github.com/item4). 💕

## Manually Building Fonts from the Source Code

It is enough in most cases to download and use pre-built font files. For some
adventurous geeks who want to modify the source code and build your own font
files, the build instruction is provided below:

1. The source code of NeoDunggeunmo is written in Elixir programming language.
  Visit [the official Elixir website](https://elixir-lang.org) to install the
  appropriate version of Elixir for your operating system.

1. Clone this repository using Git.

    ```sh
    $ git clone https://github.com/neodgm/neodgm.git
    ```

1. Enter these commands to build TTF files.

    ```sh
    $ mix deps.get

    # NeoDunggeunmo
    $ MIX_ENV=prod mix pixel_font.build

    # NeoDunggeunmo Code
    $ MIX_ENV=prod mix pixel_font.build --variant code
    ```

1. A file named `NeoDunggeunmo[Code]-Regular.ttf` will be created in your PWD.

## Typography Guildlines

If you are using this font to author contents which are to be displayed in
standard-DPI PC displays, follow the typography guidelines as much as possible
to deliver the best result.

https://neodgm.dalgona.dev/guides.html

(Sorry, this content is only provided in Korean for now.)

## Getting Involved

Please feel free to submit issues if...

- There are problems in pre-built font files you have downloaded,
- You want some glyphs to be added in NeoDunggeunmo,
- Or you have other comments regarding this project.

## Related Projects

- **NeoDunggeunmo Pro** [(neodgm/neodgm-pro)](https://github.com/neodgm/neodgm-pro)

    A proportional font based on NeoDunggeunmo.

- **PixelFont** [(Dalgona/pixel\_font)](https://github.com/Dalgona/pixel_font)

    An all-in-one tool for creating TrueType outline fonts from bitmap images.
    TTF files of NeoDunggeunmo, NeoDunggenumo Code, and NeoDunggeunmo Pro are
    built by using this tool and delivered to you.

## License

Copyright (c) 2017-2021, Eunbin Jeong (Dalgona.) <project-neodgm@dalgona.dev>

NeoDunggeunmo font files and its source codes are distributed under SIL Open
Font License 1.1. Read the `LICENSE.txt` file for the full text of SIL Open Font
License 1.1.
