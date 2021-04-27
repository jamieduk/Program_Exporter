#!/bin/bash
# (c) J~Net 2021
# jnet.sytes.net
#
# https://jnet.forumotion.com/t1736-bash-program-exporter-script#2687
#
# ./export gobuster
#
program="$1"
dir=`pwd`
installed=`which $program`

echo "Checking For $program (Check 1 of 2)"

FILE=$installed
if [ -f "$FILE" ]; then
    echo "$FILE Exists."
else 
    sudo apt install -y $program
fi

echo "Checking For $program (Check 2 of 2)"

if [[ $installed ]]
then
  echo "$installed Installed"
  sudo cp $installed $dir
  echo "Copyied to current folder"
else
  echo "$program Not Installed"
  sudo apt install -y $program
fi
