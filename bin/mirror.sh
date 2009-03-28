#!/bin/sh

MIRRORTAR='mirror.tar.gz'

tar --numeric-owner -C "$DSTDIR" --exclude "$MIRRORTAR" -czf "$DSTDIR/$MIRRORTAR" . 2>/dev/null 1>&2

cat <<EOF
<$SH>Schnappschuss/Quellcode herunterladen</$SH>
<p>
Wir wollen, dass die Informationen auf dieser Website m&ouml;glichst frei verf&uuml;gbar und gut erreichbar sind.
Deshalb machen wir es m&ouml;glichst einfach, Kopien der Seite herzustellen, um sie zu archivieren oder weiter zu verteilen.
Du kannst einen Schnappschuss dieser Seite direkt als <a href="$MIRRORTAR">.tar.gz-Archiv</a> herunterladen.
</p>
<p>
Da jeder Kopien dieser Seite anfertigen kann, befindest du dich eventuell momentan auf einer dieser Kopien.
Das Original ist inzwischen m&ouml;glicherweise aktueller.
Du kannst es auf <a href="http://bundesrepublik-china.de/mirror.html">der Originalseite der Kampagne</a> herunterladen.
</p>
<p>
Wer m&ouml;chte, kann sich auch den <a href="http://github.com/scy/brchina/">Quellcode</a> herunterladen, aus dem diese Seiten generiert wurden.
</p>
<$SH>Einen offiziellen Spiegelserver betreiben</$SH>
<p>
Wir freuen uns &uuml;ber Leute, die uns Serverleistung und Bandbreite zur Verf&uuml;gung stellen wollen.
Bitte nimm <a href="kontakt.html">Kontakt</a> zu uns auf.
Du solltest folgendes mitbringen:
</p>
<ul>
	<li>Einen Webserver, der statische Dateien ausliefern kann, eine feste IP-Adresse besitzt und auf TCP-Port 80 l&auml;uft.</li>
	<li>Administrationsrechte f&uuml;r diesen Webserver, um ihn so zu konfigurieren, dass er die Domain <em>bundesrepublik-china.de</em> als VHost akzeptiert und dort unsere Website bereitstellt. Wir tragen dann die IP-Adresse deines Servers ins DNS ein (Round-Robin-Prinzip).</li>
	<li>Eine M&ouml;glichkeit, Seitenupdates automatisch einzupflegen; entweder durch Herunterladen der Mirror-Datei oder durch Generieren aus dem Quellcode.</li>
</ul>
EOF
