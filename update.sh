#!/bin/bash


# pull latest
echo "Pulling..." 
git pull https://github.com/fl0r1s/cr10_klipper/
# Copy generic files
echo "Copying generic files..." 
cp -v -r generic/*.cfg ~/ 

# ask if user wants to keep printer.cfg
while true; do
    read -p "Do you want to keep calibration parameters in printer.cfg?" yn
    case $yn in
        [Yy]* ) rm $PRINTER_NAME/printer.cfg; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
# copy all files that end with cfg to 1 up
echo "Copying config files for $PRINTER_NAME..." 
cp -v -r $PRINTER_NAME/*.cfg ~/
