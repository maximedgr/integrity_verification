#!/bin/bash

# This script generates a md5sum from a file

echo "Type or Paste the path to the file and hit enter to generate a md5 sum."
read inputString
echo $(cat $inputString | md5sum)
