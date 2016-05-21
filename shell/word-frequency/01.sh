# Read from the file words.txt and output the word frequency list to stdout.
#!/bin/bash
cat words.txt|tr '[:space:]' '\n'|awk '{ if($0 ~ /^$/){next;} c[$0]++;} END{ for(i in c){ printf("%s %d\n", i,c[i] );} }' |sort -k 2 -nr
