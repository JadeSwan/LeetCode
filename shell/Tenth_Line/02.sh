# Read from the file file.txt and output the tenth line to stdout.
#!/bin/bash

lno=0

total=$(wc -l file.txt|awk '{print $1}')
if [[ ${total} -lt 10 ]];then
    #echo "total line number is $total" # commented to pass the leetcode testcase
    exit 1
fi

while read line;do
    ((lno=lno+1))

    if [[ $lno -eq 10 ]];then
        echo $line
    fi
done < file.txt
