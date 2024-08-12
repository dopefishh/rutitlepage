[![Build Status](https://travis-ci.org/dopefishh/rutitlepage.svg?branch=master)](https://travis-ci.org/dopefishh/rutitlepage)

# RU titlepage
## Prerequisites
- geometry
- graphicx
- ifpdf
- keyval
- iflang
- babel-dutch (optional)
- booktabs (documentation only)
- ctanify (ctan package building only (requires at least zip and libfile-copy-recursive-perl))

The titlepage works both with `latex` and `pdflatex`. Quite possibly it works
with other \*`tex`'s.

When you use `babel` to internationalize your document in either English or
Dutch the titlepage logo will change accordingly.

## Installation
#### ctan (preferred)
Run `tlmgr install rutitlepage`

#### tlmgr
Run `make release` and run `tlmgr install --file rutitlepage.tar.xz`

#### Manual
Run `make release` and extract the contents of `rutitlepage.tar.xz` in your texmf
tree or local project.

## Author(s)
Author:

- Mart Lubbers

Other contributors:

- [camilstaps](https://github.com/camilstaps)
- [dsprenkels](https://github.com/dsprenkels)
- [chriskamphuis](https://github.com/chriskamphuis)
- [niluxv](https://github.com/niluxv)

## Version

Version 3.0
