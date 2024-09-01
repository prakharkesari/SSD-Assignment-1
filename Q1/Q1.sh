#!/bin/bash

input="quotes.txt"
output1="quotes_empty.txt"

#question 1.a
grep -v '^$' "$input" > "$output1"

output2="quotes_rdup.txt"

#question 1.b
sort "$output1" | uniq > "$output2"

output3="quotes_byperson.txt"

#question 1.c
awk -F'~' '{gsub(/^[ \t]+|[ \t]+$/, "", $2); print $2}' "$output1" | sort | uniq -c | sort -nr > "$output3"
#awk -F'~' '{[count $2]++}' "$input" > "$output3"

#question 1.d
tr -c '[:alnum:] \n' '[\n*]' < "$input" | \
awk '
{
    for (i = 1; i <= NF; i++) {
        if ($i ~ /^s[^aA]/) {
            print $i
        }
    }
}
' | sort | uniq