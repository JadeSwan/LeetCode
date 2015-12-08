# Read from the file file.txt and print its transposed content to stdout.
#!/bin/bash

awk 'BEGIN{c=0} {mt[$1]=$2;c+=1} \
END{for(i in mt){ printf("%s", i)} ; if(c>1){printf("\n")}; for(i in mt){ printf("%s",mt[i]); } }' file.txt
