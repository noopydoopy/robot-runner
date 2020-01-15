#!/bin/bash
input="/report-of-articles_loading_function/output.xml"
allTests=()
count=$(xmllint --xpath 'count(//test)' "$input")
for ((i=1; i<=count; i++)); do
        wwExtracted=$(xmllint --xpath 'string((//test)['"$i"']/@name)' "$input")
        wwExtracted+=": $(xmllint --xpath 'string((//test/status)['"$i"']/@status)' "$input")"
        allTests+=("$wwExtracted")
        printf "%s \n" "$wwExtracted"
        # printf " - index: '%d' \n" "$i"
done