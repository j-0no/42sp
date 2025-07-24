#!/bin/bash
FT_LINE1=3
FT_LINE2=9
cat /etc/passwd |
awk -F: \
    '/^#/ { next }
     {  if (++numout % 2 == 0)
        {
            out = ""
            for (i = length($1); i > 0; i--)
                out = out substr($1, i, 1)
            print out
        }
     }
    ' |
sort -rdf |
awk -v line1="$FT_LINE1" -v line2="$FT_LINE2" \
    'NR >= line1 && NR <= line2 { out = out pad $1; pad = "," }
     END { print out "." }
    '
