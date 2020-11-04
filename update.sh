#!/bin/bash

# make a backup of printer.cfg
echo "Backing up printer.cfg to printer.backup..." 
mv ~/printer.cfg ~/printer.backup

read -p "Do you want to clean home directory? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm ~/*.cfg
fi

# pull latest
echo "Pulling..." 
git pull https://github.com/fl0r1s/cr10_klipper/
# Copy generic files
#echo "Copying generic files..." 
#cp -v -r generic/*.cfg ~/ 

# copy all files that end with cfg to 1 up
echo "Copying the printer.cfg file for $PRINTER_NAME..." 
cp -v -r ~/cr10_klipper/$PRINTER_NAME/printer.cfg ~/printer.cfg

# ask if user wants to restore the calib parameters
read -p "Do you want to restore printer.cfg (calibration parameters)? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cp ~/printer.backup ~/printer.last_known_cfg
    mv ~/printer.backup ~/printer.cfg
fi

