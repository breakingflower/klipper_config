#!/bin/bash


# pull latest
echo "Pulling..." 
git pull https://github.com/fl0r1s/cr10_klipper/
# Copy generic files
echo "Copying generic files..." 
cp -v -r generic/*.cfg ~/ 

# copy all files that end with cfg to 1 up
echo "Copying config files for $PRINTER_NAME..." 
cp -v -r $PRINTER_NAME/*.cfg ~/
