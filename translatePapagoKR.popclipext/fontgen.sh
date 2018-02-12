#!/bin/bash

for name in ko en fr vi id zh es th ja; do convert -size 256x256 -background transparent -gravity Center -fill black -font arial.ttf -pointsize 240 label:"$name" locale_$name.png;done

