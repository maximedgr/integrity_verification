#!/bin/bash
echo '######## Verify checksum - script #######\n\n'
echo "\nSupply the file you would like to compare : \n"
read inputFile
echo '\nSupply your hash below to compare (copy & paste):\n'
read inputHash

fileHash=($(cat $inputFile | md5sum))

if [ $inputHash = $fileHash ]
then
  echo -e '\nMatched. The strings were:\n'
  echo $inputHash
  echo $fileHash
else
  echo -e 'WARNING: NO MATCH!\n'
  echo $inputHash
  echo $fileHash
  echo "The file could be compromised. Integrity of the file couldn't be guaranteed."
fi