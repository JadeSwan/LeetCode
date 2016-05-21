# Read from the file file.txt and print its transposed content to stdout.
#!/bin/bash
#
# https://leetcode.com/problems/transpose-file/
#

awk 'BEGIN{r=0;i=0;c=1}
{
  r+=1
  for(i=1;i<=NF;i++){
    ar[c++]=$i
  }
}
END{
  c--
  for(i=1;i<=NF;i++){
    for(j=1; j<=r; j++){
      idx= (j-1) * NF + i
      printf("%s", ar[idx])
      if( j < r && r > 1 ){
        printf(" ")
      }
    }
    if(NF > 1 ){
      printf("\n")
    }
  }
}' file.txt
