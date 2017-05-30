# RU titlepage
## Prerequisites
- geometry
- graphicx
- ifpdf
- keyval
- iflang
- babel-dutch (optional)
- verbatim (documentation only)
- booktabs (documentation only

On a sensible system running texlive one can install this by typing:
```sh
tlmgr install geometry graphicx ifpdf keyval iflang
```

The titlepage works both with `latex` and `pdflatex`. Quite possibly it works
with other \*`tex`s.

## Usage
To prepare the files and compile the documentation run `make`.

When you use `babel` to internationalize your document in either English or
Dutch the titlepage will change accordingly.

## Todo
- Upload to CTAN
- Fix the right bottom header text
- Make the image loading more canonical

## Author(s)
Author:

- Mart Lubbers

Contributors:

- [camilstaps](https://github.com/camilstaps)
- [dsprenkels](https://github.com/dsprenkels)
- [chriskamphuis](https://github.com/chriskamphuis)
