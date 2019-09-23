#!/bin/bash

cd ~/klipper
echo "Stopping klipper"
sudo service klipper stop
echo "Fetching updates" 
git fetch
PRINTER=`ls /dev/serial/by-id/*`
echo "Flashing ${PRINTER}" 
make flash FLASH_DEVICE=$PRINTER
echo "Starting klipper" 
sudo service klipper start

