#!/bin/bash
for filename in *.log; do
    datename=`basename ${filename} .log`
    cat header1.txt > html-logs/${datename}.html
    echo $datename >> html-logs/${datename}.html
    cat header2.txt $filename footer.txt >> html-logs/${datename}.html
done