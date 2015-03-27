#/!bin/bash
set -e

find /var/www/html/ -iname '*.adoc' -exec asciidoctor  $ASCIIDOCTOR_ARGS  {} \;

nginx
