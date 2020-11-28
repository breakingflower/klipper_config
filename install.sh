#!/bin/bash

# make a backup of printer.cfg
echo "Backing up printer.cfg to printer.backup..." 
cp printer.cfg printer.backup

# pull latest
echo "Pulling..." 
git pull

# hardlink printer.cfg for this printer
echo "Hardlinking the printer.cfg file for ${HOSTNAME}..." 
ln ${HOSTNAME}/printer.cfg printer.cfg

