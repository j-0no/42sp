#!/bin/sh
id --zero -Gn $FT_USER | gawk -F "\0" '{$1=$1}1' OFS="," | sed 's/\(.*\),/\1/'
