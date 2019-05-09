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

## Usage
To prepare the files and compile the documentation run `make`.

To install using `tlmgr` run `make release` followed by `tlmgr install --file
rutitlepage.tar.xz`. This will install the needed dependencies.

## Author(s)
Author:

- Mart Lubbers

Contributors:

- [camilstaps](https://github.com/camilstaps)
- [dsprenkels](https://github.com/dsprenkels)
- [chriskamphuis](https://github.com/chriskamphuis)

## Version

Version 2.3
