# Read from the file file.txt and output all valid phone numbers to stdout.
#!/bin/bash
#
#  https://leetcode.com/problems/valid-phone-numbers/
#
egrep -e  "^[0-9]{3}-[0-9]{3}-[0-9]{4}$" -e "^\([0-9]{3}\) [0-9]{3}-[0-9]{4}$" file.txt
