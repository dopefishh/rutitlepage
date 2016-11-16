# RU titlepage
## Prerequisites
- geometry
- graphicx
- ifpdf
- keyval
- iflang

On a sensible system running texlive one can install this by typing:
```sh
tlmgr install geometry graphicx ifpdf keyval iflang
```

The titlepage works both with `latex` and `pdflatex`. Quite possibly it works
with other \*`TeX`s.

## Usage
To prepare the files and compile the test document run `make`.

For all available options see `ex.tex`.

When you use `babel` to internationalize your document the titlepage will
change accordingly.

## Todo
- Make the package CTAN ready

## Author(s)
Author:

- Mart Lubbers

Contributors:

- [camilstaps](https://github.com/camilstaps)
- [dsprenkels](https://github.com/dsprenkels)
