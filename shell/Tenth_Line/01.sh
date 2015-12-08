# Read from the file file.txt and output the tenth line to stdout.
#!/bin/bash

sed '10!d' file.txt
