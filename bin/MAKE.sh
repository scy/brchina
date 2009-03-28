#!/bin/sh

export BINDIR='bin/'
export SRCDIR='web/src/'
export DSTDIR='web/htdocs/'
export SH='h3'

wrap() {
	(
		"$BINDIR/header.sh" "$1"
		"$BINDIR/$2.sh"
		"$BINDIR/footer.sh"
	) > "$DSTDIR/$2.html"
}

mkdir -p "$DSTDIR"

wrap 'Pressespiegel' presse
wrap 'Herunterladen/Mirrorn' mirror
