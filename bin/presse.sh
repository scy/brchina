#!/bin/sh

echo '<ul>'
sed -r -e 's#^([0-9]{8})\t#\1-0000\t#' < "$SRCDIR/presse.txt" |
	sort -nr |
	sed -nr -e 's#^([0-9]{4})([0-9]{2})([0-9]{2})(-[0-9]{4})?\t(.+)\t(https?://(www\.)?([^/]+)(.*))$#<li>\3.\2.\1: <a href="\6">\5</a> (\8)</li>#p'
echo '</ul>'
