#!/bin/sh

echo NOTE : THIS SCRIPT WILL CHANGE FILE AND DIRECTORY PERMISSION INSIDE CURRENT DIRECTORY ONLY
read -p "Directory : " DIR
read -p "File Permission : " FILE_PER

while [ "$FILE_PER" == "" ]; do
    read -p "File Permission : " FILE_PER
done

read -p "Directory Permission : " DIR_PER
while [ "$DIR_PER" == "" ]; do
    read -p "Directory Permission : " DIR_PER
done

FINAL_DIR="`pwd`/$DIR"

sudo find $FINAL_DIR -type f -exec chmod $FILE_PER {} \;
sudo find $FINAL_DIR -type d -exec chmod $DIR_PER {} \;

echo "⚔️ ⚔️ ⚔️"
