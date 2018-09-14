#!/bin/bash
for filename in *.log; do
    datename=`basename ${filename} .log`
    cat header1.txt > ${datename}.html
    echo $datename >> ${datename}.html
    cat header2.txt $filename footer.txt >> ${datename}.html
    rm ${filename}
done